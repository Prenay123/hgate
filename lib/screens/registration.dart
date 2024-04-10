import 'package:flutter/material.dart';
import 'package:hgate/widgets/custom_button.dart';
import 'package:hgate/widgets/txt_field.dart';
// import 'package:hgate/screens/loginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController communityController = TextEditingController();
  final TextEditingController apartmentController = TextEditingController();
  final TextEditingController blockController = TextEditingController();

  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              hintText: 'Name',
              controller: nameController,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 16.0),
            NumberTextField(
              hintText: 'Phone Number',
              controller: phoneController,
            ),
            const SizedBox(height: 16.0),
            // CustomTextField(
            //   hintText: 'Community',
            //   controller: communityController,
            // ),
            // const SizedBox(height: 16.0),
            // CustomTextField(
            //   hintText: 'Block',
            //   controller: apartmentController,
            // ),
            // const SizedBox(height: 16.0),
            // CustomTextField(
            //   hintText: 'Flat No.',
            //   controller: blockController,
            // ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      agreedToTerms = value!;
                    });
                  },
                ),
                Text(
                  'I agree to Terms & Conditions \n and Privacy Policy',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Register',
              onPressed: agreedToTerms
                  ? () {
                      // Add registration functionality here
                      Navigator.pop(context);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
