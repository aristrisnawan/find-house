import 'package:find_house/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 110,
            width: 130,
            child: Stack(
              children: [
                Image.asset(
                  "assets/image/space1.png",
                  height: 110,
                  width: 130,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(30))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image/Icon_star_solid.png",
                          height: 22,
                          width: 22,
                        ),
                        Text(
                          "4/5",
                          style: whiteTextStyle.copyWith(fontSize: 13),
                        )
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kuratakeso Hott",
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text: "53",
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: " / month",
                        style: greyTextStyle.copyWith(fontSize: 16))
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Bandung, Germany",
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
