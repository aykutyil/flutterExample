import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kargomo121a/block/try_block.dart';
import 'package:kargomo121a/model/list_model.dart';

class BottomListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomListWidgetState();
  }
}

class BottomListWidgetState extends State<BottomListWidget> {

  List<ListModel> _list;

  @override
  void initState() {
    getListItems();
  }

  @override
  Widget build(BuildContext context) {
    return buildBottomList();
  }

  Widget buildBottomList() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_list.length, (index) {
          return createListItem(_list[index]);
        }),
    );
  }

  Widget createListItem(ListModel list) {
    const mColor = const Color(0xFF24303b);
    const mSecondColor = const Color(0xFF1e87e7);
    return Container(
      height: MediaQuery.of(context).size.height-579,
      margin: EdgeInsets.only(bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(list.img),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(list.price,
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    color: mColor,
                                    letterSpacing: .14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            SizedBox(width: 2,),
                            Text("TL",
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontSize: 13,
                                    color: mColor,
                                    letterSpacing: .14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ],
                        ),
                        Text(list.clock,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: mSecondColor,
                                letterSpacing: .4,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_drop_down, color: mColor,),
                    Icon(Icons.arrow_forward, color: mColor,size: 30,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getListItems() {
    _list = tryBlock.getList();
  }
}
