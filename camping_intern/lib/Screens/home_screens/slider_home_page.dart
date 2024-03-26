import 'package:camping_intern/models/model_slider_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderHomePage extends StatefulWidget {
  const SliderHomePage({
    super.key,
  });

  @override
  State<SliderHomePage> createState() => _SliderHomePageState();
}

class _SliderHomePageState extends State<SliderHomePage> {
  List<ModelSliderHonmepage> dataSlider = [
    ModelSliderHonmepage('Lake', 'assets/images/image slider 1.png'),
    ModelSliderHonmepage('Beach', 'assets/images/image slider 2.png'),
    ModelSliderHonmepage('Forest', 'assets/images/image slider 3.png'),
    ModelSliderHonmepage('Mountain', 'assets/images/image slider 4.png'),
  ];

  List<Widget> titleSlider = [
    const Text('Lake'),
    const Text('Beach'),
    const Text('Forest'),
    const Text('Mountain'),
  ];
  List<Widget> imageSlider = [
    Image.asset('assets/images/image slider 1.png'),
    Image.asset('assets/images/image slider 2.png'),
    Image.asset('assets/images/image slider 3.png'),
    Image.asset('assets/images/image slider 4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff1a202c)),
                ),
                Container(
                  child: Row(
                    children: [
                      const Text(
                        'see more',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff2e8080)),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset('assets/icons/arrow.svg')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: dataSlider.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 80,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(dataSlider[index].imageSlider))),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.3),
                                    Colors.black.withOpacity(0.05),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.center),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 30, right: 43, left: 16),
                            child: Container(
                              child: Text(
                                dataSlider[index].titleSlider,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xfffffffff)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ));
              }),
        )
      ],
    );
  }
}
