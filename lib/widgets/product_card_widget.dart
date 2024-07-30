import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    this.icon,
    this.color,
  });
  final String image;
  final String name;
  final String price;
  final String? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 180,
          height: 180,
          child: Image.asset(
            image,
          ),
        ),
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0),
                Colors.black.withOpacity(0.65),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
            top: 15,
            right: 15,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    icon ?? "icons/heart.png",
                    color: color ?? Colors.white,
                    width: 22,
                    height: 20,
                  ),
                ))),
        Positioned(
          bottom: 43,
          right: 15,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "El Messiri",
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 15,
          child: Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "El Messiri",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                "ج.م",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "El Messiri",
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
