import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Colors/Colors.dart';

class Inspection extends StatelessWidget {
  final List<Map<String, dynamic>> sampleDataList;

  const Inspection({Key? key, required this.sampleDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = sampleDataList;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  const Text(
                    'Inspection',
                    style: TextStyle(
                      color: MyColors.Colorblue,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.05,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  const Icon(
                    Icons.arrow_circle_right_rounded,
                    color: MyColors.Colorblue,
                    size: 30,
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                // Wrap with SingleChildScrollView
                child: Column(
                  children: dataList.map((data) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Card(
                        color: MyColors.Colorwhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the border radius as needed
                          side: BorderSide(
                            color: const Color(0xFFDCE1EF).withOpacity(0.7),
                            width: 2.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                  ),
                                  Text(
                                    data['companyName'] ?? '',
                                    style: const TextStyle(
                                      color: Color(0xFF0D101C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 26,
                                  ),
                                  Text(
                                    data['contactName'] ?? '',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                      letterSpacing: -0.28,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.blue.withOpacity(0.1)),
                                    child: const Center(
                                        child: Icon(
                                      FontAwesomeIcons.magnifyingGlass,
                                      color: Colors.blue,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
