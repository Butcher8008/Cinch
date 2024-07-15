import 'package:cinch/Company%20Inspection.dart';
import 'package:cinch/Component/Head.dart';
import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Colors/Colors.dart';

class Inspection extends StatelessWidget {
  final List<Map<String, dynamic>> sampleDataList;

  const Inspection({Key? key, required this.sampleDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = sampleDataList;

    return
       Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Head(name: "Inspection",
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
                            return const Dashboard();
                          }));
                },
              ),
            ),
            /*Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height-50,
                child: ListView(
                    children: dataList.map((value) {
                      return
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                          child: Container(

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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(value['companyName'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    ),
                                    const SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 17,bottom: 10),
                                      child: Text(value['contactName'].toString(),style: TextStyle(fontSize: 18,),),
                                    ),
                                  ],
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,right: 10),
                                    child: InkWell(
                                      child:
                                      Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(18),
                                          color: Colors.blue.withOpacity(0.1),
                                        ),
                                        child:  Center(
                                            child: Image.asset("asstes/image/glass.png")
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
                                                  return const Company ();
                                                }));
                                      },


                                    )
                                  ),
                                ]
                              ),
                            ),
                          ),
                        );


                    }).toList()

                ),
              ),
            ),*/

          ],
        ),
       );

  }
}
