import 'package:flutter/material.dart';

class FirstFlashPage extends StatelessWidget {
  const FirstFlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Vector.png',
                height: 227.27,
                width: 209.49,
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Loading. . .',
                style: TextStyle(color: Color(0xfff2e8080), fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
