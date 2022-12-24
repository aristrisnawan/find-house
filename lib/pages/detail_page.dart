import 'package:find_house/theme.dart';
import 'package:find_house/widgets/facility_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // NOTE : THUMBNAIL
            Image.asset(
              "assets/image/pic.png",
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/image/btn_back.png",
                        width: 40,
                      )),
                  Image.asset(
                    "assets/image/btn_wishlist.png",
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                // NOTE : TITLE HEADER
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: "\$ 52",
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text: " / month",
                                            style: greyTextStyle.copyWith(
                                                fontSize: 16))
                                      ]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/Icon_star_solid.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  "assets/image/Icon_star_solid.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  "assets/image/Icon_star_solid.png",
                                  width: 20,
                                ),
                                Image.asset(
                                  "assets/image/Icon_star_solid.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Image.asset(
                                  "assets/image/Icon_star_solid.png",
                                  width: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // NOTE : MAIN FASILITAS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          "Main Facilities",
                          style: reulerTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                                id: 1,
                                imageUrl: "assets/image/icon_kitchen.png",
                                name: "Kitchen",
                                count: 2),
                            FacilityItem(
                                id: 2,
                                imageUrl: "assets/image/icon_bedroom.png",
                                name: "Bedroom",
                                count: 3),
                            FacilityItem(
                                id: 3,
                                imageUrl: "assets/image/icon_cupboard.png",
                                name: "Big Lemari",
                                count: 3),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
