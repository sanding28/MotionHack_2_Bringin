// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/pages/main_pages.dart';
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

    Widget orderID() {
      return Container(
        height: 140,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID',
                    style: black2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold
                    ),
                  ),
                  Text(
                    'ODR-123912HNAD0',
                    style: black2TextStyle.copyWith(
                      fontSize :12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.only(right: 15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 68,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/injector.png')),
                          borderRadius: BorderRadius.circular(90)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Injector',
                              style: black2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              'Qty: 1',
                              style: grey2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Rp.340.000',
                        style: redTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget orderSummary() {
      return Container(
        height: 236,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 121,
              child: Row(
                children: [
                  Text(
                    'Order Summary',
                    style: grey2TextStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 196,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: keyStrokeCOlor
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16, left: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: grey2TextStyle.copyWith(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          'Rp 340.000',
                          style: black2TextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, left: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Installation Tax',
                          style: grey2TextStyle.copyWith(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          'Rp 150.000', 
                          style: black2TextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, left: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: grey2TextStyle.copyWith(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          'Rp 100.000',
                          style: black2TextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 55),
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: keyGrey2Color
                    ),
                    child: Container(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: black2TextStyle.copyWith(
                            fontSize: 12
                          ),
                        ),
                        Text(
                          'Rp490.000',
                          style: redTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold
                          ),
                        )
                      ],
                    ),
                  ),
                  )
                ],
              ),
            ),
          ]
        ),
      );
    }

    Widget payNow() {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => MainPage(),
          ));
        },
        child: Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.only(top: 34,),
          child: Column(
            children: [
              Container(
                height: 5,
                color: keyStrokeCOlor,
              ),
              Container(
                height: 41,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20, bottom: 30),
                decoration: BoxDecoration(
                  color: keyRedColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    'Continue Shopping',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold
                    ),
                  ),
                ),
              )
            ],
          ),
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
          serviceType(),
          orderID(),
          orderSummary(),
          payNow()
        ],
      ),
    );
  }
}