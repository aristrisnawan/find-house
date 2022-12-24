import 'package:flutter/material.dart';
import '../theme.dart';

class FacilityItem extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String name;
  final int count;

  const FacilityItem(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: count.toString(),
              style: purpleTextStyle.copyWith(fontSize: 14),
              children: [
                TextSpan(
                    text: " ${name}",
                    style: greyTextStyle.copyWith(fontSize: 14))
              ]),
        )
      ],
    );
  }
}
