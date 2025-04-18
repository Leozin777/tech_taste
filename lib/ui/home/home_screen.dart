import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/categories_data.dart';
import 'package:tech_taste/data/restaurants_data.dart';
import 'package:tech_taste/ui/_core/widgets/app_bar.dart';
import 'package:tech_taste/ui/home/widgets/category_widget.dart';
import 'package:tech_taste/ui/home/widgets/restaurant_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: getAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/logo.png",
                width: 147,
              ),
              Text("Boas-vindas!"),
              TextFormField(),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(CategoriesData.listCategoires.length, (index) {
                    return CategoryWidget(category: CategoriesData.listCategoires[index]);
                  }),
                ),
              ),
              Image.asset("assets/banners/banner_promo.png"),
              Text("Bem avaliados"),
              Column(
                spacing: 16,
                children: List.generate(
                  restaurantData.listRestaurant.length,
                  (index) => RestaurantWidget(
                    restaurant: restaurantData.listRestaurant[index],
                  ),
                ),
              ),
              SizedBox(
                height: 64,
              )
            ],
          ),
        ),
      ),
    );
  }
}
