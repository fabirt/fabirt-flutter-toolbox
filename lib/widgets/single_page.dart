import 'package:flutter/material.dart';
import 'package:fabirt_toolbox/enums/page_state.dart';
import 'package:fabirt_toolbox/tools/single_page_bloc.dart';

typedef SinglePageBuilder = Widget Function(
  BuildContext context,
  PageState state,
);

class SinglePage<T extends SinglePageBloc> extends StatelessWidget {
  final T controller;
  final PageState initialState;
  final SinglePageBuilder builder;

  const SinglePage({
    Key key,
    @required this.controller,
    @required this.builder,
    this.initialState = PageState.idle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PageState>(
      stream: controller.stream,
      initialData: initialState,
      builder: (context, snapshot) {
        return builder(context, snapshot.data ?? PageState.idle);
      },
    );
  }
}
