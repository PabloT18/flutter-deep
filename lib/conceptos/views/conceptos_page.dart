import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep/app/app.dart';
import 'package:flutter_deep/app/theme/app_colors.dart';
import 'package:flutter_deep/conceptos/logic/slide/slide_cubit.dart';
import 'package:flutter_deep/conceptos/views/widgets/widgets_conceptos.dart';
import 'package:flutter_deep/utils/responsive.dart';

import 'widgets/conceptos_slides/concepto_arbol.dart';

part 'widgets/conceptos_slides/conceptos_1.dart';
part 'widgets/conceptos_slides/conceptos_2.dart';
part 'widgets/conceptos_slides/conceptos_dart.dart';
part 'widgets/conceptos_slides/conceptos_widgets.dart';

class ComceptosPage extends StatelessWidget {
  const ComceptosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => SlideCubit(),
      child: Scaffold(
        backgroundColor: isDark ? null : Colors.white,
        appBar: AppBar(
          actions: const <Widget>[
            ThemeButton(
              homePage: true,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: _ConceptosSlide(responsive: responsive),
        ),
      ),
    );
  }
}

class _ConceptosSlide extends StatelessWidget {
  const _ConceptosSlide({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    final slides = [
      ConceptosPage1(responsive: responsive),
      ConceptosDart(responsive: responsive),
      ConceptosWidgets(responsive: responsive),
      ConceptosPage2(responsive: responsive),
      ConceptosPage3(responsive: responsive),
      ConceptosPage4(responsive: responsive),
      Conceptoarbol(responsive: responsive),
    ];

    final slideCubit = context.read<SlideCubit>();

    return Column(
      children: <Widget>[
        Expanded(
          child: BlocBuilder<SlideCubit, SlideState>(
            builder: (context, state) {
              return PageView.builder(
                  itemCount: slides.length,
                  scrollDirection: Axis.horizontal,
                  controller: slideCubit.pageController,
                  itemBuilder: (context, position) {
                    print('$position - ${state.curentePage}');
                    final opacity =
                        (position - state.curentePage).clamp(0.0, 1.0);
                    return Opacity(
                      opacity: 1 - opacity,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..rotateX(state.curentePage - position),
                        child: slides[position],
                      ),
                    );
                  });
            },
          ),
        ),
        PageViewNavigator(
          dotslenght: slides.length,
        ),
      ],
    );
  }
}
