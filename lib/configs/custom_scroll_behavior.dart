import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

///this behavior will let app to be scrolled with touch and mouse
class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}