import 'package:besy_mobile_app/colors.dart';
import 'package:flutter/material.dart';

class AppCards {
  static Widget animalCard({
    required int ID,
    required int age,
    required int kg,
    required String gender,
    required String type,
    required String health,
    required String vaccine,
    required String image,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          color: Color.fromRGBO(89, 42, 14, 0.15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: AppColors.darkBrown),
              width: 130,
              height: 130,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ID: " + ID.toString(),
                  style: TextStyle(
                      fontFamily: "Monda",
                      fontSize: 16,
                      color: AppColors.darkBrown),
                ),
                Row(
                  children: [
                    Text(
                      gender,
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    ),
                    Text(
                      "      " + type,
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      age.toString() + " yaş",
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    ),
                    Text(
                      "       " + kg.toString() + " kg",
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    )
                  ],
                ),
                SizedBox(height: 11),
                Row(
                  children: [
                    Icon(Icons.done),
                    Text(
                      vaccine,
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.done),
                    Text(
                      health,
                      style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 14,
                          color: AppColors.darkBrown),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget infoCard({
    required int count,
    required String type,
  }) {
    return GestureDetector(
      onTap: () => {
        // Navigator.pushNamed(context, 'movie_detail_screen',
        // arguments: {'movie': movie}),
      },
      child: Card(
        elevation: 0,
        color: const Color.fromRGBO(89, 42, 14, 0.15),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                count.toString(),
                style: const TextStyle(
                  fontFamily: "Monda",
                  fontSize: 20,
                  color: AppColors.darkBrown,
                ),
              ),
              const Text(
                "tane",
                style: TextStyle(
                  fontFamily: "Monda",
                  fontSize: 20,
                  color: AppColors.darkBrown,
                ),
              ),
              Text(
                type.toUpperCase(),
                style: const TextStyle(
                  fontFamily: "Monda",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBrown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
