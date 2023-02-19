import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/widgets/food_widget.dart';

import '../../models/foods.dart';

class CartPage extends StatefulWidget {
  final List<Food> addedToCartPlants;
  const CartPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: widget.addedToCartPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/bake.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yapacaklar Listesi Boş',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.addedToCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return FoodWidget(
                              index: index, foodList: widget.addedToCartPlants);
                        }),
                  ),
                ],
              ),
            ),
    );
  }
}
