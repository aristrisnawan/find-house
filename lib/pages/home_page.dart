import 'package:find_house/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore Now",style: blackTextStyle.copyWith(
                fontSize: 24
              ),),
              SizedBox(
                height: 2,
              ),
              Text("Mecari kosan yang cozy",style: greyTextStyle.copyWith(
                fontSize: 16
              ),),
              SizedBox(
                height: 30,
              ),
              Text("Populer Cities",style: blackTextStyle.copyWith(
                fontSize: 16
              ),)
            ],
          ),
        ),
      )),
    );
  }
}
