import 'package:flutter/material.dart';
import 'package:testnew/UI/HomePage/pages/HomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void delay() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B0D39),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("Assets/images/logo 1(1).png")
        ],
      ),
    );
  }
}
