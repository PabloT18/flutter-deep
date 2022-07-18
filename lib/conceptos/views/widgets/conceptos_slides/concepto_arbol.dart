import 'package:flutter/material.dart';
import 'package:flutter_deep/conceptos/conceptos.dart';
import 'package:flutter_deep/utils/responsive.dart';

import '../../../../app/app.dart';

class Conceptoarbol extends StatelessWidget {
  const Conceptoarbol({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.grey,
            // constraints: BoxConstraints(
            //   maxWidth: constraints.maxWidth * 0.5,
            //   minWidth: 200,
            //   maxHeight: constraints.maxHeight * 0.7,
            //   minHeight: 300,
            // ),
            height: constraints.maxHeight * 0.7,
            width: constraints.maxWidth * 0.6,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Widget Title'),
              ),
              body: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text('Text 1'),
                      const Text('Text 2'),
                      SizedBox(
                          height: constraints.maxHeight * 0.5,
                          width: constraints.maxWidth * 0.3,
                          child: ConceptosPage4(responsive: responsive)),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const ThemeButton(
                  homePage: true,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
