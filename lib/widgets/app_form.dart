import 'package:flutter/material.dart';
import '../utils/form_validation.dart';
import '../colors.dart';

class AppForm {
  static Widget appTextFormField({
    required String label,
    required String hintText,
    required TextEditingController controller,
    bool isPassword = false,
    bool isEmail = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: "Monda",
            fontSize: 16,
            color: AppColors.darkBrown,
          ),
        ),
        const SizedBox(height: 2),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return label.toLowerCase() + " is required";
            } else if (isEmail) {
              FormValidation.validateEmail(value);
            } else if (isPassword) {
              FormValidation.validatePassword(value);
            } else {
              return null;
            }
            return null;
          },
          controller: controller,
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          obscureText: isPassword,
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
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(89, 42, 14, 0.4),
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.darkBrown,
          ),
        ),
      ],
    );
  }

  static Widget appSearchField({
    required String hint,
    required TextEditingController controller,
    required Function(String) onChanged,
  }) {
    return TextFormField(
      onChanged: (value) => {onChanged(value)},
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ThemeData.dark().primaryColor, width: 2),
        ),
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.search_rounded),
        hintText: hint,
      ),
    );
  }
}
