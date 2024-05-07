import 'package:flutter/material.dart';
import 'package:sarafi/main.dart';
import 'package:getwidget/getwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sarafi/utility/staticlogin.dart';

class Mysinglecoin extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Mysinglecoin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'KC',
                    //   style:
                    //       TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                    // ),
                    Text(
                      'نام ارز[title]',
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'icons/bit.png',
                      scale: 35,
                    )),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //buttons
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[500],
                                      borderRadius: BorderRadius.circular(300)),
                                  padding: EdgeInsets.all(10),
                                  // color: Colors.amber,
                                  // height: 60,
                                  child: Icon(Icons.arrow_circle_up_outlined))
                            ],
                          ),
                          Row(
                            children: [Text('برداشت')],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                // color: Colors.amber,
                                // height: 60,
                                child:
                                    //  Icon(Icons.arrow_circle_down_outlined),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/index');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[500],
                                              borderRadius:
                                                  BorderRadius.circular(300)),
                                          padding: EdgeInsets.all(10),
                                          child: Icon(
                                            Icons.arrow_circle_down_outlined,
                                          ),
                                        )),
                              ),
                            ],
                          ),
                          Row(
                            children: [Text('واریز')],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[500],
                                      borderRadius: BorderRadius.circular(300)),
                                  padding: EdgeInsets.all(10),
                                  // color: Colors.amber,
                                  // height: 60,
                                  child: Icon(Icons.autorenew_outlined))
                            ],
                          ),
                          Row(
                            children: [Text('تبدبل ارز')],
                          )
                        ],
                      ),
                      // Column(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Container(
                      //             decoration: BoxDecoration(
                      //                 color: Colors.amber[800],
                      //                 borderRadius: BorderRadius.circular(300)),
                      //             padding: EdgeInsets.all(10),
                      //             // color: Colors.amber,
                      //             // height: 60,
                      //             child: Icon(Icons.access_time_sharp))
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [Text('تراکنش ها')],
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                      bottom: 6,
                    ),
                    child: Wrap(
                      children: [
                        for (var item in [
                          1,
                          2,
                          3,
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          0,
                          11,
                          12,
                          13,
                          14,
                          15
                        ])
                          Wrap(
                            children: [
                              Divider(
                                height: 8,
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('10,000'),
                                      // Text(
                                      //   'ریال',
                                      //   style: TextStyle(color: Colors.grey[500]),
                                      // )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text('برداشت'),
                                              Text(
                                                '32/34/56',
                                                style: TextStyle(
                                                    color: Colors.grey[500],
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.arrow_circle_up_outlined,
                                                color: Colors.red[600],
                                                size: 30,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  // Divider(
                  //   height: 10,
                  // ),
                ],
              )

              /////////////////////page dolor
            ],
          ),
        ),
      ));
}
