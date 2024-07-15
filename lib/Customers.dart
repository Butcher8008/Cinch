import 'package:cinch/Component/Head.dart';
import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  var ProspectList = [
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
    {
      'companyName': 'Company B',
      'contactName': 'Jane Smith',
      'email': 'info@test.com',
      'date': 'November 20, 2023'
    },
  ];

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
              child: ListView(
                  children: ProspectList.map((value) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
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
                                padding: EdgeInsets.only(right: 8),
                                child: Text(
                                  value['companyName'].toString(),
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
                                padding: const EdgeInsets.only(right: 17),
                                child: Text(
                                  value['contactName'].toString(),
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
                                          value['email'].toString(),
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
                                          value['date'].toString(),
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
                                          return CustomDialog();
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
              }).toList()),
            ),
          ]),
    ));
  }
}

class CustomDialog extends StatelessWidget {
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
            padding: const EdgeInsets.only(top: 20),
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
                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name:",
                          style: TextStyle(fontSize: 18),
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(
                            " sfsdaffas",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email:",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(
                            " sfsdaffas",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone:",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(
                            " sfsdaffas",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Company Name:",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(
                            " sfsdaffas",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Days of the week:",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(
                            " sfsdaffas",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Enter budgeted cleaning time",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        width: 300,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                            // Set your desired outline color
                            width: 2.0,
                            // Set the width of the outline
                          ),
                        ),
                        child: const Text(
                          " sfsdaffas",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Additional notes:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue,
                            // Set your desired outline color
                            width: 2.0,
                            // Set the width of the outline
                          ),
                        ),
                        child: const Text(
                          " sfsdaffas",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      'Close',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
