import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120,left: 10),
                child: Center(child: Text("Hello",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),)),
              ),
              Text("Welcome Back,",style: TextStyle(color: Colors.grey,fontSize: 18),),
              Padding(
                padding: const EdgeInsets.only(top: 90,left: 15,right: 15),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width-30,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      suffixIcon: Icon(Icons.mail_outline),
                      contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        borderSide: BorderSide.none, // Remove the border
                      ),
                    ),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width-30,
                  child:
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        borderSide: BorderSide.none, // Remove the border
                      ),
                    ),
                  ),            ),),
              Container(
                width: MediaQuery.of(context).size.width-30,
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
                    SizedBox(width: 70,),
                    Text("Forget Password?",style: TextStyle(color: Colors.blue,fontSize: 14),)
                  ],
                ),
              ),


              SizedBox(height: 30,),
              InkWell(
                child:
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 20),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width-30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,
                      ),
                      child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                },
              )
            ],
          )

      )
    );
  }
}
