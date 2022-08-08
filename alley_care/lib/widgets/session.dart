// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget session(
    String img, String name, String state, TimeOfDay time, var w, var h) {
  w = w * 0.8;
  return Container(
    // color: Colors.transparent.withOpacity(0.3),
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: state == "Completed"
                  ? Icon(
                      Icons.done_all,
                      size: 30,
                      color: Colors.blue,
                    )
                  : state == "Performed"
                      ? Icon(
                          Icons.done_all,
                          size: 30,
                        )
                      : Icon(
                          Icons.done,
                          size: 30,
                        ),
            ),
            SizedBox(
              width: w * 0.07,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black54,
                    width: 3.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ), //
              ),
              height: h * 0.15,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: Text(
                              name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        state == "Completed"
                            ? Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Text(
                                        state,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "performed At",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "4:40 PM",
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : state == "Performed"
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            state,
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Text(
                                            "Enter Pain Score",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Icon(
                                                Icons
                                                    .replay_circle_filled_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 2),
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    47, 87, 86, 86),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  17,
                                                ),
                                              ),
                                              child: Text(
                                                "Retry",
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(
                                            Icons.play_circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 2),
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(47, 87, 86, 86),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Start",
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                      ],
                    ),
                  ),
                  Container(
                    width: w / 2,
                    child: Image.asset(
                      img,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        state == "Completed"
            ? Container(
                margin: EdgeInsets.only(top: 5, left: h * 0.078),
                height: h * 0.15,
                width: w * 1.1,
                color: Colors.white.withOpacity(0.45),
              )
            : Container(),
      ],
    ),
  );
}
