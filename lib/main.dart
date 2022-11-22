import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jastiper/change_password_page.dart';
import 'package:jastiper/firebase_options.dart';
import 'package:jastiper/first_page.dart';
import 'package:jastiper/forgot_pass_cek_email.dart';
import 'package:jastiper/forgot_password_page.dart';
import 'package:jastiper/sign_in_page.dart';
import 'package:jastiper/sign_up_page.dart';
import 'package:jastiper/splash_page.dart';
import 'package:jastiper/success_change_password_page.dart';
import 'package:jastiper/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightbackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightbackgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/firstPage': (context) => const FirstPage(),
        '/signInPage': (context) => const SignInPage(),
        '/signUpPage': (context) => const SignUpPage(),
        '/forgotPasswordPage': (context) => const ForgotPasswordPage(),
        '/forgotCekEmailPage': (context) => const ForgotPassCekEmailPage(),
        '/changePassPage': (context) => const ChangePasswordPage(),
        '/successChangePassPage': (context) =>
            const SuccessChangePasswordPage(),
      },
    );
  }
}
