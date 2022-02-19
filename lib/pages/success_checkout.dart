// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class SuccessCheckOut extends StatelessWidget {
  const SuccessCheckOut({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget successCheckOutBanner() {
      return Container(
        height: 270,
        width: double.infinity,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/success_transaction2.png'))
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 88,
              width: 269,
              child: Column(
                children: [
                  Text(
                    'Transaction Success',
                    style: black2TextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "Yeay! your transaction has been successful.\nThank you for shopping with us!",
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget paymentMethod() {
      return Container(
        height: 90,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 121,
              child: Row(
                children: [
                  Text(
                    'Payment Method',
                    style: black2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only( top: 10),
              height: 41,
              child: Row(
                children: [
                  Container(
                    width: 159,
                    height: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 76,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/bank.png'))
                          ),
                        ),
                        Text(
                          'Bank BNI',
                          style: grey2TextStyle.copyWith(
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      );
    }

    Widget serviceType() {
      return Container(
        height: 200,
        width: 327,
        margin: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 121,
              child: Row(
                children: [
                  Text(
                    'Service',
                    style: black2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              height: 33,
              width: 125,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    width: 56,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: keyBlackColor
                      ),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text(
                        'Include\nInstallation',
                        style: black2TextStyle.copyWith(
                          fontSize: 8,
                          fontWeight: semiBold
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '4-5 Days',
                    style: grey2TextStyle.copyWith(
                      fontSize: 12
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 92,
              width: double.infinity,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transportation Type',
                    style: black2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold
                    ),
                  ),
                  SizedBox(height: 19,),
                  Text(
                    'Motorcycle',
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        padding: EdgeInsets.only(right: 24, left: 24),
        children: [
          successCheckOutBanner(),
          paymentMethod(),
          serviceType()
        ],
      ),
    );
  }
}