// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, unused_element, unused_import

import 'dart:async';

import 'package:flutter/material.dart';

class rehab_page extends StatelessWidget {
  const rehab_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Widget kneeProgram(String img, DateTime tym, String res) {
      return Container(
        width: w,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              width: w * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  img,
                ),
              ),
            ),
            SizedBox(
              width: w * 0.02,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.access_time,
                          size: 25,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.01,
                      ),
                      Container(
                        child: Text(
                          "${tym.hour}:${tym.minute}am",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.007),
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.calendar_today_outlined,
                          size: 25,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.01,
                      ),
                      Container(
                        child: Text(
                          "${tym.day}-${tym.month}-${tym.year}",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: w * 0.18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: res == "Completed"
                      ? Container(
                          child: Text(
                            "View Results",
                            style: TextStyle(fontSize: 17),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.red,
                            width: 2,
                            style: BorderStyle.solid,
                          )),
                          child: Text(
                            "Missed,2 of 3",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Rehab Programme",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: h * 0.35,
                  child: Stack(
                    children: [
                      Container(
                        height: h * 0.35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/bg.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Knee Rehab",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Programme",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    "Mon, Thu, Sat",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    "3 Sessions/Day",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Left Shoulder",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "Assigned By",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Jane Doe",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  width: w * 0.35,
                                  child: Image.asset(
                                    "assets/images/wo7.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(178, 0, 0, 0),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.filter_alt_rounded,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(100, 158, 158, 158),
                  ),
                  width: double.infinity,
                  height: h * 0.12,
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Total Sessions",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.sports_basketball,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "16",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                        width: 1,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: w * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Total Time",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.timer,
                                      size: 35,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "16",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                kneeProgram(
                  "assets/images/wo5.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo6.jpg",
                  DateTime.now(),
                  "Missed",
                ),
                kneeProgram(
                  "assets/images/wo5.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo6.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo5.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo6.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo5.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo6.jpg",
                  DateTime.now(),
                  "Completed",
                ),
                kneeProgram(
                  "assets/images/wo5.jpg",
                  DateTime.now(),
                  "Completed",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
