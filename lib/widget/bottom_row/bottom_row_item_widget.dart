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
      height: MediaQuery.of(context).size.height - 633,
      width: MediaQuery.of(context).size.width - 349,
      alignment: Alignment.center,
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
            SizedBox(height: 12,),
            Expanded(
              flex: 1,
              child: Icon(Icons.move_to_inbox_sharp,
                  color: rowData.clicked ? Colors.black : Colors.white),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(rowData.name,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
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
