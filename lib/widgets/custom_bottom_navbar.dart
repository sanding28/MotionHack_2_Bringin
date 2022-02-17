// ignore_for_file: prefer_const_constructors
import 'package:bringin/cubit/pages_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {

  final String imageUrl;
  final String title;
  final bool isSelected;
  final int index;
  const CustomNavbar({
     Key? key, 
     required this.imageUrl, 
     required this.title,
     this.isSelected = false,
     required this.index,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<PagesCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 36,
            height: 11,
            decoration: BoxDecoration(
              color: keyWhiteColor,
            ),
            child: 
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 10
              ),
            ),
          )
        ],
      ),
    );
  }
}