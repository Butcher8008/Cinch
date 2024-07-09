import 'package:cinch/Inspection.dart';
import 'package:flutter/material.dart';
import 'package:cinch/Component/Head.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cinch/List.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  var CompanyList = [
    {

      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
    {
      'Scope Name': 'Webrexo',
      'Inspected At': '01/03/2024-03:42 PM',
      'Score': '60%',
      'Date': 'October 15, 2023',

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:      Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Head(name: "Webrexo inspection",
                  previous: InkWell(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 5),
                        child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: Icon(FontAwesomeIcons.chevronLeft,size: 25,color: Colors.blue,))
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
                                    begin: const Offset(-1, 0),
                                    end: const Offset(0, 0))
                                    .animate(animation);
                                return SlideTransition(
                                  position: slideAnimation,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation,
                                  secondryAnimation) {
                                return  Inspection(sampleDataList: sampleDataList);
                              }));
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height-120,
                  child: ListView(
                      children: CompanyList.map((value) {
                        return  Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
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
                                      Text('Scope Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(value['Scope Name'].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Inspected At ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text(value['Inspected At'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("Score:",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                              SizedBox(width: 10,),
                                              Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(18),
                                                    color: Colors.blue,
                                                  ),
                                                  child: Center(child: Text(value['Score'].toString(),style: TextStyle(color: Colors.white,fontSize: 15),)))
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Row(
                                            children: [
                                              Icon(Icons.alarm,size: 20,color: Colors.grey,),
                                              SizedBox(width: 10,),
                                              Text(value['Date'].toString(),style: TextStyle(color: Colors.grey,fontSize: 15),)
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
                                              color: Colors.blue.withOpacity(0.1),
                                            ),
                                            child:  Center(
                                              child: (
                                              Image.asset("asstes/image/glass.png")
                                              )
                                            ),
                                          ),

                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );



                      }).toList()

                  ),
                ),




              ]),

        )

    );
  }
}
