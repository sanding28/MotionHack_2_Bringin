// ignore_for_file: prefer_const_constructors

import 'package:bringin/cubit/pages_cubit.dart';
import 'package:bringin/pages/chat_page.dart';
import 'package:bringin/pages/home_page.dart';
import 'package:bringin/pages/product_page.dart';
import 'package:bringin/pages/profile_page.dart';
import 'package:bringin/pages/service_page.dart';
import 'package:bringin/shared/theme.dart';
import 'package:bringin/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ServicePage();
        case 2:
           return ProductPage();
        case 3:
           return ChatPage();
        case 4:
          return ProfilePage();
        default:
        return HomePage();
      }
    }

    Widget customNavbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            color: keyWhiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CustomNavbar(imageUrl: 'assets/home.png', title: '  Home', index: 0,),
              CustomNavbar(imageUrl: 'assets/service.png',title: 'Service', index: 1,),
              CustomNavbar(imageUrl: 'assets/product.png', title: 'Product', index: 2,),
              CustomNavbar(imageUrl: 'assets/chat.png',title: '   Chat', index: 3,),
              CustomNavbar(imageUrl: 'assets/profile.png', title: '  Profile', index: 4,),
            ],
          ),
        )
      );
    }
    return BlocBuilder<PagesCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              customNavbar()
            ],
          ),
        );
      },
    );
  }
}