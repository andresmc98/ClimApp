import 'package:flutter/material.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.light(
              secondary: const Color.fromARGB(255, 102, 207, 105))),
      title: 'ClimApp',
      home: MyHomePage(),
    );
  }
}
