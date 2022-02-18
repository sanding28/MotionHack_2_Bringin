// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_label

import 'package:bringin/pages/service_cart.dart';
import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProducrCart extends StatelessWidget {
  const ProducrCart({ Key? key }) : super(key: key);

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
                  'Cart',
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

    Widget cartPage() {
      return Container(
        height: 25,
        width: double.infinity,
        margin: EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product',
                  style: black2TextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12
                  ),
                ),
                Container(
                  height: 2,
                  width: 152,
                  decoration: BoxDecoration(
                    color: keyBlack2Color,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ServiceCart(),
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Service',
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 152,
                    decoration: BoxDecoration(
                      color: keyGreyColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cartProductContent() {
      // bool value = false;
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        color: keyWhiteColor,
        child: Column(
          children: [
            ListTile(
              trailing: Container(
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    'X',
                    style: greyTextStyle.copyWith(
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              leading: Checkbox(value: false, onChanged: (value) {},),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Injector',
                      style: black2TextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: reguler
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Rp 340.000',
                      style: black2TextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 20,),
            ListTile(
              trailing: Container(
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    'X',
                    style: greyTextStyle.copyWith(
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              leading: Checkbox(value: false, onChanged: (value) {},),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Air Cleanner',
                      style: black2TextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: reguler
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Rp150.000',
                      style: black2TextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      );
    }

    Widget submitButton() {
      return CustomButton(
        price: 'Rp 150.000', 
        title: 'Go To Checkout',
        onPressed: () {
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ServiceCart(),
            ));
          };
        },
      );
    }

    return Scaffold(
      backgroundColor : keyWhiteColor,
      body: ListView(
        children: [
          cartTitle(),
          cartPage(),
          cartProductContent(),
          submitButton()
        ],
      ),
    );
  }
}