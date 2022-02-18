// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CheckoutProduct1 extends StatelessWidget {
  const CheckoutProduct1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget cartTitle() {
      return Container(
        height: 24,
        width: double.infinity,
        margin: EdgeInsets.only(right: 20, left: 20, top: 10),
        child: Row(
          children: [
            Container(
              height: 18,
              width: 10,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/back_arrow.png')
                )
              ),
            ),
            Container(
              height: 20,
              width: 255,
              child: Center(
                child: Text(
                  'Checkout',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        children: [
          cartTitle(),
        ],
      ),
    );
  }
}