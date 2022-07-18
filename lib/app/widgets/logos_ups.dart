part of 'widgets_app.dart';

class LogoFlutter extends StatelessWidget {
  const LogoFlutter({
    Key? key,
    required this.height,
    required this.width,
    this.marginHorizonta = 0,
    this.marginVertical = 0,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  final double height;
  final double width;
  final double marginVertical;
  final double marginHorizonta;

  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: marginHorizonta,
        vertical: marginVertical,
      ),
      height: height,
      width: width,
      child: Image(
          image: const AssetImage('assets/images/flutter-logo.png'),
          fit: boxFit),
    );
  }
}

class LogoIcon extends StatelessWidget {
  const LogoIcon({
    Key? key,
    required this.height,
    required this.width,
    this.marginHorizonta = 0,
    this.marginVertical = 0,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  final double height;
  final double width;
  final double marginVertical;
  final double marginHorizonta;

  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: marginHorizonta,
        vertical: marginVertical,
      ),
      height: height,
      width: width,
      child: Image(
        image: const AssetImage('assets/images/logo.png'),
        fit: boxFit,
      ),
    );
  }
}
