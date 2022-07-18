part of 'widgets_app.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    this.homePage = false,
    Key? key,
  }) : super(key: key);

  final bool homePage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, ThemeData theme) {
      return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 1),
        child: IconButton(
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          icon: Icon(
              theme.brightness != Brightness.dark
                  ? Icons.mode_night
                  : Icons.sunny,
              color: homePage
                  ? Theme.of(context).textTheme.headline6!.color
                  : Colors.white
              //     ? Colors.black
              //     : Colors.white,
              ),
          // color: Colors.black,
        ),
      );
    });
  }
}
