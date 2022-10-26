import 'package:abstract_widget/screen/base_stateless_widget.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends BaseStatelessWidget {
  ScreenTwo({super.key, required super.title});

  @override
  Widget build(BuildContext context, {Widget? body}) {
    return super.build(
      context,
      body: Center(
        child: Text('two two', style: ts),
      ),
    );
  }
}
