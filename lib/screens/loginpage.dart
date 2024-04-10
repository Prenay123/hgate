import 'package:flutter/material.dart';
import 'package:hgate/screens/registration.dart';
import 'package:hgate/widgets/custom_button.dart';
import 'package:hgate/widgets/txt_field.dart';
import 'package:hgate/screens/homepage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController mobileController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Color.fromARGB(255, 30, 183, 229), // Start color
        //       Color.fromARGB(255, 60, 168, 201),
        //       Color.fromARGB(255, 101, 193, 221), // End color
        //     ],
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // First Row with 'HGATE' text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HGATE',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0), // Spacer

              // Second Row with 'Explore the lavish lifestyle...' text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Explore the lavish lifestyle within the \n confines of gated exclusivity',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'DancingScript', // Dancing Script font
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0), // Spacer

              // Third Row with Text Field and Login Button
              NumberTextField(
                hintText: 'Mobile Number',
                controller: mobileController,
              ),
              const SizedBox(height: 16.0), // Spacer
              CustomButton(
                text: 'Send OTP',
                onPressed: () {
                  // Add login functionality here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),

              // Fourth Row with "Don't have an account? Sign up" text
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .color, // Use default text color
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // You can customize the text style of the Sign up text here
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
    );
  }
}
