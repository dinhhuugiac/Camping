import 'package:camping_intern/models/model_guide_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GuiderHomePage extends StatefulWidget {
  const GuiderHomePage({super.key});

  @override
  State<GuiderHomePage> createState() => _GuiderHomePageState();
}

class _GuiderHomePageState extends State<GuiderHomePage> {
  List<ModelGuideHomePage> dataGuide = [
    ModelGuideHomePage('Enjoy your trip', 'assets/images/image guide 1.png',
        'Tips to help you have memorable mome'),
    ModelGuideHomePage('Make a plan', 'assets/images/image guide 2.png',
        'Himalayan mountain peak'),
    ModelGuideHomePage('Travel articles', 'assets/images/image guide 3.png',
        'What tools you need to prepare'),
    ModelGuideHomePage('Tool preparation', 'assets/images/image guide 4.png',
        'Catch weather information quickly'),
  ];

  List<Widget> imageGuide = [
    Image.asset('assets/images/image guide 1.png'),
    Image.asset('assets/images/image guide 2.png'),
    Image.asset('assets/images/image guide 3.png'),
    Image.asset('assets/images/image guide 4.png'),
  ];
  List<Widget> titleGuide = [
    const Text('Enjoy your trip'),
    const Text('Make a plan'),
    const Text('Travel articles'),
    const Text('Tool preparation'),
  ];
  List<Widget> describeGuide = [
    const Text('Tips to help you have memorable mome'),
    const Text('Himalayan mountain peak'),
    const Text('What tools you need to prepare'),
    const Text('Catch weather information quickly'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ' Guides to help you',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffff1a202c)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 597,
              width: 390,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: MasonryGridView.count(
                itemCount: dataGuide.length,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(dataGuide[index].imageGuide),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          dataGuide[index].titleGuide,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xfff2d3748)),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          dataGuide[index].describeGuide,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff2d3748)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
