// ignore_for_file: prefer_const_constructors

import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final String price;
  final Function() onPressed;

  const CustomButton({ 
    Key? key,
    required this.price,
    required this.title,
    required this.onPressed, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: 56,
          width: 250,
          margin: EdgeInsets.only(top: 290, right: 20, left: 20,),
          decoration: BoxDecoration(
            color: keyRedColor,
            borderRadius: BorderRadius.circular(19)
          ),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold
                  ),
                ),
                Text(
                  price,
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}