// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/our_product.dart';
import 'package:bringin/widgets/our_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchColumn() {
      return Container(
        width: 328,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kSearchColor
        ),
        margin: EdgeInsets.only(top: 40, right: 10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: keyBlackColor,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 13),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kSearchColor),
                  borderRadius: BorderRadius.circular(15)),
              hintText: 'Cari Service & Product',
              hintStyle: TextStyle(fontWeight: semiBold)),
        ),
      );
    }

    Widget bannerSparepart(){
      return Container(
        width: double.infinity,
        height: 148,
        margin: EdgeInsets.only(right: 10, top: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sparepart.png'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      );
    }

    Widget ourServiceText() {
      return Container(
        width: double.infinity,
        height: 20,
        margin: EdgeInsets.only(top: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            'Our Service',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold
            ),
          ),
          Text(
            'See All', 
            style: redTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold
            ),
          )
        ],
        ),
      );
    }

    Widget ourService() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
              CustomOurService(title: 'Service Tune Up', price: 'Rp 100.00',),
              CustomOurService(title: 'Performace Builds', price: 'Rp 540.00',),
            ],
          ),
        ),
      );
    }

    Widget ourProductText(){
      return Container(
        width: double.infinity,
        height: 20,
        margin: EdgeInsets.only(top: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            'Our Product',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold
            ),
          ),
          Text(
            'See All', 
            style: redTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold
            ),
          )
        ],
        ),
      );
    }

    Widget ourProduct() {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        height: 170,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomOurProduct(
                imageUrl: 'assets/injector.png', 
                title: 'Injector', 
                price: 'Rp 340.000'
              ),
              CustomOurProduct(
                imageUrl: 'assets/air_cleanner.png', 
                title: 'Air Cleanner', 
                price: 'Rp 150.000'
              ),
              CustomOurProduct(
                imageUrl: 'assets/ban.png', 
                title: 'Ban', 
                price: 'Rp 320.000'
              ),
              CustomOurProduct(
                imageUrl: 'assets/regulator.png', 
                title: 'Regulator', 
                price: 'Rp 500.000'
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        padding: EdgeInsets.only(left: 10),
        children: [
          searchColumn(),
          bannerSparepart(),
          ourServiceText(),
          ourService(),
          ourProductText(),
          ourProduct()
        ],
      ),
    );
  }
}