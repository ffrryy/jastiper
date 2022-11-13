import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img_logo.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              CustomFilleddButtonOren(
                title: 'Masuk',
                onPressed: () {
                  Navigator.pushNamed(context, '/signInPage');
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFilleddButtonWhite(
                title: 'Masuk sebagai Guest',
                onPressed: () {},
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      width: 131,
                      color: greyColor,
                    ),
                    Text(
                      'atau',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 131,
                      color: greyColor,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun ?',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    CustomTextButton(
                      title: ' Daftar Sekarang',
                      width: 122,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
