import 'dart:convert';

import 'package:cinch/Component/Head.dart';
import 'package:cinch/Dashboard.dart';
import 'package:cinch/Models/CustomerModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Api.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  bool pageLoaded = false;
  List<dynamic> customers = [];

  apiCall() async {
    try {
      var responseData = await getCustomers();
      var decodedData = jsonDecode(responseData);
      //print(decodedData);

      List customersApi = decodedData.values
          .map((customerJson) => CustomerModel.fromJson(customerJson))
          .toList();

      setState(() {
        customers = customersApi;
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
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Head(
              name: "Customers",
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
            Container(
              height: MediaQuery.of(context).size.height - 120,
              child: pageLoaded ? ListView(
                  children: customers.map((value) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 10, right: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Company Name',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "poppins"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  value.company,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Contact Name ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "poppins"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  value.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.mail_outline,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          value.email,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
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
                                          value.createdAt.toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          //print(value.email);
                                          return CustomDialog(customer: value);
                                        },
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: Colors.blue.withOpacity(0.1),
                                        ),
                                        child: Center(
                                            child: Image.asset(
                                                "asstes/image/glass.png")),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList()) :  Container(
                width:MediaQuery.of(context).size.width,
                child: Center(child: CircularProgressIndicator())
              ),
            ),
          ]),
    ));
  }
}

class CustomDialog extends StatelessWidget {
  final CustomerModel customer;
  const CustomDialog({required this.customer});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: FractionallySizedBox(
        widthFactor: 1.2,
        child: Container(
          height: 520,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.blue.withOpacity(0.2),
                        backgroundImage: customer.avatar != null
                            ? NetworkImage(customer.avatar ?? '') as ImageProvider
                            : const AssetImage('asstes/image/blank.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Company:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                customer.company,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  buildInfoRow("Contact Name:", customer.name),
                  buildInfoRow("Email:", customer.email),
                  buildInfoRow("Phone Number:", customer.phone),
                  buildInfoRow("Address:", customer.address),
                  buildInfoRow("City:", customer.city),
                  buildInfoRow("State:", customer.state),
                  buildInfoRow("Postal Code:", customer.zip),
                  buildInfoRow("Days of the week:", customer.days.join(', ')),
                  buildInfoRow("Budgeted Cleaning Time:", customer.cleaningTime!=null ? '${customer.cleaningTime} hours': ''),
                  buildInfoRow("Notes:", customer.note??''),
                  const SizedBox(height: 20),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            // Implement the copy functionality here
                          },
                          child: const Text(
                            "Copy Customer Number",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                value,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
