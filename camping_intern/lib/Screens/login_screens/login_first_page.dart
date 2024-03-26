import 'package:camping_intern/Screens/login_screens/otp_fill_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginFirsPage extends StatefulWidget {
  const LoginFirsPage({super.key});

  @override
  State<LoginFirsPage> createState() => _LoginFirsPageState();
}

class _LoginFirsPageState extends State<LoginFirsPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFEDF2F7),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome back! Glad \n to see you, Again!',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  const Text(
                    'Enter your phone number',
                    style: TextStyle(
                        color: Color(0xfff4a5568),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                                hintText: 'Phone number',
                                hintStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xfffa0aec0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xfffa0aec0)),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpFillPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF2E8080),
                        minimumSize: const Size(389, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xfffffffff),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCBD5E0),
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or Login with',
                          style: TextStyle(
                            color: Color(0xfff4a5568),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCBD5E0),
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 108.49,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xfffffffff),
                          border: Border.all(
                            color: const Color(0xfffe2e8f0),
                            width: 1,
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                                'assets/icons/facebook_ic.svg')),
                      ),
                      const SizedBox(
                        width: 8.27,
                      ),
                      Container(
                        width: 108.49,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xfffffffff),
                          border: Border.all(
                            color: const Color(0xfffe2e8f0),
                            width: 1,
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child:
                                SvgPicture.asset('assets/icons/google_ic.svg')),
                      ),
                      const SizedBox(
                        width: 8.27,
                      ),
                      Container(
                        width: 108.49,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xfffffffff),
                          border: Border.all(
                            color: const Color(0xfffe2e8f0),
                            width: 1,
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset('assets/icons/Vector.svg')),
                      ),
                      const SizedBox(
                        width: 8.27,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 234,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffff1e232c),
                            ),
                          ),
                          TextSpan(
                            text: 'Register Now',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF2E8080),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
