import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleRowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MiddleRowWidgetState();
  }
}

class _MiddleRowWidgetState extends State<MiddleRowWidget> {
  var mFirstRow = true;
  var mSecondRow = false;
  var mThirdRow = false;
  @override
  Widget build(BuildContext context) {
    return buildMiddleRow();
  }

  Widget buildMiddleRow() {
    return Container(
      height: MediaQuery.of(context).size.height-635,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.indigo.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height-645,
              width: MediaQuery.of(context).size.width-267,
              decoration: mFirstRow
                  ? BoxDecoration(
                      color: mFirstRow ? Colors.white : Colors.transparent,
                      border: Border.all(width: 1.1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )
                  : null,
              child: InkWell(
                onTap: (){
                  setState(() {
                    if(mFirstRow != true){
                      mFirstRow = !mFirstRow;
                      if(mSecondRow == true){
                        mSecondRow = !mSecondRow;
                      }
                      if(mThirdRow == true){
                        mThirdRow = !mThirdRow;
                      }
                    }
                  });
                },
                child: Center(
                  child: Text(
                    "Aynı Gün",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          color:
                          mFirstRow ? Colors.black : Colors.white.withOpacity(0.5),
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 4,),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height-645,
              width: MediaQuery.of(context).size.width-267,
              decoration: mSecondRow
                  ? BoxDecoration(
                      color: mSecondRow ? Colors.white : Colors.transparent,
                      border: Border.all(width: 1.1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ) : null,
              child: InkWell(
                onTap: (){
                  setState(() {
                    if(mSecondRow != true){
                      mSecondRow = !mSecondRow;
                      if(mFirstRow == true){
                        mFirstRow = !mFirstRow;
                      }if(mThirdRow == true){
                        mThirdRow = !mThirdRow;
                      }
                    }
                  });
                },
                child: Center(
                  child: Text(
                    "Express",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color:
                        mSecondRow ? Colors.black : Colors.white.withOpacity(0.5),
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .1
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 4,),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height-645,
              width: MediaQuery.of(context).size.width-267,
              decoration: mThirdRow
                  ? BoxDecoration(
                      color: mThirdRow ? Colors.white : Colors.transparent,
                      border: Border.all(width: 1.1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )
                  : null,
              child: InkWell(
                onTap: (){
                  setState(() {
                    if(mThirdRow != true){
                      mThirdRow = !mThirdRow;
                      if(mFirstRow == true){
                        mFirstRow = !mFirstRow;
                      }
                      if(mSecondRow == true){
                        mSecondRow = !mSecondRow;
                      }
                    }
                  });
                },
                child: Center(
                  child: Text(
                    "Standart",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          color:
                          mThirdRow ? Colors.black : Colors.white.withOpacity(0.5),
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .1
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
