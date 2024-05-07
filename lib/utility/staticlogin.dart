import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StaticLogin extends StatelessWidget {
  StaticLogin({super.key});
  final _formKey = GlobalKey<FormState>();
  final _formlog = GlobalKey<FormState>();
  final _controller = PageController();
  final int _countcontex = 3;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //pages banner
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: BorderSide.strokeAlignOutside,
                  blurStyle: BlurStyle.normal,
                  color: Color.fromARGB(100, 47, 255, 0))
            ],
            borderRadius: BorderRadius.all(Radius.circular(80)),
            color: Color.fromARGB(100, 47, 255, 0),
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 3, 92, 165),
                        Color.fromARGB(255, 8, 55, 88)
                      ]),
                ),
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icons/hand.png',
                    ),
                    Text(
                      '!هدف رضایت شماست',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 3, 92, 165),
                        Color.fromARGB(255, 8, 55, 88)
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icons/change.png',
                    ),
                    Text(
                      'واریز و برداشت آسان ',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 3, 92, 165),
                        Color.fromARGB(255, 8, 55, 88)
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icons/hand.png',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ایمن',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        Text(
                          'سرمایه گذاریه',
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 0,
      ),
      SmoothPageIndicator(
        controller: _controller,
        count: _countcontex,
        effect: CustomizableEffect(
            // spacing: 2,
            activeDotDecoration:
                DotDecoration(height: 5, width: 20, color: Colors.blueAccent),
            dotDecoration: DotDecoration(height: 3, color: Colors.grey)),
      ),

      Text(
        'به کی سی خوش آمدید',
        style: TextStyle(
            // color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      Text(
        'برای استفاده از خدمات کی سی لطفا ثبت نام کنید',
        style: TextStyle(
            // color:  Colors.blue,
            fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),

      // SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          children: [
            //sabtenam
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await showDialog<void>(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: Stack(
                                  clipBehavior: Clip.none,
                                  children: <Widget>[
                                    Positioned(
                                      right: -30,
                                      top: -30,
                                      child: InkResponse(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          child: Icon(Icons.close),
                                        ),
                                      ),
                                    ),
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                  hintText: 'نام',
                                                  fillColor: Colors.amber,
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.red,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              23))),
                                              style: TextStyle(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                hintText: 'نام خانوادگی',
                                                fillColor: Colors.amber,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.red,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(23),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                  hintText: 'ایمیل',
                                                  fillColor: Colors.amber,
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.red),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              23))),
                                              style: TextStyle(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: TextFormField(
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                  hintText: 'شماره همراه',
                                                  fillColor: Colors.amber,
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.red),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              23))),
                                              style: TextStyle(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.green)),
                                              child:
                                                  const Text('ثبت نام سطح یک'),
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  _formKey.currentState!.save();
                                                }
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,

                      // shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 50),
                      //////// HERE
                    ),
                    child: Text('ثبت نام',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )))
              ],
            ),

            //ghablan sabt kardam
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () async {
                    await showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: Stack(
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Positioned(
                                    right: -30,
                                    top: -30,
                                    child: InkResponse(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        child: Icon(Icons.close),
                                      ),
                                    ),
                                  ),
                                  Form(
                                    key: _formlog,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: TextFormField(
                                            textAlign: TextAlign.end,
                                            decoration: InputDecoration(
                                                hintText: 'موبایل / ایمیل',
                                                fillColor: Colors.amber,
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.red,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            23))),
                                            style: TextStyle(),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: TextFormField(
                                            textAlign: TextAlign.end,
                                            decoration: InputDecoration(
                                              hintText: 'رمز عبور',
                                              fillColor: Colors.amber,
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Text('فراموشی رمز'),
                                                )),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.green)),
                                            child: const Text('ورود'),
                                            onPressed: () {
                                              if (_formlog.currentState!
                                                  .validate()) {
                                                _formlog.currentState!.save();
                                              }
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ));
                  },
                  child: TextButton(
                      onPressed: null,
                      child: Text('قبلا ثبت نام کردم',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 18,
                          ))),
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}
