
import 'package:desing_app/screens/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:desing_app/screens/screens.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '',
      routes: {
        '': (_) => const HomeScreen(),
        'slider': (_) => const SliderScreen(),
      }
     ,
    );
  }
}