import 'package:besy_mobile_app/colors.dart';
import 'package:besy_mobile_app/widgets/app_form.dart';
import 'package:flutter/material.dart';
import 'package:besy_mobile_app/widgets/app_cards.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Search();
}

class _Search extends State<Search> {
  TextEditingController AnimalIdCheck = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "HAYVAN ARA",
          style: TextStyle(fontFamily: "Monda"),
        ),
        leading: ElevatedButton(
          onPressed: () {
            print("fakin geyler,birsürü geyler men");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.darkBrown)),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            AppForm.appTextFormField(
                label: "Hayvan ID bilgisi ile ara",
                hintText: "ör. 251323",
                controller: AnimalIdCheck),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.darkBrown)),
                  child: Text("Hayvan Ara",
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 16,
                          color: AppColors.cream))),
            ),
            SizedBox(height: 30),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    height: 3,
                    width: 350,
                    decoration: BoxDecoration(color: AppColors.darkBrown)),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: AppColors.cream),
                  child: Text("Son Arananlar",
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 16,
                          color: AppColors.darkBrown)),
                )
              ],
            ),
            SizedBox(height: 30),
            AppCards.animalCard(
                ID: 315269,
                age: 5,
                kg: 350,
                gender: "Erkek",
                type: "Büyükbaş",
                health: "SAĞLIKLI",
                vaccine: "AŞILI",
                image: "assets/images/pexels-tobi-457447.jpg"),
            SizedBox(height: 30),
            AppCards.animalCard(
                ID: 325269,
                age: 4,
                kg: 310,
                gender: "Dişi",
                type: "Büyükbaş",
                health: "SAĞLIKLI",
                vaccine: "AŞILI",
                image: "assets/images/pexels-tobi-457447.jpg"),
            SizedBox(height: 30),
            AppCards.animalCard(
                ID: 315269,
                age: 5,
                kg: 350,
                gender: "Erkek",
                type: "Büyükbaş",
                health: "SAĞLIKLI",
                vaccine: "AŞILI",
                image: "assets/images/pexels-tobi-457447.jpg")
          ],
        ),
      ),
    ));
  }
}
