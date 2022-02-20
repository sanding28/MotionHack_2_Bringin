// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomProfileContent extends StatelessWidget {

  final String imageurl;
  final String title;

  const CustomProfileContent({ 
    Key? key,
    required this.imageurl,
    required this.title 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            height: 1,
            color: keyGrey2Color,
          ),
          Container(
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(right: 24, left: 24, top: 19),
            child: Row(children: [
              Container(
                height: 24,
                width: 24,
                margin: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageurl))
                ),
              ),
              Text(
                title,
                style: black2TextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium
                ),
              )
            ],),
          )
        ],
      ),
    );
  }
}