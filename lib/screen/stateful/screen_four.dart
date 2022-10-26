import 'package:flutter/material.dart';
import 'package:abstract_widget/base/base_stateful_widget.dart';

class ScreenFour extends BaseStatefulWidget {
  ScreenFour({super.key, required super.title});

  @override
  BaseState<BaseStatefulWidget> createState() {
    return _ScreenFourState();
  }
}

class _ScreenFourState extends BaseState<ScreenFour> {
  bool onOff = true;

  @override
  Widget build(BuildContext context, {Widget? body}) {
    return super.build(
      context,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              onOff = !onOff;
            });
          },
          child: Text(onOff ? 'four' : 'FOUR', style: ts),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
        ),
      ),
    );
  }
}
