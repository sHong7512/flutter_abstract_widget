import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  BaseStatelessWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  String? title;
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
    final title = this.title ?? this.runtimeType.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: _titleTextStyle),
      ),
      body: SafeArea(
        child: body ?? Center(child: Text(title)),
      ),
    );
  }
}
