import 'package:find_house/models/city.dart';
import 'package:find_house/models/space.dart';
import 'package:find_house/models/tips.dart';
import 'package:find_house/theme.dart';
import 'package:find_house/widgets/bottom_navbar_item.dart';
import 'package:find_house/widgets/city_card.dart';
import 'package:find_house/widgets/space_card.dart';
import 'package:find_house/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
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
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  "Recommended Space",
                  style: reulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpaceCard(Space(
                        id: 1,
                        imageUrl: "assets/image/space1.png",
                        name: "Kuretakeso Hott",
                        price: 53,
                        rating: 4,
                        city: "Bandung",
                        country: "Germany")),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 2,
                        imageUrl: "assets/image/space2.png",
                        name: "Roemah Nenek",
                        price: 11,
                        rating: 5,
                        city: "Seattle",
                        country: "Bogor")),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 3,
                        imageUrl: "assets/image/space3.png",
                        name: "Darling How",
                        price: 20,
                        rating: 3,
                        city: "Jakarta",
                        country: "Indonesia"))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //NOTE : TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Tips & Guuidance",
                  style: reulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: [
                      TipsCard(Tips(
                          id: 1,
                          imageUrl: "assets/image/tips1.png",
                          title: "City Guidelines",
                          updated: "20 Apr")),
                      SizedBox(
                        height: 20,
                      ),
                      TipsCard(Tips(
                          id: 2,
                          imageUrl: "assets/image/tips2.png",
                          title: "Jakarta Fairship",
                          updated: "11 Dec")),
                    ],
                  )),
              SizedBox(
                height: 90,
              ),
            ]),
          )),
          floatingActionButton: Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(horizontal: edge),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(23)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbar(
                      imgUrl: 'assets/image/Icon_home_solid.png',
                      isActive: true,
                    ),
                    BottomNavbar(
                      imgUrl: 'assets/image/Icon_mail_solid.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imgUrl: 'assets/image/Icon_card_solid.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imgUrl: 'assets/image/Icon_love_solid.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
