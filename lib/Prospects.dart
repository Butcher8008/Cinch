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
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2), // Adjust the offset as needed
                            blurRadius: 3, // Adjust the blur radius as needed
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 25, // Adjust the radius as needed
                        backgroundColor: Colors.white, // Set the background color
                        child: Icon(Icons.notifications,size: 30,color: Colors.blue,),// Set the image
                      ),
                    ),

                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12,left: 30,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Prospects" ,style: TextStyle(color: Colors.blue,fontSize: 32,fontWeight: FontWeight.w800),),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right:75),
                              child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
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
                                child: const Center(child:Icon(
                                  FontAwesomeIcons.magnifyingGlass,color: Colors.blue,
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
              const SizedBox(height: 10,),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right:75),
                              child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
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
                                child: const Center(child:Text(
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
              const SizedBox(height: 10,),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right:75),
                              child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
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
                                child: const Center(child:Text(
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
              const SizedBox(height: 10,),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right:75),
                              child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
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
                                child: const Center(child:Text(
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
              const SizedBox(height: 10,),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("sadfsadfsa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: EdgeInsets.only(right:75),
                              child: Text("sffa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
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
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog();
                                    },
                                  );
                                },
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.blue.withOpacity(0.1),
                                  ),
                                  child: const Center(
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
              const SizedBox(height: 10,),





            ],
          ),

        )
    );
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
                      child: const Icon(Icons.person,size: 70,color: Colors.blue,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Full Name:",style: TextStyle(fontSize: 18),),
                        Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue, // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(" sfsdaffas",style: TextStyle(fontSize: 18,color: Colors.grey),),
                          ),

                      ],
                    )

                  ],
                ),
                const SizedBox(height: 14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email:",style: TextStyle(fontSize: 16),),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue, // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(" sfsdaffas",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Phone:",style: TextStyle(fontSize: 16),),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue, // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(" sfsdaffas",style: TextStyle(fontSize: 16,color: Colors.grey),),
                        ),

                      ],
                    )

                  ],
                ),
                const SizedBox(height: 14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Company Name:",style: TextStyle(fontSize: 16),),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue, // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(" sfsdaffas",style: TextStyle(fontSize: 18,color: Colors.grey),),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Days of the week:",style: TextStyle(fontSize: 16),),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue, // Set your desired outline color
                              width: 2.0,
                              // Set the width of the outline
                            ),
                          ),
                          child: const Text(" sfsdaffas",style: TextStyle(fontSize: 16,color: Colors.grey),),
                        ),

                      ],
                    )

                  ],
                ),
                const SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Enter budgeted cleaning time",style: TextStyle(fontSize: 16),),
                          Container(
                            width: 300,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.blue, // Set your desired outline color
                                width: 2.0,
                                // Set the width of the outline
                              ),
                            ),
                            child: const Text(" sfsdaffas",style: TextStyle(fontSize: 18,color: Colors.grey),),
                          ),
                        ],
                      ),
                ),
                const SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Additional notes:",style: TextStyle(fontSize: 16),),
                      Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.blue, // Set your desired outline color
                            width: 2.0,
                            // Set the width of the outline
                          ),
                        ),
                        child: const Text(" sfsdaffas",style: TextStyle(fontSize: 18,color: Colors.grey),),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),



                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: const Text('Close',style: TextStyle(color: Colors.white),),
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