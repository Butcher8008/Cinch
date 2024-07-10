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
    Toasts.sucess('Login Sucessfully');
    return true;

  } else {
    if(result.statusCode == 422) {
      final data = jsonDecode(result.body);
      //print(data['message']);
      Toasts.error(data['message']);
      return false;

    }
    else {
      Toasts.error('Something went wrong');
      return false;
    }

  }


}

