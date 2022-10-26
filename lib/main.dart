import 'package:abstract_widget/screen/stateful/screen_four.dart';
import 'package:abstract_widget/screen/stateful/screen_three.dart';
import 'package:abstract_widget/screen/stateless/screen_one.dart';
import 'package:abstract_widget/screen/stateless/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Stateless Base'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => ScreenOne()));
              },
              child: Text('One Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => ScreenTwo(title: 'SCREEN TWO')));
              },
              child: Text('Two Screen'),
            ),
            SizedBox(height: 16),
            Text('Stateful Base'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => ScreenThree()));
              },
              child: Text('Three Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => ScreenFour(title: 'SCREEN FOUR')));
              },
              child: Text('Four Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
