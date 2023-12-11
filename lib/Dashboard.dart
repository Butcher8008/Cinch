import 'package:cinch/Calculator.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: const EdgeInsets.only(top: 20,left: 15),
                    child: Text("Let’s Start Cleaning",style: TextStyle(color: Colors.blue,fontSize: 23,fontWeight: FontWeight.w700
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 10),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18,top: 20),
                                child: Text("Your Today's Tasks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                              ),
                              SizedBox(height: 2,),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text("Almost done",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child:
                                Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white
                                  ),
                                  child: Center(child: Text("View Task",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                ),
                              )

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 13.0,
                              percent: 0.75,
                              center: Text(
                                "72%",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
                              ),
                              progressColor: Colors.white,
                              circularStrokeCap: CircularStrokeCap.round,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,top: 20),
                    child: Text("What's you need?",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20,left: 12),
                      child:SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                child:
                                Container(
                                  height: 100,
                                  width: 100,
                                  /*color: Colors.blue,*/
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),

                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:InkWell(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Calculator",style: TextStyle(color: Colors.grey,fontSize: 14),),
                                            SizedBox(height: 10,),
                                            InkWell(
                                              child:
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
                                                  radius: 20, // Adjust the radius as needed
                                                  backgroundColor: Colors.white, // Set the background color
                                                  child: Icon(Icons.calculate,size: 30,color: Colors.blue,),// Set the image
                                                ),
                                              ),
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Calculator()));
                                              },

                                            )

                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Calculator()));
                                },
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 100,
                                width: 100,
                                /*color: Colors.blue,*/
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(0, 3),
                                      ),
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Inspection",style: TextStyle(color: Colors.grey,fontSize: 14),),
                                      SizedBox(height: 10,),
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
                                          radius: 20, // Adjust the radius as needed
                                          backgroundColor: Colors.white, // Set the background color
                                          child: Icon(FontAwesomeIcons.searchengin,size: 30,color: Colors.blue,),// Set the image
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 100,
                                width: 100,
                                /*color: Colors.blue,*/
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(0, 3),
                                      ),
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Prospects",style: TextStyle(color: Colors.grey,fontSize: 14),),
                                      SizedBox(height: 10,),
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
                                          radius: 20, // Adjust the radius as needed
                                          backgroundColor: Colors.white, // Set the background color
                                          child: Icon(Icons.filter_alt,size: 30,color: Colors.blue,),// Set the image
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 100,
                                width: 100,
                                /*color: Colors.blue,*/
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(0, 3),
                                      ),
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Scope of ",style: TextStyle(color: Colors.grey,fontSize: 14),),
                                      SizedBox(height: 10,),
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
                                          radius: 20, // Adjust the radius as needed
                                          backgroundColor: Colors.white, // Set the background color
                                          child: Icon(Icons.copy,size: 30,color: Colors.blue,),// Set the image
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,top: 20),
                    child: Text("Today tasks",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width-20,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(23)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 7),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0,top: 3,bottom: 2),
                                  child: Container(
                                    height: 35,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.blue
                                    ),
                                    child: Center(child: Text("All task",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                  ),
                                ),

                                Container(
                                    width: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("today task",style: TextStyle(color: Colors.grey,fontSize: 15, ),),
                                    )
                                ),
                                Container(
                                    width: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("In progress",style: TextStyle(color: Colors.grey,fontSize: 15, ),),
                                    )
                                ),
                                Container(
                                    width: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Completed",style: TextStyle(color: Colors.grey,fontSize: 15, ),),
                                    )
                                ),
                              ],
                            ),

                          ),
                        )

                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.2),
                            width: 2.0,

                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13,left: 10,right: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Homepage Redesign",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text("Redesign the homepage of our website to improve \nuser engagement and align with our updated bran",style: TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.folder_copy_outlined,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("Website Revamp",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("October 15,2023",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    )

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.purple.withOpacity(0.2)
                                    ),
                                    child: Center(child: Text("Today Task",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.2),
                            width: 2.0,

                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13,left: 10,right: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mobile App Interface Optimization",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text("Optimize the user interface for our mobile app \nensuring a seamless and delightful user experiene",style: TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.folder_copy_outlined,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("App Enhancements",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("October 15,2023",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    )

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.blue.withOpacity(0.2)
                                    ),
                                    child: Center(child: Text("In progress",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 190,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.2),
                            width: 2.0,

                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13,left: 10,right: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("E-commerce Checkout Process \nRedesign",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text("Redesign the checkout process for our e-comm..\nerce platform, focusing on improving conve...",style: TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.folder_copy_outlined,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("Checkout Optimization",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("October 15,2023",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    )

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.green.withOpacity(0.2)
                                    ),
                                    child: Center(child: Text("Completed",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 10),
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.2),
                            width: 2.0,

                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13,left: 10,right: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New Feature Integration UI Design",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text("Design the user interface for a new feature integ..\nration within our existing platform. Ensure the..",style: TextStyle(color: Colors.grey,fontSize: 14),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.folder_copy_outlined,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("Features Expansion",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.alarm,size: 20,color: Colors.grey,),
                                        SizedBox(width: 10,),
                                        Text("October 15,2023",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                      ],
                                    )

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.purple.withOpacity(0.2)
                                    ),
                                    child: Center(child: Text("Today Task",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight:FontWeight.bold ),)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),



                ]
            ),
          )
      ),
    );
  }
}