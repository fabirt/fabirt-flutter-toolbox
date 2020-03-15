import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:rxdart/subjects.dart';

import 'package:fabirt_toolbox/enums/page_state.dart';

abstract class SinglePageBloc {
  final _controller = BehaviorSubject<PageState>();

  /// Page state stream.
  Stream<PageState> get stream => _controller.stream;

  /// Current state.
  PageState get state {
    return _controller.stream.value;
  }

  /// Notify that an object has changed.
  void setState(PageState pageState) {
    if (!_controller.isClosed) {
      _controller.sink.add(pageState);
    }
  }

  /// Close streams.
  @mustCallSuper
  void dispose() {
    _controller.close();
  }
}
