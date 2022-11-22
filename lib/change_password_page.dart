import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';
import 'package:jastiper/widgets/form.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ganti Password Anda',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Image.asset(
            'assets/images/img_change_password.png',
            height: 164,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Masukan password baru anda !',
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
            title: 'Password',
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomFormField(
            title: 'Ulangi Password',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFilleddButtonOren(
            title: 'Konfirmasi Password Baru',
            onPressed: () {
              Navigator.pushNamed(context, '/successChangePassPage');
            },
          ),
        ],
      ),
    );
  }
}
