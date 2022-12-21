import 'package:find_house/models/space.dart';
import 'package:find_house/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard(this.space);

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
                  space.imageUrl,
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
                          '${space.rating}/5',
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
              space.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text: '\$ ${space.price}',
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
              "${space.city}, ${space.country}",
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
