import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مرحبا",
                style: TextStyle(
                  fontFamily: "El Messiri",
                  color: Color(0xffE9B483),
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: "El Messiri",
                  color: Color(0xffDA5613),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              "icons/cart 02.svg",
              height: 30,
              width: 30,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              "icons/notification 01.svg",
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
