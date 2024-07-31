import 'package:cinch/Login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'asstes/image/homeScreenBackground.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Color(0xFF0071C4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 120,),
                    const Text(
                      'Janitorial Cleaning ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const Text(
                      'Management Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 60,),
                    InkWell(
                      child:Container(
                        width: MediaQuery.of(context).size.width /2.5 ,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x21000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.values.last,
                          children: const [
                            Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Icon(Icons.double_arrow_outlined, color: Color(0xFF73F501),)
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: const Duration(milliseconds: 700),
                                transitionsBuilder: (context,animation, secondryAnimation,child){
                                  final slideAnimation= Tween(begin: Offset(0,1),end : Offset(0,0))
                                      .animate(animation);
                                  return SlideTransition(position: slideAnimation,
                                    child: child,
                                  );
                                },
                                pageBuilder : (context,animation,secondryAnimation){
                                  return  Login();
                                }));
                      },
                      )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height); // Move to the bottom-left corner
    path.lineTo(0, size.height * 0.4); // Line to the top-left corner
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 20.0, // Adjust this value for the curve height
      size.width,
      size.height * 0.4,
    );
    path.lineTo(size.width, size.height); // Line to the bottom-right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
