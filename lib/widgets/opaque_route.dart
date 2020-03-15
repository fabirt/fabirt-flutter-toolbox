import 'package:flutter/material.dart';

class OpaqueRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  OpaqueRoute(this.child)
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return child;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

  @override
  bool get opaque => false;
}
