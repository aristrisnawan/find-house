import 'package:find_house/models/tips.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  const TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(tips.imageUrl, width: 80)),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updated}',
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,size: 24,color: greyColor,))
      ],
    );
  }
}
