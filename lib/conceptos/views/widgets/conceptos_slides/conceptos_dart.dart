part of '../../conceptos_page.dart';

class ConceptosDart extends StatelessWidget {
  const ConceptosDart({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 26);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            child: Image.asset(
              height: responsive.hp(15),
              width: responsive.dp(30),
              'assets/images/dart-logo.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Text('Language developed and maintained by Google.',
            style: style),
        const Text('Syntax similar to JavaScript, Java, and C#.',
            textAlign: TextAlign.left, style: style),
        const SizedBox(height: 15),
        const Text(
          'A compiler creates the binary code from Dart source code. For mobile applications the source code is compiled for multiple processors ARM, ARM64, x64 and for both platforms.',
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: style,
        ),
        const SizedBox(height: 50),
        Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 15,
            children: [
              ZoomIn(
                delay: const Duration(seconds: 3),
                child: const _ConceptBox(
                  title: 'AOT - (Ahead Of Time)',
                  description:
                      'Works by compiling your code before it is “delivered” to whatever runtime environment runs the code.',
                ),
              ),
              FadeInRight(
                delay: const Duration(seconds: 5),
                child: const _ConceptBox(
                  title: 'JIT - (Just in Time)',
                  description:
                      'Means making “only what is needed, when it is needed, and in the amount needed".\nHot Reload - Hot Restart',
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class _ConceptBox extends StatelessWidget {
  const _ConceptBox({
    Key? key,
    required this.description,
    required this.title,
  }) : super(key: key);
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      constraints: const BoxConstraints(maxWidth: 300, minHeight: 150),
      decoration: BoxDecoration(
          color: AppColors.primaryBlue.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              color: AppColors.primaryBlue.withOpacity(0.7),
            )
          ]),
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
