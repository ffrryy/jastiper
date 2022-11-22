import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';
import 'package:jastiper/widgets/form.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lupa Password',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Image.asset(
            'assets/images/img_forgot_password.png',
            height: 164,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Masukan email anda ! Anda akan memperoleh\nnotifikasi',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomFormField(
            title: 'Email',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFilleddButtonOren(
            title: 'Masuk',
            onPressed: () {
              Navigator.pushNamed(context, '/forgotCekEmailPage');
            },
          ),
        ],
      ),
    );
  }
}
