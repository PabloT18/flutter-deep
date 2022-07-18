part of '../../conceptos_page.dart';

class ConceptosWidgets extends StatelessWidget {
  const ConceptosWidgets({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 26);
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        children: [
          const SizedBox(height: 25),
          const Center(
            child: Text(
              'Widgets',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: FadeInImage(
              image: const NetworkImage(
                  'https://img.brickscout.com/d2/c2/04/24/e3/7d/42/1b/99/f8/db/32/f4/ab/2d/5f/750x750.png'),
              height: responsive.hp(20),
              placeholder: const AssetImage('assets/images/logo.png'),
            ),
          ),
          const Center(
              child: Text('Everything in Flutter are Widgets', style: style)),
          const SizedBox(height: 15),
          const Center(
              child: Text('Class that defines a specific UI element',
                  style: style)),
          const SizedBox(height: 50),
          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 15,
              children: [
                FadeIn(
                  delay: const Duration(seconds: 3),
                  child: _ConceptBoxWidget(
                      // title: 'AOT - (Ahead Of Time)',
                      title: RichText(
                        text: const TextSpan(
                          text: 'State',
                          children: [
                            TextSpan(
                                text: 'less',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Widget'),
                          ],
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      description: Image.asset(
                        'assets/images/lego.png',
                        height: responsive.hp(15),
                      )),
                ),
                FadeIn(
                  delay: const Duration(seconds: 3),
                  child: _ConceptBoxWidget(
                      // title: 'JIT - (Just in Time)',
                      title: RichText(
                        text: const TextSpan(
                          text: 'State',
                          children: [
                            TextSpan(
                                text: 'full',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Widget'),
                          ],
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      description:
                          _WidgetStatefullExpamle(responsive: responsive)),
                ),
              ],
            ),
          ),
        ]);
  }
}

class _ConceptBoxWidget extends StatelessWidget {
  const _ConceptBoxWidget({
    Key? key,
    required this.description,
    required this.title,
  }) : super(key: key);
  final Widget description;
  final RichText title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 220,
      width: 300,
      decoration: BoxDecoration(
        border:
            Border.all(color: AppColors.primaryBlue.withOpacity(0.9), width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          title,
          const Spacer(),
          description,
          const Spacer(),
        ],
      ),
    );
  }
}

class _WidgetStatefullExpamle extends StatefulWidget {
  const _WidgetStatefullExpamle({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  State<_WidgetStatefullExpamle> createState() =>
      _WidgetStatefullExpamleState();
}

class _WidgetStatefullExpamleState extends State<_WidgetStatefullExpamle> {
  bool color = false;
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.blue),
          color: Colors.blue.shade200,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            '$value',
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                value++;
              });
            },
            mini: true,
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
