// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/our_service.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget productFilter() {
      return Container(
        height: 24,
        width: double.infinity,
        margin: EdgeInsets.only(right: 20, left: 20, top: 10),
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
                  'Service',
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

    Widget serviceContent() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, bottom: 10, top: 30),
        child: Column(
          children: [
            Row(
              children: [
                CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
                CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
                CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
                CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
                CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
                CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        children: [
          productFilter(),
          serviceContent()
        ],
      ),
    );
  }
}