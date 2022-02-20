// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/custom_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget topImage() {
      return Container(
        height: 72,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 30),
        child: Row(children: [
          Container(
            height: 71,
            width: 71,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/profile_picture.png'))
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Yupik',
                style: black2TextStyle.copyWith(
                  fontSize: 20
                ),
              ),
              Text(
                'Yupik@gmail.com',
                style: grey2TextStyle.copyWith(
                  fontSize: 16
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(left: 20, top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/pen.png'))
                ),
              ),
            ],
          )
        ],),
      );
    }

    Widget profileContent() {
      return Container(
        height: 350,
        child: Column(
          children: [
            CustomProfileContent(
              imageurl: 'assets/cart.png', 
              title: 'cart'
            ),
            CustomProfileContent(
              imageurl: 'assets/myService.png', 
              title: 'My Service'
            ),
            CustomProfileContent(
              imageurl: 'assets/myBag.png', 
              title: 'My order'
            ),
            CustomProfileContent(
              imageurl: 'assets/history.png', 
              title: 'Historyr'
            ),
            CustomProfileContent(
              imageurl: 'assets/help.png', 
              title: 'Help'
            ),
          ],
        ),
      );
    }

    Widget submitButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(right: 24, left: 24, top: 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logout.png'))
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: Container(
                height: 49,
                width: 274,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: keyRedColor
                ),
                child: Center(
                  child: Text(
                    'Log Out',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        children: [
          topImage(),
          profileContent(),
          submitButton()
        ],
      ),
    );
  }
}