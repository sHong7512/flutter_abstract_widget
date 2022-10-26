import 'package:abstract_widget/screen/stateful/screen_four.dart';
import 'package:abstract_widget/screen/stateful/screen_three.dart';
import 'package:abstract_widget/screen/stateless/screen_one.dart';
import 'package:abstract_widget/screen/stateless/screen_two.dart';
import 'package:flutter/material.dart';

import 'base/main_layout.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class ScreenModel {
  final WidgetBuilder builder;
  final String name;

  ScreenModel({
    required this.builder,
    required this.name,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final screens = [
    ScreenModel(
      builder: (_) => ScreenOne(),
      name: 'Screen One',
    ),
    ScreenModel(
      builder: (_) => ScreenTwo(title: 'SCREEN TWO'),
      name: 'Screen Two',
    ),
    ScreenModel(
      builder: (_) => ScreenThree(),
      name: 'Screen Three',
    ),
    ScreenModel(
      builder: (_) => ScreenFour(title: 'SCREEN FOUR'),
      name: 'Screen Four',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: Text('Home Screen'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: screens
              .map(
                (screen) => ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: screen.builder));
                  },
                  child: Text(screen.name),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
