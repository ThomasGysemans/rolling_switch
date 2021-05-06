import 'package:flutter/material.dart';

abstract class RollingInfo<T> {
  final Text? text;
  final Color backgroundColor;
  final T icon;

  const RollingInfo(this.text, this.backgroundColor, this.icon);
}

class RollingIconInfo extends RollingInfo<IconData> {
  const RollingIconInfo({
    Text? text,
    Color backgroundColor = Colors.lightBlueAccent,
    IconData icon = Icons.check,
    this.colorIconActive,
    this.colorIconInactive,
  }) : super(text, backgroundColor, icon);

  final Color? colorIconActive;
  final Color? colorIconInactive;
}

class RollingWidgetInfo extends RollingInfo<Widget> {
  const RollingWidgetInfo({
    Text? text,
    Color backgroundColor = Colors.grey,
    Widget icon = const SizedBox(),
  }) : super(text, backgroundColor, icon);
}