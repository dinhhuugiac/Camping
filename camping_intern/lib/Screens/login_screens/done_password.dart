import 'package:flutter/material.dart';

import '../home_screens/home_page.dart';

class DonePassWord extends StatefulWidget {
  const DonePassWord({super.key});

  @override
  State<DonePassWord> createState() => _DonePassWordState();
}

class _DonePassWordState extends State<DonePassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Sticker.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'You have successfully',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'registered',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Wish you have wonderful expedition',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 170,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF2E8080),
                      minimumSize: const Size(389, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xfffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
