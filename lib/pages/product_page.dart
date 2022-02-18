// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/our_product.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget productFilter() {
      return Container(
        height: 24,
        width: double.infinity,
        margin: EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 18,
              width: 10,
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
                  'Product',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium
                  ),
                ),
              ),
            ),
            Container(
              width: 15,
              height: 18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/filter_icon.png')
                )
              ),
            )
          ],
        ),
      );
    }

    Widget productContent() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, top: 80, bottom: 70),
        child: Column(
          children: [
            Row(
              children: [
                CustomOurProduct(
                  imageUrl: 'assets/injector.png', 
                  title: 'Injector', 
                  price: 'Rp 340.000'
                ),
                CustomOurProduct(
                  imageUrl: 'assets/intake.png', 
                  title: 'Intake Flanges', 
                  price: 'Rp 340.000'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurProduct(
                  imageUrl: 'assets/regulator.png', 
                  title: 'Regulator', 
                  price: 'Rp 500.000'
                ),
                CustomOurProduct(
                  imageUrl: 'assets/air_cleanner.png', 
                  title: 'Air Cleanner', 
                  price: 'Rp 150.000'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurProduct(
                  imageUrl: 'assets/spindle.png', 
                  title: 'Spindle Adaptor', 
                  price: 'Rp 450.000'
                ),
                CustomOurProduct(
                  imageUrl: 'assets/ban.png', 
                  title: 'Ban', 
                  price: 'Rp 320.000'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurProduct(
                  imageUrl: 'assets/injector.png', 
                  title: 'Injector', 
                  price: 'Rp 340.000'
                ),
                CustomOurProduct(
                  imageUrl: 'assets/injector.png', 
                  title: 'Injector', 
                  price: 'Rp 340.000'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurProduct(
                  imageUrl: 'assets/injector.png', 
                  title: 'Injector', 
                  price: 'Rp 340.000'
                ),
                CustomOurProduct(
                  imageUrl: 'assets/injector.png', 
                  title: 'Injector', 
                  price: 'Rp 340.000'
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            productFilter(),
            productContent()
          ],
        ),
      ),
    );
  }
}