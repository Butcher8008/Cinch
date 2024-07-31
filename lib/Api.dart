import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'ApiService.dart';
import 'Toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

loginUser(String email, String password) async {
  final data = {

    'email': email,
    'password':password,
  };

  final result = await APIService().postRequest(route: '/login', data: data);
  if (result.statusCode == 200) {
    final data = jsonDecode(result.body);
    final token = data['token'];
    final user = data['user'];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setString('user', jsonEncode(user));
    Toasts.sucess('Logged In Successfully');
    return true;

  } else {
    if(result.statusCode == 422) {
      final data = jsonDecode(result.body);
      //print(data['message']);
      Toasts.error(data['message']);
      return false;

    }
    else {
      Toasts.error('Something went wrong!');
      return false;
    }

  }

}

getUser() async{
  final prefs = await SharedPreferences.getInstance();
  var userString = await prefs.getString('user');
  if (userString != null) {
    var user = jsonDecode(userString);
    return user;

  }
  return null;
}

getCustomers() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  final result =await APIService().getRequest(route: '/customers',token: token);
  if(result.statusCode == 200){
    return result.body;
  }
}

getScopes() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  final result =await APIService().getRequest(route: '/sow',token: token);
  if(result.statusCode == 200){
    return result.body;
  }
}

getWorkOrders() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  final result =await APIService().getRequest(route: '/work-orders',token: token);
  if(result.statusCode == 200){
    return result.body;
  }
}

getTodaysSchedule() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  final result =await APIService().getRequest(route: '/scheduling/today',token: token);
  if(result.statusCode == 200){
    return result.body;
  }
}

logout() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
  return true;
}

postComplete(id, type) async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  var url = '/work-orders/';
  if(type=='scope') {
    url = '/sow/';
  }

  url = url+'complete/'+id;

  final result = await APIService().postRequest(route: url, data: {},token: token);

  if (result.statusCode == 200) {
    final data = jsonDecode(result.body);
    Toasts.sucess(data['message']);
    return true;

  } else {
    if(result.statusCode == 422 || result.statusCode == 404) {
      final data = jsonDecode(result.body);
      //print(data['message']);
      Toasts.error(data['message']);
      return false;
    }
    else {
      final data = jsonDecode(result.body);
      print(data);
      Toasts.error('Something went wrong!');
      return false;
    }
  }

}

