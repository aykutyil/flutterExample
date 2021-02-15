import 'package:kargomo121a/model/row_data_model.dart';

class RowData{
  rowListAdd(){
    var rowList = List<RowDataModel>();
    rowList.add(RowDataModel("Kutu",false));
    rowList.add(RowDataModel("Havalı Poşet", false));
    rowList.add(RowDataModel("SMS", false));
    rowList.add(RowDataModel("İmzalı Teslim", false));
    rowList.add(RowDataModel("Sigorta", false));
    rowList.add(RowDataModel("Soğuk", false));
    rowList.add(RowDataModel("Sıvı", false));
    return rowList;
  }

}