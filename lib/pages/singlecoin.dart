import 'package:flutter/material.dart';
import 'package:sarafi/main.dart';
import 'package:getwidget/getwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sarafi/utility/staticlogin.dart';
import 'package:qr_flutter/qr_flutter.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Mysinglecoin extends StatefulWidget {
  const Mysinglecoin({super.key});

  @override
  State<Mysinglecoin> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Mysinglecoin> {
  late final TextEditingController address;
  late final TextEditingController amount;
  String dropdownValue = list.first;
  @override
  void initState() {
    super.initState();

    address = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
    amount = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
  }

  final _formKey = GlobalKey<FormState>();
  final PageController controller = PageController(initialPage: 0);
  final PageController controller1 = PageController(initialPage: 0);
  final PageController controller2 = PageController(initialPage: 0);

  Widget build(BuildContext context) {
    return Scaffold(
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
                    /////////////////////////////////bardasht
                    Builder(
                      builder: (context) {
                        return Column(
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
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context,
                                                // backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .only(
                                                    topEnd: Radius.circular(25),
                                                    topStart:
                                                        Radius.circular(25),
                                                  ),
                                                ),
                                                builder:
                                                    (context) => Builder(
                                                            builder: (context) {
                                                          return StatefulBuilder(
                                                              builder:
                                                                  (BuildContext
                                                                          context,
                                                                      setState) {
                                                            return Container(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.75,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .only(
                                                                  start: 20,
                                                                  end: 20,
                                                                  bottom: 30,
                                                                  top: 8,
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'برداشت',
                                                                          style:
                                                                              TextStyle(fontSize: 20),
                                                                        ),
                                                                        Text(address
                                                                            .text),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10),
                                                                          child:
                                                                              Text('آدرس کیف پول'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.85,
                                                                          child:
                                                                              TextField(
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() {});
                                                                            },
                                                                            controller:
                                                                                address,
                                                                            decoration:
                                                                                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10),
                                                                          child:
                                                                              Text('مبلغ'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.85,
                                                                          child:
                                                                              TextField(
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() {});
                                                                            },
                                                                            controller:
                                                                                amount,
                                                                            decoration:
                                                                                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                            'معادل دلار='),
                                                                        Text(
                                                                            r'45345$')
                                                                      ],
                                                                    ),
                                                                    Spacer(),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ElevatedButton(
                                                                            style:
                                                                                ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                                                                            onPressed: (address.text == '') || (amount.text == '') ? null : () => {},
                                                                            child: Text('تایید'))
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ));
                                                          });
                                                        }));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[500],
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(10),
                                            child: Icon(
                                              Icons.arrow_circle_up_outlined,
                                            ),
                                          )),
                                ),
                              ],
                            ),
                            Row(
                              children: [Text('برداشت')],
                            )
                          ],
                        );
                      },
                    ),
                    ////variz
                    Builder(
                      builder: (context) {
                        return Column(
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
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context,
                                                // backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .only(
                                                    topEnd: Radius.circular(25),
                                                    topStart:
                                                        Radius.circular(25),
                                                  ),
                                                ),
                                                builder:
                                                    (context) => Builder(
                                                            builder: (context) {
                                                          return StatefulBuilder(
                                                              builder:
                                                                  (BuildContext
                                                                          context,
                                                                      setState) {
                                                            return Container(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.79,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .only(
                                                                  start: 20,
                                                                  end: 20,
                                                                  bottom: 30,
                                                                  top: 0.9,
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.87,
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.3,
                                                                          child:
                                                                              QrImageView(
                                                                            backgroundColor:
                                                                                Colors.white,
                                                                            data:
                                                                                '1234567890',
                                                                            version:
                                                                                QrVersions.auto,
                                                                            size:
                                                                                150.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10),
                                                                          child:
                                                                              Text('آدرس کیف پول'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.85,
                                                                          child:
                                                                              TextField(
                                                                            onChanged: (value) =>
                                                                                setState(() {}),
                                                                            controller:
                                                                                address,
                                                                            decoration:
                                                                                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10),
                                                                          child:
                                                                              Text('مبلغ'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.85,
                                                                          child:
                                                                              TextField(
                                                                            controller:
                                                                                amount,
                                                                            onChanged: (value) =>
                                                                                setState(() {}),
                                                                            decoration:
                                                                                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                            'معادل دلار='),
                                                                        Text(
                                                                            r'45345$')
                                                                      ],
                                                                    ),
                                                                    Spacer(),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        ElevatedButton(
                                                                            style:
                                                                                ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                                                                            onPressed: (address.text == '') || (amount.text == '') ? null : () => {},
                                                                            child: Text('تایید'))
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ));
                                                          });
                                                        }));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[500],
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(10),
                                            child: Icon(
                                              Icons.arrow_circle_up_outlined,
                                            ),
                                          )),
                                ),
                              ],
                            ),
                            Row(
                              children: [Text('واریز')],
                            )
                          ],
                        );
                      },
                    ),
                    ////swapp
                    Builder(
                      builder: (context) {
                        return Column(
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
                                            showModalBottomSheet(
                                              isScrollControlled: true,
                                              context: context,
                                              // backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .only(
                                                  topEnd: Radius.circular(25),
                                                  topStart: Radius.circular(25),
                                                ),
                                              ),
                                              builder: (context) => Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.79,
                                                  padding: EdgeInsetsDirectional
                                                      .only(
                                                    start: 20,
                                                    end: 20,
                                                    bottom: 30,
                                                    top: 0.9,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.87,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.3,
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  return StatefulBuilder(builder:
                                                                      (BuildContext
                                                                              context,
                                                                          setState) {
                                                                    return DropdownButton<
                                                                        String>(
                                                                      value:
                                                                          dropdownValue,
                                                                      icon: const Icon(
                                                                          Icons
                                                                              .arrow_downward),
                                                                      elevation:
                                                                          16,
                                                                      style: const TextStyle(
                                                                          color:
                                                                              Colors.deepPurple),
                                                                      underline:
                                                                          Container(
                                                                        height:
                                                                            2,
                                                                        color: Colors
                                                                            .deepPurpleAccent,
                                                                      ),
                                                                      onChanged:
                                                                          (String?
                                                                              value) {
                                                                        // This is called when the user selects an item.
                                                                        setState(
                                                                            () {
                                                                          dropdownValue =
                                                                              value!;
                                                                        });
                                                                      },
                                                                      items: list.map<
                                                                          DropdownMenuItem<
                                                                              String>>((String
                                                                          value) {
                                                                        return DropdownMenuItem<
                                                                            String>(
                                                                          value:
                                                                              value,
                                                                          child:
                                                                              Text(value),
                                                                        );
                                                                      }).toList(),
                                                                    );
                                                                  });
                                                                },
                                                              ))
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Text(
                                                                'آدرس کیف پول'),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.85,
                                                            child: TextField(
                                                              controller:
                                                                  address,
                                                              decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(8)))),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Text('مبلغ'),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.85,
                                                            child: TextField(
                                                              controller:
                                                                  amount,
                                                              decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(8)))),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text('معادل دلار='),
                                                          Text(r'45345$')
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ElevatedButton(
                                                              style: ButtonStyle(
                                                                  backgroundColor:
                                                                      MaterialStatePropertyAll(
                                                                          Colors
                                                                              .green)),
                                                              onPressed: (address
                                                                              .text ==
                                                                          '') ||
                                                                      (amount.text ==
                                                                          '')
                                                                  ? null
                                                                  : () => {},
                                                              child:
                                                                  Text('تایید'))
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[500],
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(10),
                                            child: Icon(
                                              Icons.autorenew_outlined,
                                            ),
                                          )),
                                ),
                              ],
                            ),
                            Row(
                              children: [Text('واریز')],
                            )
                          ],
                        );
                      },
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
}
