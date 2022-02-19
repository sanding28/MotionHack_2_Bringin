// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/pages/success_checkout.dart';
import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CheckoutProduct1 extends StatefulWidget {

  const CheckoutProduct1({ Key? key }) : super(key: key);

  @override
  State<CheckoutProduct1> createState() => _CheckoutProduct1State();
}

class _CheckoutProduct1State extends State<CheckoutProduct1> {
  int grupValue = 0;
  int grupValueSevice = 0;
  @override
  Widget build(BuildContext context) {

    Widget cartTitle() {
      return Container(
        height: 24,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 10),
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

    Widget shippingText() {
      return Container(
        height: 20,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 20),
        child: Row(
          children: [
            Text(
              'Shipping address',
              style: grey2TextStyle,
            ),
          ],
        ),
      );
    }

    Widget adrressContainer() {
      return Container(
        height: 107,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: keyStrokeCOlor
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 15,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 15,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 13,
                              width: 11,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/location.png'))
                              ),
                            ),
                            Text('Yupik', style: black2TextStyle.copyWith(fontSize: 12, fontWeight: bold),)
                          ],
                        )
                      ),
                      Container(
                        width: 46,
                        height: 17,
                        child: Text(
                          'Change', 
                          style: redTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 9),
              height: 49,
              width: 278,
              child: Text(
                "Jl. Banyuning, Gang Walet Merah No.8 \nBanyuning Barat, Singaraja\nBali",
                style: grey2TextStyle.copyWith(
                  fontSize: 12
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget paymentMethod() {
      return Container(
        height: 78,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 121,
              child: Row(
                children: [
                  Text(
                    'Payment Method',
                    style: grey2TextStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only( top: 10),
              height: 41,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 159,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
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
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 46,
                    height: 17,
                    child: Text(
                      'Change', 
                      style: redTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold
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

    Widget serviceType() {
      return Container(
        height: 97,
        margin: EdgeInsets.only(right: 24, left: 24, top: 20),
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
                    style: grey2TextStyle,
                  ),
                ],
              ),
            ),
            Container(
              height: 62,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        grupValueSevice = 0;
                      });
                    },
                    child: Container(
                      height: 62,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (grupValueSevice == 0) ? keyBlack2Color: keyStrokeCOlor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Include Installation',
                              style: black2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '4-5 Days',
                              style: grey2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                     onTap: () {
                      setState(() {
                        grupValueSevice = 1;
                      });
                    },
                    child: Container(
                      height: 62,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (grupValueSevice == 1) ? keyBlack2Color: keyStrokeCOlor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'No Include Installation',
                              style: black2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '2-3 Days',
                              style: grey2TextStyle.copyWith(
                                fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget transportationType() {
      return Container(
        height: 150,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 24, left: 24),
              height: 20,
              width: 123,
              child: Row(
                children: [
                  Text(
                    'Transportation Type',
                    style: grey2TextStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 24, left: 24),
              height: 39,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: keyStrokeCOlor
                )
              ),
              child: Container(
                margin: EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Motorcycle',
                      style: grey2TextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Radio<int>(
                      value: 0, 
                      groupValue: grupValue, 
                      onChanged: (value){
                        setState(() {
                          grupValue = value!;
                        });
                       }
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 24, left: 24),
              height: 39,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: keyStrokeCOlor
                )
              ),
              child: Container(
                margin: EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Car',
                      style: grey2TextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Radio<int>(
                      value: 1, 
                      groupValue: grupValue, 
                      onChanged: (value){
                        setState(() {
                          grupValue = value!;
                        });
                       }
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 5,
              color: keyStrokeCOlor,
            )
          ]
        )
      );
    }

    Widget orderSummary() {
      return Container(
        height: 236,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 20,),
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
                          (grupValueSevice == 0) ? 'Rp 34.000' : 'Rp 0', 
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
                          (grupValueSevice == 0) ? 'Rp 474.000' : 'Rp 440.00',
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
            builder: (context) => SuccessCheckOut(),
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
                margin: EdgeInsets.only(top: 20, right: 24, left: 24, bottom: 30),
                decoration: BoxDecoration(
                  color: keyRedColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    'Pay Now',
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
        children: [
          cartTitle(),
          shippingText(),
          adrressContainer(),
          paymentMethod(),
          serviceType(),
          transportationType(),
          orderSummary(),
          payNow(),
        ],
      ),
    );
  }
}