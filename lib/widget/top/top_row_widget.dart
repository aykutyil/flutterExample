import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRowWidget extends StatefulWidget {
  var s = "";
  var d = "";
  var q = "";
  var w = "";

  TopRowWidget(String s, String d, String q, String w) {
    this.s = s;
    this.d = d;
    this.q = q;
    this.w = w;
  }

  @override
  State<StatefulWidget> createState() {
    return TopRowWidgetState();
  }
}

class TopRowWidgetState extends State<TopRowWidget> {
  var mLeftColor = true;
  var mLeftColor2 = false;

  @override
  Widget build(BuildContext context) {
    return buildTopWidget(context);
  }

  Widget buildTopWidget(BuildContext context) {
    return Expanded(
      child: Container(
        height: 42,
        width: 160,
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            color: Colors.indigo.withOpacity(0.9),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: mLeftColor
                    ? BoxDecoration(
                        color: mLeftColor ? Colors.white : Colors.transparent,
                        border: Border.all(width: 1.1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                    : null,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (mLeftColor2 == true) {
                        mLeftColor2 = !mLeftColor2;
                        mLeftColor = !mLeftColor;
                      }
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.s,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color:
                            mLeftColor ? Colors.black : Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .1,
                          ),
                        ),
                      ),
                      Text(
                        widget.d,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color:
                            mLeftColor ? Colors.black : Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: mLeftColor2
                    ? BoxDecoration(
                        color: mLeftColor2 ? Colors.white : Colors.transparent,
                        border: Border.all(width: 1.1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                    : null,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (mLeftColor == true) {
                        mLeftColor = !mLeftColor;
                        mLeftColor2 = !mLeftColor2;
                      }
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.q,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color:
                            mLeftColor2 ? Colors.black : Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .1,
                          ),
                        ),
                      ),
                      Text(
                        widget.w,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color:
                            mLeftColor2 ? Colors.black : Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: .1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
