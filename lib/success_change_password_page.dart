import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';

class SuccessChangePasswordPage extends StatelessWidget {
  const SuccessChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ubah Password Berhasil',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 70,
        ),
        children: [
          Image.asset(
            'assets/images/img_success_change_password.png',
            // height: 164,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Cek Email Anda Sekarang !',
            style: orenTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Kami telah mengirimkan email konfirmasi ubah\npassword ke email joendoe@gmail.com. ',
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          CustomFilleddButtonOren(
            title: 'Masuk',
            onPressed: () {
              Navigator.pushNamed(context, '/changePassPage');
            },
          ),
        ],
      ),
    );
  }
}
