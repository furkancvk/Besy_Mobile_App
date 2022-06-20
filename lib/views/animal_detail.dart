import 'package:besy_mobile_app/widgets/app_buttons.dart';
import 'package:besy_mobile_app/widgets/app_form.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class AnimalDetail extends StatefulWidget {
  const AnimalDetail({Key? key}) : super(key: key);

  @override
  State<AnimalDetail> createState() => _AnimalDetailState();
}

class _AnimalDetailState extends State<AnimalDetail> {
  TextEditingController idController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController massController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  var _selectedValueHealth;
  var _selectedValueVac;
  var _selectedValueType;

  List<DropdownMenuItem<String>> typeItems = [
    const DropdownMenuItem(child: Text("Büyükbaş"), value: "Büyükbaş"),
    const DropdownMenuItem(child: Text("Küçükbaş"), value: "Küçükbaş")
  ];
  List<DropdownMenuItem<String>> vacItems = [
    const DropdownMenuItem(child: const Text("Aşılı"), value: "Aşılı"),
    const DropdownMenuItem(child: const Text("Aşısız"), value: "Aşısız"),
  ];
  List<DropdownMenuItem<String>> healthItems = [
    const DropdownMenuItem(child: const Text("Sağlıklı"), value: "Sağlıklı"),
    const DropdownMenuItem(
        child: const Text("Hasta/Sağlıksız"), value: "Hasta/Sağlıksız"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back, color: AppColors.cream),
              title: const Text('HAYVAN PROFİLİ',
                  style: TextStyle(
                    fontFamily: 'Monda',
                    color: AppColors.cream,
                  )),
              actions: [
                IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "edit_animal_screen"),
                    icon: const Icon(Icons.edit, color: AppColors.cream)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: AppColors.cream)),
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.all(30),
              children: [
                ///image kısmı
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.darkBrown,
                        width: 2,
                      )),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                        'https://images.pexels.com/photos/457447/pexels-photo-457447.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),

                /// image kısmı bitişi
                const SizedBox(
                  height: 30,
                ),
                AppForm.appTextFormField(
                    label: 'ID',
                    hintText: 'hintText',
                    controller: idController),
                const SizedBox(
                  height: 30,
                ),
                AppForm.appTextFormField(
                    label: 'CİNSİYET',
                    hintText: 'hintText',
                    controller: sexController),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: AppButtons.appDropdownButton(
                            label: 'TÜR',
                            items: typeItems,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedValueType = newValue!;
                              });
                            },
                            selectedValue: _selectedValueType,
                            icon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.darkBrown,
                            ))),
                    const SizedBox(width: 18),
                    Expanded(
                      flex: 1,
                      child: AppForm.appTextFormField(
                          label: 'YAŞ',
                          hintText: '4',
                          controller: ageController),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                        child: AppForm.appTextFormField(
                            label: 'KİLO',
                            hintText: '356',
                            controller: weightController))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                AppButtons.appDropdownButton(
                    label: 'AŞI DURUMU',
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.darkBrown,
                    ),
                    items: vacItems,
                    selectedValue: _selectedValueVac,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedValueVac = newValue!;
                      });
                    }),
                const SizedBox(
                  height: 30,
                ),
                AppButtons.appDropdownButton(
                    label: 'SAĞLIK DURUMU',
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.darkBrown,
                    ),
                    items: healthItems,
                    selectedValue: _selectedValueHealth,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedValueHealth = newValue!;
                      });
                    }),
              ],
            )));
  }
}
