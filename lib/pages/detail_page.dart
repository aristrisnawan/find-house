import 'dart:ffi';

import 'package:find_house/models/space.dart';
import 'package:find_house/pages/error_page.dart';
import 'package:find_house/theme.dart';
import 'package:find_house/widgets/facility_item.dart';
import 'package:find_house/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Space space;

  const DetailPage(this.space);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(Uri url) async {
      if (!await launchUrl(url)) {
        // await launchUrl(url);
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => ErrorPage())));
        // throw 'Could not launch $url';
      }
    }

    // NOTE : Alert Dialog
    Future<void> showConfirmation() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text("Konfirmasi"),
                content:
                    Text("Apakah kamu ingin menghubungi pemilik kos?"),
                actions: [
                  TextButton(
                      onPressed: (() => Navigator.pop(context, 'Tidak')),
                      child: Text("Tidak")),
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context, 'Tidak');
                        _launchUrl(Uri.parse('tel:${widget.space.phone}'));
                      }),
                      child: Text("Ya"))
                ],
              ));
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // NOTE : THUMBNAIL
            Image.network(
              widget.space.imageUrl,
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
                                  widget.space.name,
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: "\$ ${widget.space.price}",
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
                              children: [1, 2, 3, 4, 5].map((item) {
                                return Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child:
                                        RatingItem(item, widget.space.rating));
                              }).toList(),
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
                                count: widget.space.numberOfKitchen),
                            FacilityItem(
                                id: 2,
                                imageUrl: "assets/image/icon_bedroom.png",
                                name: "Bedroom",
                                count: widget.space.numberOfBedroom),
                            FacilityItem(
                                id: 3,
                                imageUrl: "assets/image/icon_cupboard.png",
                                name: "Big Lemari",
                                count: widget.space.numberOfCupboards),
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
                              children: widget.space.photos.map((item) {
                                int index = 0;
                                print(item);
                                return ClipRRect(
                                  child: Container(
                                    height: 110,
                                    width: 88,
                                    margin: EdgeInsets.only(left: edge),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.network(
                                        item,
                                        width: 110,
                                        height: 88,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList()),
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
                        "${widget.space.address} \n${widget.space.city}",
                        style: reulerTextStyle.copyWith(
                            fontSize: 14, color: Color(0xff7A7E86)),
                      ),
                      InkWell(
                        onTap: () {
                          _launchUrl(Uri.parse(widget.space.mapUrl));
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
                // NOTE: BUTTON BOOK NOW
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - (2 * edge),
                    child: ElevatedButton(
                      onPressed: () => showConfirmation(),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Image.asset(
                      isChecked
                          ? "assets/image/btn_wishlist_orange.png"
                          : "assets/image/btn_wishlist.png",
                      width: 40,
                    ),
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
