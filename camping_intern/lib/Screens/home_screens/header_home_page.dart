import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderHomePage extends StatefulWidget {
  const HeaderHomePage({super.key});

  @override
  State<HeaderHomePage> createState() => _HeaderHomePageState();
}

class _HeaderHomePageState extends State<HeaderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 191,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage('assets/images/image 3.png'),
                fit: BoxFit.fill,
              )),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 13, top: 50),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Let"s start a new adventure \nTasha',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfffffffff)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/notice.svg',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/images/Ellipse 73.png',
                            width: 42,
                            height: 42,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 292,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            SvgPicture.asset(
                              'assets/icons/start icon.svg',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10.5,
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: 8, left: 8, right: 8, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Where are you going?',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffff718096)),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Explore new lands, conquer big mountai',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffffa0aec0)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SvgPicture.asset('assets/icons/end icon.svg'),
                            const SizedBox(
                              width: 24,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                          width: 42,
                          height: 42,
                          decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF), shape: BoxShape.circle),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/edit.svg',
                              width: 16.15,
                              height: 16.15,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot camp',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff2e8080)),
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
      ],
    );
  }
}
