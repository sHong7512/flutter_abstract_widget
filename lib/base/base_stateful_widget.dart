import 'package:flutter/material.dart';

import 'main_layout.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget({
    super.key,
    this.title,
  });

  String? title;

  @override
  BaseState createState();
}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> {
  final TextStyle _titleTextStyle = TextStyle(
    fontSize: 30,
    color: Colors.yellow[100],
    fontWeight: FontWeight.w700,
  );

  final TextStyle ts = TextStyle(
    fontSize: 20,
    color: Colors.blue[900],
    fontWeight: FontWeight.w300,
  );

  @override
  Widget build(BuildContext context, {Widget? body}) {
    final title = widget.title ?? this.runtimeType.toString();
    return MainLayout(
      title: Text(title, style: _titleTextStyle),
      body: SafeArea(
        child: body ?? Center(child: Text(title)),
      ),
    );
  }
}
