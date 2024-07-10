import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
class APIService{
 /* static const baseURL = 'https://jdbe.hassyml.online';
  static const webURL = 'https://jd.hassyml.online';*/
  final apiUrl='https://reqres.in/api';


  final _header = {
    'Containt-type': 'application/json',
    'Accept': 'application/json',
  };

  postRequest({required String route,required Map<String,String> data,token=''}) async{
    final header;
    if(token == '') {
      header = _header;
    }
    else {
      header = {
        'Containt-type': 'application/json',
        'Accept': 'application/json',
        'Authorization' : 'Bearer $token',
      };
    }
    String url = apiUrl + route;
    return await http.post(Uri.parse(url), body: data, headers: header,);
  }

  multiPartPostRequest({required String route,required Map<String,dynamic> data, List<XFile>? images, token='',imagesField='images[]',statusCode=200}) async {
    final header;
    if (token == '') {
      header = _header;
    }
    else {
      header = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
    }

    final uri = Uri.parse(apiUrl + route); // Adjust the API URL accordingly
    final request = http.MultipartRequest('POST', uri);

    // Add text fields (name, tagline, price, location, description, notes)
    data.forEach((key, value) {
      request.fields[key] = value?? '';
    });

    if (images != null) {
      // Add images
      for (var image in images) {
        final imageStream = ByteStream(image.openRead());
        final imageLength = await image.length();
        final multipartFile = http.MultipartFile(
          '$imagesField', // Field name for images
          imageStream,
          imageLength,
          filename: image.name,
        );

        request.files.add(multipartFile);
      }
    }
    request.headers.addAll(header);

    try {
      final response = await request.send();

      if (response.statusCode == statusCode) {
        return 'success';
      } else {
        final responseJson = await response.stream.bytesToString();
        final responseData = json.decode(responseJson);

        if (response.statusCode == 422) {
          var error = responseData['message'];
          if(error!= null) {
            return responseData['message'];
          }
          else {
            if (responseData.containsKey("errors")) {
              final errors = responseData["errors"];
              for (var key in errors.keys) {
                final errorMessage = errors[key];
                return errorMessage.first.toString();
              }
            }
            else {
              return "Something went wrong";
            }
          }
        } else {
          print(response.statusCode);
          return 'Something went wrong';
        }

        return false;
      }
    } catch (e) {
      print('Error: $e');
      return 'An error occurred.';
    }
  }

  putRequest({required String route,required Map<String,dynamic> data,token=''}) async{
    final header;
    if(token == '') {
      header = _header;
    }
    else {
      header = {
        'Containt-type': 'application/json',
        'Accept': 'application/json',
        'Authorization' : 'Bearer $token',
      };
    }
    String url = apiUrl + route;
    return await http.put(Uri.parse(url), body: data, headers: header,);
  }

  getRequest({required String route, token = '', Map<String, String>? queryParameters,}) async {
    final header = (token == '')
        ? _header
        : {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization' : 'Bearer $token',
    };

    String url = apiUrl + route;
    if (queryParameters != null) {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      url = uri.toString();
    }
    return await http.get(Uri.parse(url), headers: header);
  }

  deleteRequest({required String route, token = ''}) async {
    final header = (token == '')
        ? _header
        : {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization' : 'Bearer $token',
    };

    String url = apiUrl + route;
    return await http.delete(Uri.parse(url), headers: header);
  }

}