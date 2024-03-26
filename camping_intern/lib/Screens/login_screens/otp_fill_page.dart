import 'package:camping_intern/Screens/login_screens/done_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpFillPage extends StatefulWidget {
  const OtpFillPage({super.key});

  @override
  State<OtpFillPage> createState() => _OtpFillPageState();
}

class _OtpFillPageState extends State<OtpFillPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xfffedf2f7),
        appBar: AppBar(
            backgroundColor: const Color(0xfffedf2f7),
            title: const Text(
              'Back',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfff474a4a)),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OTP Verification',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff1a202c)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Enter the verification code we just sent on your\n email address.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff4a5568)),
                ),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  child: OtpTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    enabledBorderColor: const Color(0xfffa0aec0),
                    numberOfFields: 6,
                    showFieldAsBox: true,
                    focusedBorderColor: const Color(0xfff2e8080),
                    borderRadius: BorderRadius.circular(8),
                    fieldWidth: 50,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {},
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textStyle: const TextStyle(
                        fontSize: 24, color: Color(0xfff2e8080)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    'Resend the code after 02:59',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff4a5568)),
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
                        builder: (context) => const DonePassWord(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF2E8080),
                      minimumSize: const Size(389, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xfffffffff),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 321,
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Didn’t received code?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffff1e232c),
                          ),
                        ),
                        TextSpan(
                          text: 'Resend',
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
    );
  }
}
