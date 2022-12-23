import 'package:find_house/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final String imgUrl;
  final bool isActive;

  BottomNavbar({super.key, required this.imgUrl,required this.isActive});

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imgUrl,width: 26,),
        Spacer(),
        isActive ? Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(1000))
          ),
        ) : Container()
      ],
    );
  }
}