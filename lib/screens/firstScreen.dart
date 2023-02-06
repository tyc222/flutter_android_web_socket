import 'package:flutter/material.dart';
import 'package:flutter_android_web_socket/models/ColourInfo_model.dart';
import 'package:flutter_android_web_socket/tempHolder.dart';
import 'package:flutter_android_web_socket/utilities/hexToColour.dart';
import 'package:flutter_android_web_socket/utilities/randomTimeGenerator.dart';
import 'package:provider/provider.dart';

import '../providers/firstScreenProvider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Colour List'),
        ),
        body: FutureBuilder(
            future: RandomTimeGenerator().executeTaskOnTime(),
            builder: (context, snapshot) {
              return StreamBuilder<ColourInfoModel>(
                stream: TempHolder().colourInfoStream,
                builder: (context, snapshot) {
                  FirstScreenProvider purchaseHistoryProvider =
                      Provider.of<FirstScreenProvider>(context);

                  if (!snapshot.hasData) {
                    return const Center(child: Text('Empty Data'));
                  } else {
                    return ListView.separated(
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                purchaseHistoryProvider
                                    .changeSelectedIndex(index);
                                Navigator.pushNamed(context, '/secondScreen');
                              },
                              child: Container(
                                height: 50,
                                color: HexColor(TempHolder()
                                    .colourInfoList[index]
                                    .colors!
                                    .first),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(TempHolder()
                                            .colourInfoList[index]
                                            .title ??
                                        'No Data'),
                                    Text(TempHolder()
                                            .colourInfoList[index]
                                            .userName ??
                                        'No Data'),
                                  ],
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) {
                          return const SizedBox();
                        },
                        itemCount: TempHolder().colourInfoList.length);
                  }
                },
              );
            }));
  }
}
