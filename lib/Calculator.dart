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
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 14,right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.black,
                            child: Icon(FontAwesomeIcons.user,color: Colors.white,),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Evening!",style: TextStyle(color: Colors.grey),),
                            Text("Dan Smith",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ],
                    ),

                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2), // Adjust the offset as needed
                            blurRadius: 3, // Adjust the blur radius as needed
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 25, // Adjust the radius as needed
                        backgroundColor: Colors.white, // Set the background color
                        child: Icon(Icons.notifications,size: 30,color: Colors.blue,),// Set the image
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12,left: 30,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Janitorial \nCalculator" ,style: TextStyle(color: Colors.blue,fontSize: 32,fontWeight: FontWeight.w800),),
                    Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.blue,size: 50,)
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 1304,
                width: MediaQuery.of(context).size.width-38,
                color: Colors.white54,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How many days Per week?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("How many days Per day ?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Whats the hourly rate?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Misc.Cost ?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Payroll Tax & Insurance (&)",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Overhead (%)?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Profit (%)",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Total weekly hours",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Total monthly hours",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Total Monthly price ",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(" Monthly profit ",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Total annual price ",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),

                            )
                        ),
                      )

                    ]
                ),
              ),


            ],
          ),

        )
    );
  }
}
