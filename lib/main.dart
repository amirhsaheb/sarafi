import 'package:flutter/material.dart';
import 'package:sarafi/pages/wallet_page.dart';
import 'package:sarafi/pages/firstpageL.dart';
import 'package:sarafi/pages/firstpageL.dart' as Login;
import 'package:sarafi/pages/wallet_page.dart' as index;
import 'package:sarafi/pages/singlecoin.dart' as singlecoin;
import 'package:sarafi/pages/empty.dart' as empty;

void main() {
  runApp(const Myapp());
}

final themeMode = ValueNotifier(1);

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/singlecoin',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/index': (context) => index.walletpage(),
            '/login': (context) => Login.FirstPageL(),
            '/singlecoin': (context) => singlecoin.Mysinglecoin(),
            '/empty': (context) => empty.DropdownButtonApp(),
            // When navigating to the "/second" route, build the SecondScreen widget.
            // '/login': (context) => const SecondScreen(),
          },
          debugShowCheckedModeBanner: false,
          theme: value == 1 ? ThemeData.dark() : ThemeData.light(),
          home: singlecoin.Mysinglecoin(),
        );
      },
      valueListenable: themeMode,
    );
  }
}
