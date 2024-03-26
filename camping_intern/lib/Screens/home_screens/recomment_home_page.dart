import 'package:camping_intern/models/model_recom_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecommentHomePage extends StatefulWidget {
  const RecommentHomePage({super.key});

  @override
  State<RecommentHomePage> createState() => _RecommentHomePageState();
}

class _RecommentHomePageState extends State<RecommentHomePage> {
  List<ModelRecomHomePage> dataRecom = [
    ModelRecomHomePage(
        'Lockness Lake', 'assets/images/image recom 1.png', '4.8k', 'USA'),
    ModelRecomHomePage(
        'Ice mountain', 'assets/images/image recom 2.png', '4.9k', 'Russia'),
    ModelRecomHomePage('Infinity field', 'assets/images/image recom 3.png',
        '100k', 'Netherlands'),
    ModelRecomHomePage(
        'Mountain', 'assets/images/image recom 1.png', '10k', 'Lao'),
  ];
  List<Widget> location = [
    const Text('USA'),
    const Text('Russia'),
    const Text('Netherlands'),
    const Text('Lao'),
  ];

  List<Widget> listName = [
    const Text('Lockness Lake'),
    const Text('Ice mountain'),
    const Text('Infinity field'),
    const Text('Mountain'),
  ];
  List<Widget> imageRecom = [
    Image.asset('assets/images/image recom 1.png'),
    Image.asset('assets/images/image recom 2.png'),
    Image.asset('assets/images/image recom 3.png'),
    Image.asset('assets/images/image recom 3.png'),
  ];
  List<Widget> rateRecom = [
    const Text('4.8k'),
    const Text('4.9k'),
    const Text('100k'),
    const Text('10k'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '  Recommended for you',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xfffff1a202c)),
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: dataRecom.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 202,
                  width: 342,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(dataRecom[index].imageRecom),
                      )),
                  child: SizedBox(
                    height: 58,
                    width: 315,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 13, right: 14, bottom: 10, top: 112),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataRecom[index].listNameRecom,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xfffff7fafc)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/location.svg',
                                  width: 6.13,
                                  height: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  dataRecom[index].location,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xfffff7fafc)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/icon_star.svg',
                                  width: 8.33,
                                  height: 7.92,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  dataRecom[index].rateRecom,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xfffff7fafc)),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  '(reviewer)',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xfffff7fafc)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
