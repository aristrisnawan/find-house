import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem(this.index, this.rating);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? "assets/image/Icon_star_solid.png"
          : "assets/image/Icon_star_solid_grey.png",
      width: 20,
    );
  }
}
