part of '../../conceptos_page.dart';

class ConceptosPage1 extends StatelessWidget {
  const ConceptosPage1({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: responsive.hp(7)),
          Hero(
            tag: '_tag_logo',
            child: ShaderMask(
              shaderCallback: ((Rect bounds) => const LinearGradient(
                    colors: [Colors.yellow, Colors.indigo],
                    stops: [0.0, 0.5],
                  ).createShader(bounds)),
              blendMode: BlendMode.srcATop,
              child: LogoIcon(
                height: responsive.hp(10),
                width: responsive.wp(20),
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: responsive.hp(5)),
          const _Conceptos1(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class _Conceptos1 extends StatelessWidget {
  const _Conceptos1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final concepto1 = Image.asset(
      'assets/images/conceptos/conceptos_1.1.png',
    );
    final concepto2 = Image.asset(
      'assets/images/conceptos/conceptos_1.2.png',
    );

    return Center(
      child: Wrap(
        runSpacing: 10,
        spacing: responsive.wp(5),
        children: [
          _buildBox(concepto1, responsive),
          _buildBox(concepto2, responsive),
        ],
      ),
    );
  }

  Widget _buildBox(Widget child, Responsive responsive) {
    return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: responsive.kmovilwidth * 0.5),
        child: child);
  }
}
