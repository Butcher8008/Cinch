import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Prospects extends StatefulWidget {
  const Prospects({super.key});

  @override
  State<Prospects> createState() => _ProspectsState();
}

class _ProspectsState extends State<Prospects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:      Column(
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
              padding: const EdgeInsets.only(right: 12,left: 30,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Prospects" ,style: TextStyle(color: Colors.blue,fontSize: 32,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
            SizedBox(height: 40,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right:75),
                            child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.mail_outline,size: 20,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("info@test.com",style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                                  color: Colors.blue.withOpacity(0.1)
                              ),
                              child: Center(child:Icon(
                                FontAwesomeIcons.search,color: Colors.blue,
                              )
                              ),
                            ),
                          )],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right:75),
                            child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.mail_outline,size: 20,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("info@test.com",style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                                  color: Colors.blue.withOpacity(0.1)
                              ),
                              child: Center(child:Text(
                                "view only",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                              )
                              ),
                            ),
                          )],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right:75),
                            child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.mail_outline,size: 20,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("info@test.com",style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                                  color: Colors.blue.withOpacity(0.1)
                              ),
                              child: Center(child:Text(
                                "view only",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                              )
                              ),
                            ),
                          )],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right:75),
                            child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.mail_outline,size: 20,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("info@test.com",style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                                  color: Colors.blue.withOpacity(0.1)
                              ),
                              child: Center(child:Text(
                                "view only",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),
                              )
                              ),
                            ),
                          )],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(right:75),
                            child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.mail_outline,size: 20,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("info@test.com",style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                            child: InkWell(
                              onTap: () {
                                _showDialog(context);
                                },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.blue.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    "view only",
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),





          ],
        ),

      )
    );
  }
}
Future<void> _showDialog(BuildContext context) async {
  double screenWidth = MediaQuery.of(context).size.width;

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FractionallySizedBox(
            widthFactor: screenWidth > 10000 ? 0.6 : 0.9,
            child: Container(
              height: 500, // Set the desired height
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue.withOpacity(0.1),
                        child: Icon(Icons.person, color: Colors.blue, size: 50),
                      ),
                    ),
                    SizedBox(height: 5,),
                    // Rest of your content...
                  ],
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Center(
            child: Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Close', style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      );
    },
  );
}

