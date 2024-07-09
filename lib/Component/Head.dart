import 'package:flutter/material.dart';
import 'dart:ui';

class MyColors {
  static const Color Colorblue = Colors.blue;
}

class Head extends StatelessWidget {
  String name;
  Widget? next;
  Widget? previous;
  Head({required this.name,this.next,this.previous});

  /*getC0lour(){
    if(score==0) {
      return MyColors.Colorblue;
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 50, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                          if(previous != null) this.previous!,
                          Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                          name,
                          style: TextStyle(
                          color: MyColors.Colorblue,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          )
                                      ],
              ),
                if(next!= null) this.next!, // Set the image


            ],
          ),
        ),
      ],
    );
  }
}
