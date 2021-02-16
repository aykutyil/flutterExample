import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/block/try_block.dart';
import 'package:kargomo121a/model/mHeightModel.dart';
import 'package:provider/provider.dart';

class BlurContainer extends StatefulWidget {
  VoidCallback onBlurClicked;

  BlurContainer(this.onBlurClicked);

  @override
  State<StatefulWidget> createState() {
    return BlurContainerState();
  }

}

class BlurContainerState extends State<BlurContainer> {
  List<String> mBlurlist = ["Fiyata Göre", "Hız"];
  double mHeight = 375.0;

  @override
  Widget build(BuildContext context) {
    return buildBlurContainer();
  }

  @override
  void initState(){
    super.initState();
    mHeight = Provider.of<HeightModel>(context, listen: false).mHeightValue;
  }

  Widget buildBlurContainer() {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: InkWell(
          onTap: widget.onBlurClicked,
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5)),
            child: Stack(
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width - 120,
                  top: mHeight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.1, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Icon(Icons.arrow_drop_down)),
                            InkWell(
                              onTap: () {
                                tryBlock.getTitle(0);
                                tryBlock.setBlur(true);
                              },
                              child: Container(
                                child: Text(mBlurlist[0],
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        letterSpacing: .17,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                tryBlock.getTitle(1);
                                tryBlock.setBlur(true);
                              },
                              child: Container(
                                child: Text(mBlurlist[1],
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        letterSpacing: .17,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
