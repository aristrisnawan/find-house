import 'package:find_house/pages/error_page.dart';
import 'package:find_house/theme.dart';
import 'package:find_house/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      // await launchUrl(url);
      Navigator.push(context, MaterialPageRoute(builder: ((context) => ErrorPage())));
      // throw 'Could not launch $url';
    }
  }
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
                      // ignore: prefer_const_constructors
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
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : PHOTOS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          "Photos",
                          style: reulerTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Container(
                          height: 88,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  "assets/image/photo1.png",
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  "assets/image/photo2.png",
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  "assets/image/photo3.png",
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    "Location",
                    style: reulerTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                // NOTE : LOCATION
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jln. Kappan Sukses No. 20 \nBandung",
                        style: reulerTextStyle.copyWith(
                            fontSize: 14, color: Color(0xff7A7E86)),
                      ),
                      InkWell(
                        onTap: () {
                          _launchUrl(Uri.parse(
                              'https://www.google.co.id/maps/place/Bandung,+Kota+Bandung,+Jawa+Barat/@-6.9032739,107.5729445,12z/data=!3m1!4b1!4m5!3m4!1s0x2e68e6398252477f:0x146a1f93d3e815b2!8m2!3d-6.9174639!4d107.6191228'));
                        },
                        child: Image.asset(
                          "assets/image/btn_map.png",
                          width: 40,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                // NOTE: BUTTON
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - (2 * edge),
                    child: ElevatedButton(
                      onPressed: () {
                        _launchUrl(Uri.parse('tel:+6282117295505'));
                      },
                      child: Text(
                        "Book Now",
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
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
          ],
        ),
      ),
    );
  }
}
