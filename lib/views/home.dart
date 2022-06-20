import '../widgets/app_buttons.dart';
import '../widgets/app_cards.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                radius: 34,
                backgroundColor: AppColors.darkBrown,
              ),
              title: const Text(
                "Hoş geldin,",
                style: TextStyle(
                  fontFamily: "Mitr",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBrown,
                ),
              ),
              subtitle: const Text(
                "Ömer Faruk",
                style: TextStyle(
                  fontFamily: "Monda",
                  fontSize: 20,
                  color: AppColors.darkBrown,
                ),
              ),
              trailing: AppButtons.appIconButton(
                name: "options",
                icon: const Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors.darkBrown,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Sürü adet bilgisi",
              style: TextStyle(
                fontFamily: "Mitr",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBrown,
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              // to disable GridView's scrolling
              shrinkWrap: true,
              // You won't see infinite size error
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                AppCards.infoCard(count: 150, type: "BÜYÜKBAŞ"),
                AppCards.infoCard(count: 433, type: "KÜÇÜKBAŞ"),
                AppCards.infoCard(count: 97, type: "KURBANLIK"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: AppButtons.appElevatedButton(
                        name: "Hayvan Ekle",
                        onPressed: () =>
                            Navigator.pushNamed(context, "add_animal_screen"),
                      ),
                    ),
                    const Text(
                      "veya",
                      style: TextStyle(
                        fontFamily: "Monda",
                        fontSize: 20,
                        color: AppColors.darkBrown,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: AppButtons.appElevatedButton(
                        name: "Hayvan Ara",
                        onPressed: () =>
                            Navigator.pushNamed(context, "search_screen"),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Sürü sağlık bilgisi",
              style: TextStyle(
                fontFamily: "Mitr",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBrown,
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              // to disable GridView's scrolling
              shrinkWrap: true,
              // You won't see infinite size error
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                AppCards.infoCard(count: 11, type: "AŞISIZ"),
                AppCards.infoCard(count: 4, type: "HASTALIKLI"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
