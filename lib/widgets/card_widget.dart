import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.buttonText,
      required this.image});
  final String title;
  final String subTitle;
  final String buttonText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Container(
        width: double.infinity,
        height: 175,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: Color(0xffFDF2F8),
            spreadRadius: 0,
            offset: Offset(8, 8),
          ),
        ]),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          elevation: 10,
          color: const Color(0xffFFE3DB),
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: "El Messiri",
                        color: Color(0xffDE7133),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        fontFamily: "El Messiri",
                        color: Color(0xffDE7133),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontFamily: "El Messiri",
                          color: Color(0xffDE7133),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 110,
                  height: 140,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: Color(0xffF8C6AB),
                  ),
                  child: Image.asset(
                    image,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
