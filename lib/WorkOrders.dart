import 'dart:convert';

import 'package:cinch/Component/Head.dart';
import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Api.dart';
import 'Component/PdfViewer.dart';
import 'Models/WorkOrderModel.dart';

class WorkOrders extends StatefulWidget {
  const WorkOrders({Key? key}) : super(key: key);

  @override
  _WorkOrdersState createState() => _WorkOrdersState();
}

class _WorkOrdersState extends State<WorkOrders> {
  bool pageLoaded = false;
  List<dynamic> workOrders = [];

  String formatDateTime(DateTime dateTime) {
    // Format the date in desired format
    String formattedDate =
        '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
    return formattedDate;
  }

  void showPdf(String url, type, id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: PdfViewer(url: url, title: 'Work Order',type: type, modelId: id,onComplete: apiCall,),
        );
      },
    );
  }

  apiCall() async {
    try {
      pageLoaded = false;
      var responseData = await getWorkOrders();
      print(responseData);
      var decodedData = jsonDecode(responseData);


      List workOrdersApi = decodedData
          .map((json) => WorkOrderModel.fromJson(json))
          .toList();

      setState(() {
        workOrders = workOrdersApi;
        pageLoaded = true;
      });

    } catch (e) {
      //print('Error: $e');
    }
  }

  @override
  void initState(){
    super.initState();
    apiCall();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(
            name: "Work Orders",
            previous: InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 5),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 700),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      final slideAnimation = Tween<Offset>(
                        begin: const Offset(-1, 0),
                        end: const Offset(0, 0),
                      ).animate(animation);
                      return SlideTransition(
                        position: slideAnimation,
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const Dashboard();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-120,
            child: pageLoaded ? (workOrders.isNotEmpty ? ListView(
                children: workOrders.map((value) {
                  return
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width-20,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                  Text('WO# ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(value.id.toString(),style: TextStyle(fontSize: 20,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Issue",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(value.type,style: TextStyle(fontSize: 20),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
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
                                          Text("Status: ",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                          Text(value.status,style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Created At: ",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 10),
                                            child: Text(formatDateTime(value.createdAt),style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                          )
                                        ],
                                      ),

                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,bottom: 10,left: 0),
                                    child: InkWell(
                                      child: Container(
                                        height: 35,
                                        width: 96,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(18),
                                          color: Colors.blue.withOpacity(0.1),
                                        ),
                                        child:  Center(
                                            child:(
                                                Image.asset("asstes/image/glass.png")
                                            )
                                        ),
                                      ),
                                      onTap: () {
                                        if (value.pdfUrl != null) {
                                          //print(value.pdfUrl2);
                                          showPdf(value.pdfUrl!, 'workOrder',value.id.toString(),);
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );


                }).toList()) : Container(
                      width:MediaQuery.of(context).size.width,
                    child: Center(child: Text('No pending work found!'))
                ))
                : Container(
                width:MediaQuery.of(context).size.width,
                child: Center(child: CircularProgressIndicator())
            ),
          ),
        ],
      ),
    );
  }
}