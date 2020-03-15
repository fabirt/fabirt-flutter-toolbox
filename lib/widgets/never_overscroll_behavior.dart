import 'package:flutter/material.dart';

/// Removes the liquid effect of the default material's
/// scroll configuration.
class NeverOverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
