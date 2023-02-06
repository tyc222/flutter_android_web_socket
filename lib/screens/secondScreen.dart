import 'package:flutter/material.dart';
import 'package:flutter_android_web_socket/models/ColourInfo_model.dart';
import 'package:flutter_android_web_socket/providers/firstScreenProvider.dart';
import 'package:flutter_android_web_socket/tempHolder.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirstScreenProvider purchaseHistoryProvider =
        Provider.of<FirstScreenProvider>(context);

    ColourInfoModel colourInfo =
        TempHolder().colourInfoList[purchaseHistoryProvider.selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colour Info'),
      ),
      body: Column(
        children: [
          Text(colourInfo.id.toString()),
          Text(colourInfo.title.toString()),
          Text(colourInfo.userName.toString()),
          Text(colourInfo.description.toString()),
        ],
      ),
    );
  }
}
