import 'package:flutter/material.dart';
class Complete extends StatefulWidget {
  const Complete({super.key});

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("Complete ",style: TextStyle(fontSize: 30),))
        ],
      ),
    );
  }
}
