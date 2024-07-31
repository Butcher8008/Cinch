import 'dart:async';
import 'dart:convert';

import 'package:cinch/Dashboard.dart';
import 'package:cinch/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{


  checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    Timer(Duration(seconds: 6),(){
      if(token != null) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
      }

      else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });

    return token;
  }


  bool isFirstImageVisible = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    checkToken();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // Wait for 2 seconds, then update the state to change the background image
    Timer(const Duration(seconds: 4), () {
      setState(() {
        // isFirstImageVisible = false;
        _controller.forward(); // Start the animation for a smooth transition
      });

      // Wait for an additional 4 seconds on the second background image
      Timer(const Duration(seconds: 4), () {
        // Navigate to the home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()), // Replace HomeScreen() with your actual home screen widget
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                children: [
                  Opacity(
                    opacity: isFirstImageVisible ? 1 - _controller.value : _controller.value,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asstes/image/SplashscreenBackgroundImageCopy.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: isFirstImageVisible ? _controller.value : 1 - _controller.value,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asstes/image/SplashscreenBackground2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Center(
            child: Image.asset('asstes/image/logo.png'), // Change to your actual logo path
          ),
        ],
      ),
    );
  }
}
