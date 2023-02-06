import 'dart:async';

import 'models/ColourInfo_model.dart';

class TempHolder {
  static final TempHolder _tempHolder = TempHolder._internal();

  factory TempHolder() {
    return _tempHolder;
  }

  TempHolder._internal();

  final List<ColourInfoModel> _colourInfoList = [];
  List<ColourInfoModel> get colourInfoList => _colourInfoList;
  final StreamController<ColourInfoModel> _colourInfoController =
      StreamController<ColourInfoModel>();
  Stream<ColourInfoModel> get colourInfoStream => _colourInfoController.stream;
  void addColourInfo(ColourInfoModel value) {
    _colourInfoController.add(value);
    _colourInfoList.add(value);
  }

  void cancelStream() {
    _colourInfoController.stream.listen((event) {}).cancel();
  }
}
