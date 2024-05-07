import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sarafi/utility/staticlogin.dart';

class FirstPageL extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FirstPageL> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            StaticLogin(), /////////asssssslllllliiiiiii
          ],
        ),
      ));
}
