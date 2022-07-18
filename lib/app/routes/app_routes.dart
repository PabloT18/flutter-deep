import 'package:flutter/material.dart';
import 'package:flutter_deep/app/routes/my_route.dart';
import 'package:flutter_deep/catalogo/catalogo.dart';
import 'package:flutter_deep/conceptos/conceptos.dart';

import 'package:flutter_deep/home/home.dart';

class AppRoutes {
  static const String homePage = '/';
  static const String conceptosPage = '/conceptosPage';
  static const String catalgoPage = '/catalgoPage';

  static const String loginPage = '/login';
  static const String termsPage = '/terms';
  static const String fotoPage = '/foto';
  static const String guiaPage = '/guia';

  static const kMyAppRoutesBasic = <MyRouteGroup>[
    MyRouteGroup(
        route: '/widgets',
        groupName: 'Widgets',
        icon: Icon(Icons.extension),
        routes: <MyRoute>[
          MyRoute(
            route: '/icon',
            title: 'Icon',
            child: IconWidgetExample(),
          ),
        ])
  ];

  static final kAllRouteGroups = <MyRouteGroup>[
    ...kMyAppRoutesBasic,
  ];

  static final kAllRoutes = <MyRoute>[
    ...kMyAppRoutesBasic.expand((group) => group.routes),
  ];

  static final kRouteNameToRoute = <String, MyRoute>{
    for (final route in kAllRoutes) route.route: route
  };

  final kRouteNameToRouteGroup = <String, MyRouteGroup>{
    for (final group in kAllRouteGroups)
      for (final route in group.routes) route.route: group
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    print('--------------------------------------${settings.name}');

    switch (settings.name) {
      case homePage:
        return _fadeRoute(const HomePage(), loginPage, settings);
      case conceptosPage:
        return _fadeRoute(const ComceptosPage(), conceptosPage, settings);

      case catalgoPage:
        return _fadeRoute(const CatalogoPage(), conceptosPage, settings);

      default:
        final route = kRouteNameToRoute[settings.name];
        return _fadeRoute(route!.child, route.route, settings);
    }
  }

  static MaterialPageRoute _fadeRoute(
    Widget child,
    String routName,
    RouteSettings settings,
  ) {
    // return PageRouteBuilder(
    //   settings: RouteSettings(name: routName, arguments: settings.arguments),
    //   pageBuilder: (BuildContext context, ___, ____) => child,
    // );
    // return CupertinoPageRoute(builder: (context) => child);
    return MaterialPageRoute(builder: (context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Pagina No Encontrada posiblemente este en desarrollo'),
        ),
      );
    });
  }
}

class MyRouteGroup {
  const MyRouteGroup(
      {required this.route,
      required this.groupName,
      required this.icon,
      required this.routes});
  final String groupName;
  final Widget icon;
  final String route;
  final List<MyRoute> routes;
}
