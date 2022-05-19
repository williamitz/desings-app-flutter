import 'package:flutter/material.dart';

import 'package:desing_app/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'blur',
      routes: {
        '': (_) => const HomeScreen(),
        'slider': (_) => const SliderScreen(),
        'blur': (_) => const BlurScreen()
      },

      theme: ThemeData.dark(),
    );
  }
}
