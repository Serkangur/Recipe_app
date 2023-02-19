import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import '../../models/foods.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  final int foodId;
  const DetailPage({Key? key, required this.foodId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Food> _plantList = Food.foodList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0XFFa1a4a3).withOpacity(0.3),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.blackColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0XFFa1a4a3).withOpacity(0.3),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isFavorited = toggleIsFavorated(
                                _plantList[widget.foodId].isFavorated);
                            _plantList[widget.foodId].isFavorated = isFavorited;
                          });
                        },
                        icon: Icon(
                          _plantList[widget.foodId].isFavorated == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Constants.blackColor.withOpacity(.6),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
              top: 70,
              left: 20,
              right: 20,
              child: Container(
                width: size.width * .8,
                height: size.height * .8,
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 0,
                      child: SizedBox(
                        height: 230,
                        child: Image.asset(_plantList[widget.foodId].imageURL),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 0,
                      child: SizedBox(
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PlantFeature(
                              title: 'Zorluk',
                              plantFeature: _plantList[widget.foodId].level,
                            ),
                            SizedBox(height: 5),
                            /* PlantFeature(
                              title: 'Humidity',
                              plantFeature:
                                  _plantList[widget.foodId].humidity.toString(),
                            ),*/
                            SizedBox(height: 5),
                            PlantFeature(
                              title: 'Sıcaklık',
                              plantFeature: _plantList[widget.foodId].degree,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 45, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0XFFE8D2A6).withOpacity(0.6),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _plantList[widget.foodId].foodName,
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.grey[800],
                              letterSpacing: 0.5,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            _plantList[widget.foodId].rating.toString(),
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.star,
                            size: 30.0,
                            color: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        _plantList[widget.foodId].decription,
                        style: GoogleFonts.robotoCondensed(
                            height: 1.6,
                            color: Colors.black87,
                            fontSize: 19,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    bool isSelected =
                        toggleIsSelected(_plantList[widget.foodId].isSelected);

                    _plantList[widget.foodId].isSelected = isSelected;
                  });
                },
                icon: Icon(
                  Icons.done_outlined,
                  color: _plantList[widget.foodId].isSelected == true
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color: _plantList[widget.foodId].isSelected == true
                    ? Colors.black87
                    : Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 5,
                    color: Constants.blackColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;
  const PlantFeature({
    Key? key,
    required this.plantFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        ),
        Text(
          plantFeature,
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
