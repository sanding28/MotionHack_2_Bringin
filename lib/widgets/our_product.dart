// ignore_for_file: prefer_const_constructors

import 'package:bringin/pages/product_cart.dart';
import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomOurProduct extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String price;

  const CustomOurProduct({ 
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 160,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: keyWhiteColor,
        border: Border.all(
          width: 1
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 85,
            width: 90,
            margin: EdgeInsets.only(top : 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ProducrCart(),
                    ));
                  },
                  child: Container(
                    width: 34,
                    height: 32,
                    decoration: BoxDecoration(
                      color: keyRedColor,
                      borderRadius :BorderRadius.circular(17),
                    ),
                    child: Center(
                      child: Text(
                        '+', 
                        style: whiteTextStyle.copyWith(
                          fontSize: 28,
                          fontWeight: bold
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}