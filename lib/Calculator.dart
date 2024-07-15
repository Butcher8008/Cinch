import 'package:cinch/Component/Head.dart';
import 'package:cinch/Dashboard.dart';
import 'package:cinch/Floorcalculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Head(
            name: "Janitorial\nCalculator",
            next: InkWell(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 8, right: 5),
                  child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 25,
                        color: Colors.blue,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 700),
                        transitionsBuilder:
                            (context, animation, secondryAnimation, child) {
                          final slideAnimation = Tween(
                                  begin: const Offset(1, 0),
                                  end: const Offset(0, 0))
                              .animate(animation);
                          return SlideTransition(
                            position: slideAnimation,
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, secondryAnimation) {
                          return const Floor();
                        }));
              },
            ),
            previous: InkWell(
              child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, right: 5),
                  child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: Icon(
                        FontAwesomeIcons.chevronLeft,
                        size: 25,
                        color: Colors.blue,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 700),
                        transitionsBuilder:
                            (context, animation, secondryAnimation, child) {
                          final slideAnimation = Tween(
                                  begin: const Offset(-1, 0),
                                  end: const Offset(0, 0))
                              .animate(animation);
                          return SlideTransition(
                            position: slideAnimation,
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, secondryAnimation) {
                          return const Dashboard();
                        }));
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 38,
            color: Colors.white54,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How many days Per week?",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "How many days Per day ?",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Whats the hourly rate?",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Misc.Cost ?",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payroll Tax & Insurance (&)",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Overhead (%)?",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Profit (%)",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total weekly hours",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total monthly hours",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total Monthly price ",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    " Monthly profit ",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total annual price ",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                  )
                ]),
          ),
        ],
      ),
    ));
  }
}
