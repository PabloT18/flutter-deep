part of 'widgets_conceptos.dart';

class PageViewNavigator extends StatelessWidget {
  const PageViewNavigator({
    required this.dotslenght,
    Key? key,
  }) : super(key: key);

  final int dotslenght;

  @override
  Widget build(BuildContext context) {
    final slideCubit = context.read<SlideCubit>();
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
          color: isDark ? Colors.white : AppColors.primaryBlue.withOpacity(0.7),
        )),
      ),
      height: 50,
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        GestureDetector(
          onDoubleTap: () => slideCubit.pageController.animateTo(0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut),
          child: IconButton(
            onPressed: () {
              slideCubit.pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: isDark
                  ? Colors.white
                  : AppColors.primaryBlue.withOpacity(0.7),
            ),
          ),
        ),
        const Spacer(),
        ...List.generate(
            dotslenght,
            (index) => _Dot(
                  index,
                  isDark: isDark,
                )),
        const Spacer(),
        IconButton(
          onPressed: () {
            slideCubit.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          },
          icon: FaIcon(
            FontAwesomeIcons.arrowRight,
            color:
                isDark ? Colors.white : AppColors.primaryBlue.withOpacity(0.7),
          ),
        ),
      ]),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot(
    this.index, {
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final int index;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlideCubit, SlideState>(
      builder: (context, state) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: (state.curentePage >= index - 0.5 &&
                  state.curentePage < index + 0.5)
              ? isDark
                  ? Colors.white
                  : AppColors.primaryBlue
              : Colors.grey,
          shape: BoxShape.circle,
        ),
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
      ),
    );
  }
}
