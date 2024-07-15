import 'dart:convert';
import 'package:cinch/Api.dart';
import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _rememberMe = false;

  /*void login(String email, password)async{
    try{
      if (_formKey.currentState!.validate()) {
    Response response = await post(Uri.parse('http://127.0.0.1:8000/api/login'),
    body:{
      'email':email,
      'password':password,
    });
    if(response.statusCode==200){
      var data = jsonDecode(response.body.toString());
      print(data['token']);
      print("Account login Suceesfully");
      Fluttertoast.showToast(
        msg: "Login Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );

        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (
                context,
                animation,
                secondryAnimation,
                child,
                ) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            pageBuilder: (
                context,
                animation,
                secondryAnimation,
                ) {
              return const Dashboard();
            },
          ),
        );
      }
    }else{
    print("failed");
    Fluttertoast.showToast(
      msg: "Login Failed. Please check your credentials.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    }
    }
    catch(e){
      print(e.toString());
      Fluttertoast.showToast(
        msg: "Failed to connect to the server. Please try again.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }*/

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      //print('here');
      final result = await loginUser(_emailController.text.toString(), _passwordController.text.toString());

      if(result) {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (
                context,
                animation,
                secondryAnimation,
                child,
                ) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            pageBuilder: (
                context,
                animation,
                secondryAnimation,
                ) {
              return const Dashboard();
            },
          ),
        );

      }
    }
  }

  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return "Please Enter Email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Please Enter a valid Email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 10),
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                "Welcome Back,",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 15, right: 15),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 30,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      suffixIcon: Icon(Icons.mail_outline),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: _validateEmail,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width - 30,
                  child: TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a password";
                      }
                      return null;
                    },
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 30,
                child: Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text('Remember Me'),
                    SizedBox(
                      width: 70,
                    ),
                   /* Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    )*/
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  _submitForm();
/*
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (
                            context,
                            animation,
                            secondryAnimation,
                            child,
                            ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (
                            context,
                            animation,
                            secondryAnimation,
                            ) {
                          return const Dashboard();
                        },
                      ),
                    );
                  }
*/
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
