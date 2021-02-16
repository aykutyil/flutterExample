import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/model/row_data_model.dart';

class BottomRowItemWidget extends StatelessWidget {
  final RowDataModel rowData;
  final VoidCallback onRowItemClicked;

  BottomRowItemWidget(this.rowData, this.onRowItemClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 52,
      alignment: Alignment.center,
      decoration: rowData.clicked
          ? BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.blue),
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
                /*Icon(Icons.move_to_inbox_sharp,
                  color: rowData.clicked ? Colors.black : Colors.white),*/
                ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(rowData.name,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: rowData.clicked ? Colors.black : Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
