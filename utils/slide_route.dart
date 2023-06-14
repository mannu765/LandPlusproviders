import 'package:flutter/material.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  final Offset begin;
  final Offset end;

  SlideRoute({
    required this.page,
    required this.begin,
    required this.end,
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return page;
          },
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: begin,
                end: end,
              ).animate(animation),
              child: child,
            );
          },
        );
}

class CupertinoPageRouteBuilder extends MaterialPageRoute {
  @override
  bool get hasScopedWillPopCallback {
    return false;
  }

  @override
  bool get willHandlePopInternally {
    return false;
  }

  CupertinoPageRouteBuilder({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}

Route pageNavigation({
  required Widget page,
  required Offset begin,
  required Offset end,
}) {
  return SlideRoute(
    page: page,
    begin: begin,
    end: end,
  );
}
