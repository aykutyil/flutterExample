import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kargomo121a/data/row_data.dart';
import 'package:kargomo121a/model/row_data_model.dart';
import 'bottom_row_item_widget.dart';
import 'bottom_row_item_widget2.dart';

class BottomRowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomRowWidget();
  }
}

class _BottomRowWidget extends State {
  final ScrollController _scrollController = ScrollController();
  List<Widget> listWidget = List<Widget>();
  List<RowDataModel> a = RowData().rowListAdd();
  var rowItem1 = false;
  var rowItem2 = false;

  @override
  Widget build(BuildContext context) {
    return buildBottomRow();
  }

  Widget buildBottomRow() {
    return Container(
      height: 72,
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          color: Colors.indigo.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Scrollbar(
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: a.length,
          itemBuilder: (context, index) {
            return a[index].name.toString().contains(" ")
                ? getWidgetSplit(a[index],index)
                : getWidgetNormal(a[index],index);
          },
        ),
      ),
    );
  }

  onRowItemClicked(int index) {
    final item = a[index];
    setState(() {
      item.clicked = !item.clicked;
      print(item.clicked.toString()+" "+ index.toString());
    });
  }

  Widget getWidgetSplit(RowDataModel rowData, int index) {
    var nameSplit = a[index].name.toString().split(" ");
    return BottomRowItemWidget2(nameSplit, rowData, ()=>onRowItemClicked(index));
  }

  getWidgetNormal(RowDataModel rowData, int index) {
    return BottomRowItemWidget(rowData, ()=>onRowItemClicked(index));
  }
}
