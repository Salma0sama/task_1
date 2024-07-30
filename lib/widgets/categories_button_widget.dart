import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesButtons extends StatelessWidget {
  const CategoriesButtons(
      {super.key,
      required this.icon,
      required this.categoryName,
      this.backgroundColor,
      this.textColor});
  final String icon;
  final String categoryName;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(50, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: backgroundColor ?? const Color(0xffF5F5F5)),
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
          ),
          label: Text(
            categoryName,
            style: TextStyle(
              fontFamily: "El Messiri",
              color: textColor ?? const Color(0xff989898),
              fontSize: 15,
            ),
          )),
    );
  }
}
