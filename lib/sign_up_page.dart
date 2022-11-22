import 'package:flutter/material.dart';
import 'package:jastiper/theme.dart';
import 'package:jastiper/widgets/buttons.dart';
import 'package:jastiper/widgets/form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? value = false;
  String dropdownValue = 'Penitip';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomFormField(
                title: 'Nama Lengkap',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomFormField(
                title: 'Nomer Telepon',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomFormField(
                title: 'Email',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomFormField(
                title: 'Password',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomFormField(
                title: 'Ulangi Password',
              ),
              const SizedBox(
                height: 16,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                elevation: 3,
                items: <String>['Penitip', 'Jastip']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                  Text(
                    'Dengan mendaftar anda setuju terhadap\nkebijakan privasi kami',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomFilleddButtonOren(
                title: 'Register',
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, '/profile-success', (route) => false);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
