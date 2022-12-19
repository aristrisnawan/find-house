import 'package:find_house/models/city.dart';
import 'package:find_house/theme.dart';
import 'package:find_house/widgets/city_card.dart';
import 'package:find_house/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: edge),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            // NOTE: TITLE/HEADER
            child: Text(
              "Explore Now",
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Mencari kosan yang cozy",
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // NOTE: POPULAR CITIES
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Populer Cities",
              style: reulerTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(City(
                      id: 1,
                      name: "Jakarta",
                      imageUrl: "assets/image/city1.png")),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 2,
                      name: "Bandung",
                      imageUrl: "assets/image/city2.png",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: "Malang",
                      imageUrl: "assets/image/city3.png")),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: "Surabaya",
                      imageUrl: "assets/image/city4.png")),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // NOTE: RECOMMENDED SPACE
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Recommended Space",
              style: reulerTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding:  EdgeInsets.only(left: edge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceCard()
              ],
            ),
          )
        ]),
      )),
    );
  }
}
