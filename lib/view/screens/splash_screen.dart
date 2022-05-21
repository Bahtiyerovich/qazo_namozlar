import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlar/core/constants/color_const.dart';
import 'package:qazonamozlar/view/home/view/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kGreen,
      body: _myBody(context),
    );
  }

  Container _myBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(child: SvgPicture.asset('assets/svg/splashIcon.svg')),
    );
  }
}
