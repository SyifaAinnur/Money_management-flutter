import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_bangking/constants/color_constant.dart';
import 'package:money_bangking/screen/home_screen.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xfff1E1E99),
      body: ListView(
        padding: EdgeInsets.only(top: 105),
        children: [
          Container(
            width: 349,
            height: 226,
            margin: EdgeInsets.only(left: 33, right: 32),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo.png'))),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Money ",
                    style: GoogleFonts.inter(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    )
                  ),
                  TextSpan(
                    text: "Moora",
                    style: GoogleFonts.inter(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: kPinkColor,
                    )
                  )
                ]
              ),
            )
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 11,),
            child: Text('A brand new experience\nof managing your business',textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: kWhiteColor)),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 380,
              height:60,
              margin: EdgeInsets.only(top: 90, left: 40, right: 40),

              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomeScreen()
                  ));
                },
                style: TextButton.styleFrom(
                  backgroundColor: kPinkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Get Started Now!',
                  style: GoogleFonts.inter(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  )),
                ),
              )
            ),
        ],
      ),
    );
  }
}
