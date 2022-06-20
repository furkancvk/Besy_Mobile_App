import '../colors.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static Widget appDropdownButton({
    required String label,
    required List<DropdownMenuItem<dynamic>> items,
    required Function(dynamic) onChanged,
    required selectedValue,
    required icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
              fontFamily: "Monda",
              fontSize: 16,
              color: AppColors.darkBrown,
            )),
        DropdownButtonFormField(
            style: const TextStyle(
              fontFamily: "Monda",
              fontSize: 16,
              color: AppColors.darkBrown,
            ),
            dropdownColor: AppColors.cream,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(89, 42, 14, 0.15),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: AppColors.darkBrown,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: AppColors.darkBrown,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: Colors.red,
              ),
              contentPadding: const EdgeInsets.only(left: 15),
              hintStyle: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(89, 42, 14, 0.4),
              ),
            ),
            value: selectedValue,
            icon: icon,
            iconSize: 40,
            items: items,
            onChanged: onChanged),
      ],
    );
  }

  static Widget appTextButton({
    required String name,
    required Function() onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Text(name),
    );
  }

  static Widget appElevatedButton({
    required String name,
    required Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        backgroundColor: MaterialStateProperty.all(AppColors.darkBrown),
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontFamily: "Monda",
          fontSize: 16,
          color: AppColors.cream,
        ),
      ),
    );
  }

  static Widget appOutlinedButton({
    required String name,
    required Function() onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(name),
    );
  }

  static Widget appIconButton({
    required String name,
    required Icon icon,
    required Function() onPressed,
  }) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      tooltip: name,
    );
  }

  static Widget appToggleButtons({
    required List<bool> isSelected,
    required List<Widget> buttons,
    required Function(int) onPressed,
  }) {
    return ToggleButtons(
      isSelected: isSelected,
      children: buttons,
      onPressed: onPressed,
    );
  }

  static Widget appTextButtonIcon({
    required String name,
    required Icon icon,
    required Function() onPressed,
  }) {
    return TextButton.icon(
      icon: icon,
      onPressed: onPressed,
      label: Text(name),
    );
  }

  static Widget appElevatedButtonIcon({
    required String name,
    required Icon icon,
    required Function() onPressed,
  }) {
    return ElevatedButton.icon(
      icon: icon,
      onPressed: onPressed,
      label: Text(name),
    );
  }

  static Widget appOutlinedButtonIcon({
    required String name,
    required Icon icon,
    required Function() onPressed,
  }) {
    return OutlinedButton.icon(
      icon: icon,
      onPressed: onPressed,
      label: Text(name),
    );
  }
}
