import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekber_assignment3/utils/textfield.dart';
import 'package:tekber_assignment3/pages/map_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26.0,
              vertical: 86.0,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Hello Again!',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Walk down your memory lane.',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextField(
                          hintText: 'Username',
                          textController: usernameController,
                          leftIcon: Icons.person,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppTextField(
                          hintText: 'Password',
                          textController: passwordController,
                          isObsecure: !isPasswordVisible,
                          rightIcon: isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onRightIconPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          leftIcon: Icons.lock,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Get.to(() => const MapScreen());
                            },
                            child: Container(
                              width: 310,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(
                                  255, 12, 29, 84,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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