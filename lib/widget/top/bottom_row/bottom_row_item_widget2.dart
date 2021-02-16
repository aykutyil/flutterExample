import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/model/row_data_model.dart';

class BottomRowItemWidget2 extends StatelessWidget{
  final RowDataModel rowData;
  final VoidCallback onRowItemClicked;
  final List<String> rowSplit;
  BottomRowItemWidget2(this.rowSplit,this.rowData,this.onRowItemClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 43,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5.0),
      decoration: rowData.clicked
          ? BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.1, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      )
          : null,
      child: InkWell(
        onTap: onRowItemClicked,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/havali_poset.png",
                color: rowData.clicked ? Colors.black : Colors.white,
              )
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      rowSplit[0],
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: rowData.clicked ? Colors.black : Colors.white),
                        )
                    ),
                    Text(
                        rowSplit[1],
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: rowData.clicked ? Colors.black : Colors.white),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}