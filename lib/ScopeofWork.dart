import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:cinch/Component/Head.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Scope extends StatefulWidget {
  const Scope({super.key});

  @override
  State<Scope> createState() => _ScopeState();
}

class _ScopeState extends State<Scope> {
  var ScopeList = [
  {
  'ID': '10321',
  'Customer': 'sffa',
  'Scope Name': 'Webrexo',
  'Created At': 'November 20, 2023',
  'Scope Type': 'Office',
    'Frequency': 'One-Time',

  },
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
  'Frequency': 'One-Time',

},
{
'ID': '10321',
'Customer': 'sffa',
'Scope Name': 'Webrexo',
'Created At': 'November 20, 2023',
'Scope Type': 'Office',
'Frequency': 'One-Time',

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
                Head(name : "Scope of work",
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
                Container(
                  height: MediaQuery.of(context).size.height-120,
                  child: ListView(
                      children: ScopeList.map((value) {
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('ID ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                        Padding(
                                          padding: EdgeInsets.only(right: 45),
                                          child: Text(value['ID'].toString(),style: TextStyle(fontSize: 20,),),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Customer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 65),
                                          child: Text(value['Customer'].toString(),style: TextStyle(fontSize: 20),),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Scope Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: Text(value['Scope Name'].toString(),style: TextStyle(fontSize: 20,),),
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
                                                Text("Scope Type :",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                                SizedBox(width: 10,),
                                                Text(value['Scope Type'].toString(),style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                                              ],
                                            ),

                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Frequency :",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                                SizedBox(width: 10,),
                                                Text(value['Frequency'].toString(),style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Created At :",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                                SizedBox(width: 10,),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 10),
                                                  child: Text(value['Created At'].toString(),style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                                )
                                              ],
                                            ),

                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10,bottom: 33,left: 0),
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
