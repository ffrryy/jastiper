import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/firstPage', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Container(
          width: 160,
          height: 190,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
