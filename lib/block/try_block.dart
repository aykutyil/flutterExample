import 'dart:async';

import 'package:kargomo121a/data/list_data.dart';
import 'package:kargomo121a/model/list_model.dart';

class TryBlock{
  final titleStreamController = StreamController.broadcast();
  final blurStreamController = StreamController.broadcast();
  final heightStreamController = StreamController.broadcast();

  Stream get getStream => titleStreamController.stream;

  Stream get getBlurStream => blurStreamController.stream;

  Stream get getHeightStream => heightStreamController.stream;

  void getTitle(int index){
    titleStreamController.sink.add(index);
  }

  void setBlur(bool mBoolean)async{
    blurStreamController.sink.add(mBoolean);
  }

  void setHeight(double index){
    var a = ((-1*(index.toInt()))+25).toDouble();
    heightStreamController.sink.add(a);
  }

  List<ListModel> getList(){
    return ListData().listGet();
  }

}

final tryBlock = TryBlock();