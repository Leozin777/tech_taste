import 'package:flutter/material.dart';
import 'package:tech_taste/models/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Image.asset(
          "assets/${restaurant.imagePath}",
          width: 72,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              children: List.generate(
                restaurant.stars.toInt(),
                (index) => Image.asset(
                  "assets/others/star.png",
                  width: 16,
                ),
              ),
            ),
            Text("${restaurant.distance}Km"),
          ],
        )
      ],
    );
  }
}
