import 'package:flutter/material.dart';
import 'package:task1/widgets/app_bar_widget.dart';
import 'package:task1/widgets/card_widget.dart';
import 'package:task1/widgets/categories_button_widget.dart';
import 'package:task1/widgets/product_card_widget.dart';
import 'package:task1/widgets/title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const AppBarWidget(name: "محمد احمد"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardWidget(
                title: "تابع معنا العروض",
                subTitle:
                    "نقدم لك عروض مميزه من خلال\n مطعمنا كى تستمتع بوجبتك المفضلة",
                buttonText: "اضغط للمزيد",
                image: "icons/pizza.png",
              ),
              TitleWidget(title: "الاقسام"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesButtons(
                    icon: "icons/burger-svgrepo-com.svg",
                    categoryName: "ساندوتشات",
                    backgroundColor: Color(0xffF05900),
                    textColor: Colors.white,
                  ),
                  CategoriesButtons(
                    icon: "icons/Group.svg",
                    categoryName: "كريبات",
                  ),
                  CategoriesButtons(
                    icon: "icons/Group (1).svg",
                    categoryName: "بيتزا",
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleWidget(title: "العروض"),
                    Text(
                      "عرض المزيد",
                      style: TextStyle(
                          fontFamily: "El Messiri",
                          fontSize: 14,
                          color: Color.fromARGB(255, 233, 185, 140),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      image: "icons/image 3.png",
                      name: "ساندوتشات",
                      price: "120.00",
                    ),
                    ProductCard(
                      icon: "icons/heart (1).png",
                      color: Color(0xffE7C088),
                      image: "icons/pizza1.png",
                      name: "بيتزا سوبرسوبريم",
                      price: "140.00",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    image: "icons/crepe1.png",
                    name: "كريب crepe",
                    price: "150.00",
                  ),
                  ProductCard(
                    image: "icons/image 3.png",
                    name: "ساندوتشات",
                    price: "120.00",
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
