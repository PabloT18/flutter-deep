import 'package:flutter/material.dart';
import 'package:flutter_deep/app/app.dart';
import 'package:flutter_deep/app/routes/my_route.dart';
import 'package:flutter_deep/utils/responsive.dart';

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basicDemos = <Widget>[
      for (final MyRouteGroup group in AppRoutes.kMyAppRoutesBasic)
        _myRouteGroupToExpansionTile(group, context),
    ];

    Responsive responsive = Responsive.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalogo'),
        ),
        body: ListView(
          children: basicDemos,
        ));
  }

  Widget _myRouteGroupToExpansionTile(
      MyRouteGroup myRouteGroup, BuildContext context) {
    // final nNew = context.watch<MyAppSettings>().numNewRoutes(myRouteGroup);
    return Card(
      key: ValueKey(myRouteGroup.groupName),
      child: ExpansionTile(
        title: Text(
          myRouteGroup.groupName,
          style: Theme.of(context).textTheme.headline6,
        ),
        children: myRouteGroup.routes
            .map((route) => _myRouteToListTile(context, route))
            .toList(),
      ),
    );
  }

  Widget _myRouteToListTile(BuildContext context, MyRoute myRoute,
      {Widget? leading, IconData trialing = Icons.keyboard_arrow_right}) {
    final routeTitleTextStyle = Theme.of(context)
        .textTheme
        .bodyText2!
        .copyWith(fontWeight: FontWeight.bold);

    return ListTile(
      title: Text(myRoute.title, style: routeTitleTextStyle),
      trailing: Icon(trialing),
      subtitle: myRoute.description.isEmpty ? null : Text(myRoute.description),
      onTap: () {
        Navigator.of(context).pushNamed(myRoute.route);
      },
    );
  }
}
