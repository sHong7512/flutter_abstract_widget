import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget title;
  final Widget body;

  const MainLayout({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: body,
    );
  }
}
