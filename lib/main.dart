import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android_web_socket/providers/firstScreenProvider.dart';
import 'package:flutter_android_web_socket/screens/firstScreen.dart';
import 'package:flutter_android_web_socket/screens/secondScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => FirstScreenProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
      },
    );
  }
}
