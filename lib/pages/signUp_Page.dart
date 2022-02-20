// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topPage() {
      return Container(
          margin: EdgeInsets.only(top: 43.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: black2TextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Create account now. It’s a free",
                style: black2TextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 12
                ),
              ),
            ],
          ));
    }

    Widget inputSec() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                )
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: keyGrey2Color,
                decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                )
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: keyGrey2Color,
                decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      Widget phoneNumberInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phone Number",
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                )
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: keyGrey2Color,
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      Widget passwrodInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                )
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: keyGrey2Color,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                )),
                obscureText: true,
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: keyWhiteColor,
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            phoneNumberInput(),
            passwrodInput()
          ],
        ),
      );
    }

    Widget submitButton() {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
            },
            child: Container(
              margin: EdgeInsets.only(top: 67),
              height: 50,
              width: 285,
              decoration: BoxDecoration(
                color: keyRedColor,
                borderRadius: BorderRadius.circular(19)
              ),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold
                  ),
                ),),
            ),
          ),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
              ),
              Text(
                'Log in',
                style: black2TextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: bold
                ),
              )
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: keyWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [topPage(), inputSec(), submitButton()],
      ),
    );
  }
}
