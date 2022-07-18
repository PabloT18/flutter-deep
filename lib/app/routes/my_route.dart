// import 'package:day_night_switcher/day_night_switcher.dart'import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyRoute extends StatelessWidget {
  static const _kFrontLayerMinHeight = 128.0;
  // Path of source file (relative to project root). The file's content will be
  // shown in the "Code" tab.
  final String route;
  // Actual content of the example.
  final Widget child;
  // Title shown in the route's appbar. By default just returns routeName.
  final String? _title;
  // A short description of the route. If not null, will be shown as subtitle in
  // the home page list tile.
  final String description;
  // Returns a set of links {title:link} that are relative to the route. Can put
  // documention links or reference video/article links here.
  final Map<String, String> links;

  const MyRoute({
    Key? key,
    required this.route,
    required this.child,
    required String title,
    this.description = '',
    this.links = const <String, String>{},
    String? routeName,
  })  : _title = title,
        super(key: key);

  String get title => _title ?? route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(title),
        ),
        // actions: _getAppbarActions(context),
        automaticallyImplyLeading: false,
        // leading: appbarLeading,
      ),
      body: child,
      // headerHeight: _kFrontLayerMinHeight,
      // frontLayerBorderRadius: BorderRadius.zero,
      // frontLayer: Builder(
      //   builder: (BuildContext context) =>
      //       routeName == Navigator.defaultRouteName
      //           ? child
      //           : WidgetWithCodeView(
      //               sourceFilePath: this.sourceFilePath,
      //               codeLinkPrefix: '$GITHUB_URL/blob/master',
      //               child: child,
      //             ),
      // ),
      // backLayer: _getBackdropListTiles(),
    );
  }
}
