import 'package:flutter/material.dart';

class MyCardWallet extends StatelessWidget {
  const MyCardWallet(
      {super.key,
      required this.ballance,
      required this.withdraw,
      required this.deposit,
      required this.wd,
      required this.courency,
      required this.year,
      this.color});

  final double ballance;
  final bool wd;
  final int withdraw;
  final int deposit;
  final String courency;
  final int year;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 3, 92, 165),
                  Color.fromARGB(255, 8, 55, 88)
                ]),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            Text('موجودی', style: TextStyle(color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            if (courency == '\$')
              Text(courency + ballance.toString(),
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  )),
            if (courency == 'ریال')
              Text(ballance.toString() + ' IRR',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  )),
            SizedBox(
              height: 41,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                children: [
                  if (wd)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('مجموع برداشت',
                                style: TextStyle(
                                    color: Colors.red[800],
                                    fontWeight: FontWeight.bold)),
                            Text(
                              withdraw.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('مجموع واریز',
                                style: TextStyle(
                                    color: Colors.green[800],
                                    fontWeight: FontWeight.bold)),
                            Text(
                              deposit.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
