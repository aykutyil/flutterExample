import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/block/try_block.dart';

class BottomTopRow extends StatefulWidget {
  final VoidCallback onBlurClicked;
  bool textBoolean = true;

  BottomTopRow(this.onBlurClicked);


  @override
  State<StatefulWidget> createState() {
    return BuildBottomTopRow();
  }
}

class BuildBottomTopRow extends State<BottomTopRow> {
  String title = "Fiyata Göre";
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return buildTopRow();
  }

  @override
  void initState() {
    super.initState();
    tryBlock.getStream.listen((index) {
      List<String> mBlurlist = ["Fiyata Göre","Hız"];
      setState(() {
        title = mBlurlist[index];
      });
    });
  }

  Widget buildTopRow() {
    const mColor = const Color(0xFF2e375d);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Sonuçlar",
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontSize: 18,
                color: mColor,
                letterSpacing: .14,
                fontWeight: FontWeight.w600,
              ),
            )
            ),
          InkWell(
            onTap: (){tryBlock.setBlur(false);
            RenderBox box = key.currentContext.findRenderObject();
             Offset position = box.globalToLocal(Offset.zero);
             tryBlock.setHeight(position.dy);
             print(position.dy.toString());},
            child: Container(
              key: key,
              child: Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: mColor,
                        letterSpacing: .17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          )
      ],
    );
  }
}
