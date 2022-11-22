import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';
import 'package:jastiper/widgets/form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Masuk',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(
              22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: Email Input
                const CustomFormField(
                  title: 'Email',
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: Password Input
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomFilleddButtonOren(
                  title: 'Sign In',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          CustomTextButton(
            title: 'Lupa Password ?',
            width: 165,
            onPressed: () {
              Navigator.pushNamed(context, '/forgotPasswordPage');
            },
          ),
        ],
      ),
    );
  }
}
