import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/block/try_block.dart';
import 'package:kargomo121a/widget/blur_container.dart';
import 'package:kargomo121a/widget/bottom_list_widget.dart';
import 'package:kargomo121a/widget/bottom_top_row.dart';
import 'file:///C:/Users/Aykut/AndroidStudioProjects/kargomo121a/lib/widget/bottom_row/bottom_row_widget.dart';
import 'package:kargomo121a/widget/middle_row_widget.dart';
import 'package:kargomo121a/widget/top_row_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  var mLeftColor = true;
  var mLeftColor2 = false;
  var mRightColor = true;
  var mRightColor2 = false;

  var blurBoolean = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_gradient.png"),
              fit: BoxFit.cover),
        ),
        child: buildMainScreen(context),
      ),
    );
  }

  Widget buildMainScreen(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 44.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              buildTopBody(),
              SizedBox(
                height: 14.0,
              ),
              buildBottomBody()
            ],
          ),
        ),
      ),
      blurBoolean ? Container() : BlurContainer(() => onBlurClicked()),
    ]);
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    tryBlock.getBlurStream.listen((event) {
      setState(() {
        print(event.toString());
        blurBoolean = event;
      });
    });
  }

  buildTopBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        titleRow(),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            children: [
              TopRowWidget("Adresten", "Alım", "Şubeden", "Gönderim"),
              SizedBox(width: 15.0),
              TopRowWidget("Adrese", "Teslim", "Şubeye", "Teslim")
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        MiddleRowWidget(),
        SizedBox(
          height: 15,
        ),
        BottomRowWidget(),
        SizedBox(
          height: 5,
        )
      ],
    );
  }

  titleRow() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text("Fiyat Karşılaştırma",
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 24,
                color: Colors.white,
                letterSpacing: .8,
                fontWeight: FontWeight.w500,
              ),
            ))
      ],
    );
  }

  buildBottomBody() {
    return Column(
      children: [
        BottomTopRow(() => onBlurClicked()),
        bottomList(),
      ],
    );
  }

  bottomList() {
    return BottomListWidget();
    /*SizedBox(height:500,child: BottomListWidget())*/
  }

  onBlurClicked() {
    setState(() {
      blurBoolean = !blurBoolean;
    });
  }
}
