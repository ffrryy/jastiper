import 'package:flutter/material.dart';
import 'package:jastiper/first_page.dart';
import 'package:jastiper/sign_in_page.dart';
import 'package:jastiper/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/firstPage': (context) => const FirstPage(),
        '/signInPage': (context) => const SignInPage(),
      },
    );
  }
}
