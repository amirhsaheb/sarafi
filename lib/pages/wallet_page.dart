import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sarafi/utility/card_wallet_R.dart';
import 'package:sarafi/utility/card_wallet_C.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_page_indicator/src/painters/indicator_painter.dart';
import 'package:smooth_page_indicator/src/painters/worm_painter.dart';
import 'package:smooth_page_indicator/src/effects/indicator_effect.dart';
import 'package:sarafi/main.dart';

int pagev = 0;

class walletpage extends StatefulWidget {
  const walletpage({super.key});

  @override
  State<walletpage> createState() => _walletpageState();
}

final _formlog = GlobalKey<FormState>();

class _walletpageState extends State<walletpage> {
  @override
  final _controller = PageController();
  final int _countcontex = 2;

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'KC|',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26.0),
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(fontSize: 26),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          onPressed: () {
                            if (themeMode.value == 2) {
                              themeMode.value = 1;
                            } else {
                              themeMode.value = 2;
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[500],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              themeMode.value == 2
                                  ? Icons.nightlight_outlined
                                  : Icons.sunny,
                              size: 20,
                            ),
                          )),
                    )
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (pagev == 0)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                          child: Image.asset(
                        'icons/output-onlinegiftools1.gif',
                        fit: BoxFit.cover,
                      )),
                    ),
                  if (pagev == 1)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color.fromARGB(80, 52, 52, 52),
                              Color.fromARGB(80, 32, 32, 32)
                            ]),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (pagev == 1)
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.search)),
                          if (pagev == 1)
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: TextField(
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  hintText: 'جستجو در ارز ها',
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              //card//
              Container(
                height: 200,
                child: PageView(
                  onPageChanged: (value) => setState(() => {pagev = value}),
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCardWallet(
                        ballance: 203.430,
                        deposit: 435435345345,
                        withdraw: 435,
                        year: 345,
                        color: Colors.deepPurple[800],
                        courency: 'ریال',
                        wd: true),
                    MyCardWalletC(
                        ballance: 203.430,
                        deposit: 435435345345,
                        withdraw: 435,
                        year: 345,
                        color: Colors.cyan[900],
                        courency: '\$',
                        wd: false),
                    // MyCardWallet(
                    //   ballance: 203.430,
                    //   cardnumber: 435435345345,
                    //   month: 435,
                    //   year: 345,
                    //   color: Colors.deepPurple,
                    // ),
                  ],
                ),
              ),

              SizedBox(
                height: 5,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: _countcontex,
                effect: CustomizableEffect(
                    spacing: 1,
                    activeDotDecoration: DotDecoration(
                        width: 25,
                        height: 3,
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.zero)),
                    dotDecoration: DotDecoration(
                        width: 25,
                        height: 3,
                        borderRadius: BorderRadius.all(Radius.zero))),
              ),
              if (pagev == 0)
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
                                        borderRadius:
                                            BorderRadius.circular(300)),
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
                                  decoration: BoxDecoration(
                                      color: Colors.grey[500],
                                      borderRadius: BorderRadius.circular(300)),
                                  padding: EdgeInsets.all(10),
                                  // color: Colors.amber,
                                  // height: 60,
                                  child: Icon(Icons.arrow_circle_down_outlined),
                                )
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
                                        borderRadius:
                                            BorderRadius.circular(300)),
                                    padding: EdgeInsets.all(10),
                                    // color: Colors.amber,
                                    // height: 60,
                                    child: Icon(Icons.autorenew_outlined))
                              ],
                            ),
                            Row(
                              children: [Text('خرید ارز')],
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
                    // Expanded(
                    //     child: Divider(
                    //   height: 1,
                    // )),
                    // Text('data'),
                    // Expanded(
                    //     child: Divider(
                    //   height: 1,
                    // )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                        bottom: 6,
                      ),
                      child: Column(
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
                                  height: 10,
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
                                                  Icons
                                                      .arrow_circle_up_outlined,
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
                  ],
                )

              /////////////////////page dolor
              ,
              if (pagev == 1)
                Column(
                  children: [
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'icons/bit.png',
                                  scale: 60,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Text('DOGE',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('data ' + '%+',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text('tedad',
                                        style: TextStyle(fontSize: 15)),
                                    Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.green,
                                        ),
                                        child: Text(
                                          'dollar',
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'icons/bit.png',
                                  scale: 60,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Text('DOGE',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('data ' + '%+',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text('tedad',
                                        style: TextStyle(fontSize: 15)),
                                    Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.green,
                                        ),
                                        child: Text(
                                          'dollar',
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                      ],
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
