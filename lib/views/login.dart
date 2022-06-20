import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Image.asset("assets/images/logo2.png"),
            AppForm.appTextFormField(
              label: "Lütfen ID bilginizi giriniz",
              hintText: "ör. 234566",
              controller: _idController,
            ),
            const SizedBox(height: 30),
            Center(
              child: AppButtons.appElevatedButton(
                name: "Giriş Yap",
                onPressed: showMessage,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showMessage() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.cream,
          actionsPadding: const EdgeInsets.only(bottom: 20),
          title: AppForm.appTextFormField(
            label: "Doğrulama kodunu giriniz",
            hintText: "ör. 234566",
            controller: _idController,
          ),
          content: const Text(
            "Kod gelmedi mi?  Tekrar gönder",
            style: TextStyle(
              fontFamily: "Monda",
              fontSize: 16,
              color: AppColors.darkBrown,
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Column(
              children: [
                const Text(
                  "138 sn kaldı",
                  style: TextStyle(
                    fontFamily: "Monda",
                    fontSize: 16,
                    color: AppColors.darkBrown,
                  ),
                ),
                const SizedBox(height: 20),
                AppButtons.appElevatedButton(
                  name: "Onayla",
                  // onPressed: () => Navigator.of(context).pop(),
                  onPressed: () => Navigator.pushNamed(context, "home_screen"),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
