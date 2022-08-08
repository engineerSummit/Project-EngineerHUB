// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unused_import, deprecated_member_use

import 'package:alley_care/widgets/session.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Good Morning Jane",
                    style: TextStyle(
                      fontSize: 46,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(166, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black54,
                        width: 3.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ), //
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              "Today's Progress",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(
                              "50%",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 1, 112, 203),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          barRadius: Radius.circular(20),
                          lineHeight: 12.0,
                          percent: 0.5,
                          progressColor: Colors.blue,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Completed",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "2 Sessions",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        10,
                                      ),
                                    ),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Icon(
                                    Icons.arrow_circle_right_sharp,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Pending",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "2 Sessions",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                session(
                  'assets/images/wo1.png',
                  'Session 1',
                  'Completed',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo2.png',
                  'Session 2',
                  'Performed',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo3.png',
                  'Session 3',
                  'Start',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo4.png',
                  'Session 4',
                  'Start',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo1.png',
                  'Session 5',
                  'Start',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo2.png',
                  'Session 6',
                  'Start',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
                session(
                  'assets/images/wo3.png',
                  'Session 7',
                  'Start',
                  TimeOfDay(hour: 15, minute: 0),
                  w,
                  h,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: w * 0.95,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              "Start Sesssion",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            icon: const Icon(Icons.play_arrow, size: 35),
          ),
        ),
      ),
    );
  }
}
