import 'package:flutter/material.dart';
import 'package:twitch_clone/screen/login_screen.dart';
import 'package:twitch_clone/screen/signup_screem.dart';
import 'package:twitch_clone/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to\n Twitch',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomButton(
                    text: "Log in",
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    }),
              ),
              CustomButton(
                  text: "Sign Up",
                  onTap: () {
                    Navigator.pushNamed(context, SignupScreen.routeName);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
