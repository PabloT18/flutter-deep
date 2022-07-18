import 'package:flutter/material.dart';

import 'package:flutter_deep/app/app.dart';
import 'package:flutter_deep/utils/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Scaffold(
        appBar: AppBar(
            actions: const <Widget>[
              ThemeButton(
                homePage: true,
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text('Flutter Deep'),
            titleTextStyle: Theme.of(context).textTheme.headline6!
            //     .copyWith(color: Colors.black),
            ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: responsive.hp(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.conceptosPage);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: '_tag_logo',
                        child: LogoIcon(
                          height: responsive.hp(25),
                          width: responsive.wp(20),
                          boxFit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'Conceptos',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.catalgoPage);
                  },
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                      minWidth: 100,
                      minHeight: 200,
                    ),
                    child: Row(
                      children: <Widget>[
                        LogoIcon(
                          height: responsive.hp(25),
                          width: responsive.wp(20),
                          boxFit: BoxFit.contain,
                        ),
                        Expanded(
                          child: Text(
                            'Catalago de Widgets',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
