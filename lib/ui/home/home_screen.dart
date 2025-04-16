import 'package:flutter/material.dart';
import 'package:tech_taste/data/categories_data.dart';
import 'package:tech_taste/ui/home/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      ),
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
