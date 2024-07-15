import 'dart:convert';

import 'package:cinch/Component/CustomerCard.dart';
import 'package:cinch/Customers.dart';
import 'package:cinch/Inspection.dart';
import 'package:cinch/List.dart';
import 'package:cinch/Models/CustomerModel.dart';
import 'package:cinch/Profile.dart';
import 'package:cinch/ScopeofWork.dart';
import 'package:flutter/material.dart';

import 'Api.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool pageLoaded = false;
  dynamic user;
  List<dynamic> todaysSchedule = [];
  initData() async {
    var u = await getUser();
    var responseData = await getTodaysSchedule();
    var decodedData = jsonDecode(responseData);
    //print(decodedData);

    List scheduleList = decodedData
        .map((customerJson) => CustomerModel.fromJson(customerJson))
        .toList();
    //print(u);
    setState(() {
      todaysSchedule = scheduleList;
      user = u;
      pageLoaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 14, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                radius: 25,
                                  backgroundImage: pageLoaded && user['cinch_avatar'] != null ? NetworkImage(user['cinch_avatar']) as ImageProvider :  AssetImage('asstes/image/blank.png'),
                              ),
                            ),
                            onTap: () {
                             /* Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      transitionDuration:
                                      const Duration(milliseconds: 700),
                                      transitionsBuilder: (context, animation,
                                          secondryAnimation, child) {
                                        final slideAnimation = Tween(
                                            begin: const Offset(1, 0),
                                            end: const Offset(0, 0))
                                            .animate(animation);
                                        return SlideTransition(
                                          position: slideAnimation,
                                          child: child,
                                        );
                                      },
                                      pageBuilder: (context, animation,
                                          secondryAnimation) {
                                        return Profile();
                                      }));*/
                            },

                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good Evening!",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                pageLoaded ? user['display_name'] : '...',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0.0),
                        child: Image.asset(
                            'asstes/image/test.png'

                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    "Let’s Start Cleaning",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 23,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /*Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 18, top: 20),
                              child: Text(
                                "Your Today's Tasks",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "poppins",
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Text(
                                "Almost done",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "poppins",
                                    fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: const Center(
                                    child: Text(
                                  "View Task",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: CircularPercentIndicator(
                            animation: true,
                            animationDuration: 1000,
                            radius: 50.0,
                            lineWidth: 13.0,
                            percent: 0.75,
                            center: const Text(
                              "72%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                            progressColor: Colors.white,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 20),
                  child: Text(
                    "What you need?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20, left: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*InkWell(
                              child: Container(
                                height: 100,
                                width: 100,
                                *//*color: Colors.blue,*/ /*
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Border color
                                    width: 2, // Border width
                                  ),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Calculator",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "poppins",
                                                fontSize: 13,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    offset: Offset(0,
                                                        2), // Adjust the offset as needed
                                                    blurRadius:
                                                        3, // Adjust the blur radius as needed
                                                  ),
                                                ],
                                              ),
                                              child:  CircleAvatar(
                                                radius:
                                                    20, // Adjust the radius as needed
                                                backgroundColor: Colors.white, // Set the background color
                                                child: Image.asset("asstes/image/ca.png"), // Set the image
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 700),
                                        transitionsBuilder: (context, animation,
                                            secondryAnimation, child) {
                                          final slideAnimation = Tween(
                                                  begin: const Offset(1, 0),
                                                  end: const Offset(0, 0))
                                              .animate(animation);
                                          return SlideTransition(
                                            position: slideAnimation,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (context, animation,
                                            secondryAnimation) {
                                          return const Calculator();
                                        }));
                              },
                            ),*/
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                /*color: Colors.blue,*/
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey
                                          .withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Customers",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 2),
                                              // Adjust the offset as needed
                                              blurRadius:
                                                  3, // Adjust the blur radius as needed
                                            ),
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 20,
                                          // Adjust the radius as needed
                                          backgroundColor: Colors.white,
                                          // Set the background color
                                          child: Image.asset(
                                              "asstes/image/propects.png"), // Set the image
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 700),
                                        transitionsBuilder: (context, animation,
                                            secondryAnimation, child) {
                                          final slideAnimation = Tween(
                                                  begin: const Offset(1, 0),
                                                  end: const Offset(0, 0))
                                              .animate(animation);
                                          return SlideTransition(
                                            position: slideAnimation,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (context, animation,
                                            secondryAnimation) {
                                          return const Customers();
                                        }));
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                /*color: Colors.blue,*/
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.grey
                                          .withOpacity(0.2), // Border color
                                      width: 2, // Border width
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Scope of Work",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 2),
                                              // Adjust the offset as needed
                                              blurRadius:
                                                  3, // Adjust the blur radius as needed
                                            ),
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 20,
                                          // Adjust the radius as needed
                                          backgroundColor: Colors.white,
                                          // Set the background color
                                          child: Image.asset(
                                              "asstes/image/scpe.png"), // Set the image
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 700),
                                        transitionsBuilder: (context, animation,
                                            secondryAnimation, child) {
                                          final slideAnimation = Tween(
                                                  begin: const Offset(1, 0),
                                                  end: const Offset(0, 0))
                                              .animate(animation);
                                          return SlideTransition(
                                            position: slideAnimation,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (context, animation,
                                            secondryAnimation) {
                                          return const Scope();
                                        }));
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 100,
                              width: 150,
                              /*color: Colors.blue,*/
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.grey
                                        .withOpacity(0.2), // Border color
                                    width: 2, // Border width
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0, 3),
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Inspections",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0,
                                                  2), // Adjust the offset as needed
                                              blurRadius:
                                              3, // Adjust the blur radius as needed
                                            ),
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 20,
                                          // Adjust the radius as needed
                                          backgroundColor: Colors.white,
                                          // Set the background color
                                          child: Image.asset(
                                              "asstes/image/inspection.png"), // Set the image
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                milliseconds: 700),
                                            transitionsBuilder: (context,
                                                animation,
                                                secondryAnimation,
                                                child) {
                                              final slideAnimation = Tween(
                                                      begin: const Offset(1, 0),
                                                      end: const Offset(0, 0))
                                                  .animate(animation);
                                              return SlideTransition(
                                                position: slideAnimation,
                                                child: child,
                                              );
                                            },
                                            pageBuilder: (context, animation,
                                                secondryAnimation) {
                                              return Inspection(
                                                  sampleDataList:
                                                      sampleDataList ?? []);
                                            }));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 12, top: 20),
                  child: Text(
                    "Today schedule",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:
                  Container(
                    height: 200,
                    child:
                      ListView(
                        children: todaysSchedule.map((value) {
                          return CustomerCard(customer: value);
                        }).toList(),
                      ),
                  ),

                )
                /*DefaultTabController(
    length: 3,
    child: Container(
    width: MediaQuery.of(context).size.width,
    height: 400,
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
    child: Container(
      height: 45,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(25.0),
    border: Border.all(
    color: Colors.grey.withOpacity(0.2), // Border color
    width: 2,
    ),
    ),
    child: TabBar(
    indicator: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(18.0),
    ),
    indicatorSize: TabBarIndicatorSize.tab,
indicatorPadding: EdgeInsets.all(5),
    labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),

    labelColor: Colors.white,
    unselectedLabelColor: Colors.black,
    tabs: const [
    Tab(text: "All tasks",),
    Tab(text: "In progress"),
    Tab(text: "Completed"),
    ],
    ),
    ),
    ),
    
    Expanded(
    child: TabBarView(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right:10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Homepage Redesign",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins"
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Redesign the homepage of our website to improve user engagement and align with our updated bran ",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontFamily: "poppins",fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.folder_copy_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Website Revamp",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "poppins"
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "poppins",
                                          fontSize: 13),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 10),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple.withOpacity(0.2)),
                              child: const Center(
                                  child: Text(
                                    "Today Task",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,right :10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mobile App Interface Optimization",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,fontFamily: "poppins,"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Optimize the user interface for our mobile app ensuring a seamless and delightful user experiene",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontFamily: "poppins",fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.folder_copy_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "App Enhancements",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "poppins",
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "poppins",
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 10),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.blue.withOpacity(0.2)),
                              child: const Center(
                                  child: Text(
                                    "In progress",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right :10 ),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "E-commerce Checkout Process Redesign",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Redesign the checkout process for our e-commerce platform, focusing on improving conve...",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.folder_copy_outlined,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Checkout Optimization",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13,fontFamily: "poppins",fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13,fontFamily: "poppins",fontWeight: FontWeight.w400),
                                    )
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
                                    color: Colors.green.withOpacity(0.2)),
                                child: const Center(
                                    child: Text(
                                      "Completed",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10, bottom: 10,right :10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "New Feature Integration UI Design",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Design the user interface for a new feature integration within our existing platform. Ensure the.. ",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.folder_copy_outlined,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Features Expansion",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13,fontWeight: FontWeight.w400 ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13,fontWeight: FontWeight.w400),
                                    )
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
                                    color: Colors.purple.withOpacity(0.2)),
                                child: const Center(
                                    child: Text(
                                      "Today Task",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
     
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10,right : 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Homepage Redesign",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins"
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Redesign the homepage of our website to improve user engagement and align with our updated bran ",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontFamily: "poppins",fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.folder_copy_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Website Revamp",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "poppins"
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "poppins",
                                          fontSize: 13),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 10),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple.withOpacity(0.2)),
                              child: const Center(
                                  child: Text(
                                    "Today Task",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right : 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mobile App Interface Optimization",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,fontFamily: "poppins,"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Optimize the user interface for our mobile app ensuring a seamless and delightful user experiene",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontFamily: "poppins",fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.folder_copy_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "App Enhancements",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "poppins",
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "poppins",
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 10),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.blue.withOpacity(0.2)),
                              child: const Center(
                                  child: Text(
                                    "In progress",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),],
        ),

      ),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, left: 10, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Homepage Redesign",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins"
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Redesign the homepage of our website to improve user engagement and align with our updated bran ",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontFamily: "poppins",fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.folder_copy_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Website Revamp",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "poppins"
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(
                                      Icons.alarm,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "October 15,2023",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "poppins",
                                          fontSize: 13),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 10),
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple.withOpacity(0.2)),
                              child: const Center(
                                  child: Text(
                                    "Today Task",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
           ],
        ),

      ),




    ],
    ),
    ),
    ],
    ),
    ),
    )*/
              ],
          )  )));

  }
}
