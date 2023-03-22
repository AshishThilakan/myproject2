import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: MyLottie(),
  ));
}

class MyLottie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_dzevxknz.json'),
            Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_udijzyzg.json')
          ],
        ));
  }
}
