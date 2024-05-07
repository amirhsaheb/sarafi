import 'package:flutter/material.dart';
import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:d_chart/d_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class MyCardWalletC extends StatelessWidget {
  const MyCardWalletC(
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
    List<_SalesData> data = [
      _SalesData('Jan', 10),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40),
      _SalesData('Jan', 10),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40)
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).hoverColor,
              height: 155,
              width: MediaQuery.of(context).size.width - 50,
              child: SfCircularChart(
                legend: const Legend(isVisible: true),
                palette: const [
                  Colors.red,
                  Colors.blue,
                  Colors.amber,
                  Colors.purple,
                  Colors.pink,
                  Colors.orange,
                  Colors.cyan,
                  Colors.teal,
                  Colors.green,
                  Colors.deepOrangeAccent,
                  Colors.grey,
                  Colors.lightBlue,
                ],
                title: const ChartTitle(
                    alignment: ChartAlignment.center,
                    textStyle: TextStyle(fontFamily: 'sansir')),
                series: [
                  DoughnutSeries<_SalesData, String>(
                    // legendIconType: LegendIconType.circle,
                    explodeIndex: 1,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    name: 'موجودی',
                    dataLabelMapper: (_SalesData data, _) => '',
                    dataSource: data,
                    xValueMapper: (_SalesData data, _) => data.year,
                    yValueMapper: (_SalesData data, _) => data.sales,
                    radius: '100%',
                  )
                ],
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('100,000'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('مجموع موجودی دلاری'),
                      ],
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
