import 'package:flutter/material.dart';

import '../../../../core/utiles/colors.dart';
import '../../../../core/utiles/font_styles.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final String? initialValue;

  const SearchTextField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Color(AppColors.grayBorder), width: 1),
          ),
          child:TextFormField(
            initialValue: initialValue,
            textAlign: TextAlign.right,
            onChanged: onChanged,

            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: const Icon(Icons.search),
              hintStyle: AppStyles.styleRegular14(context: context),
              border: InputBorder.none, // Remove the inner border to avoid conflict with outer border
              contentPadding: const EdgeInsets.symmetric(vertical: 20), // Add vertical padding for better alignment
            ),
          ),
        ));
  }
}
