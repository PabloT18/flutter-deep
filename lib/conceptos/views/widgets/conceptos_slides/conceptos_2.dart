part of '../../conceptos_page.dart';

class ConceptosPage2 extends StatelessWidget {
  const ConceptosPage2({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
        child: Image.asset(
          'assets/images/conceptos/conceptos_2.png',
          // height: responsive.height,
        ),
      ),
    );
  }
}

class ConceptosPage3 extends StatelessWidget {
  const ConceptosPage3({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
        child: Image.asset(
          'assets/images/conceptos/conceptos_3.png',
          // height: responsive.height,
        ),
      ),
    );
  }
}

class ConceptosPage4 extends StatelessWidget {
  const ConceptosPage4({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 650,
        ),
        child: Image.asset(
          'assets/images/conceptos/conceptos_4.png',
          // height: responsive.height,
        ),
      ),
    );
  }
}
