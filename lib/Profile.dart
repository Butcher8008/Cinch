import 'package:cinch/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cinch/Component/Head.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Head(name : "Edit Profile",
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
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("asstes/image/img.png"),
                  ),
                  Positioned(
                    left: 140,
                    right: 0,
                    top: 110,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(FontAwesomeIcons.pencil,color: Colors.white,size: 20,),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            Center(child: Text("Ronald Richards",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'popins'),)),
            Center(child: Text("Marketing Coordinator",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,fontFamily: 'popins',color: Colors.grey),)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Full Name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Email",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Phone",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Job Title",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Company Name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Company Address",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),

                        )
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,bottom: 20),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width-80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: Center(child: Text("Save Changes",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),



          ],
        ),

      )
    );
  }
}
