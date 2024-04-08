import 'package:flutter/material.dart';
import 'package:spendly/companents/my_button.dart';
import 'package:spendly/companents/my_textfield.dart';
import 'package:spendly/companents/square_tile.dart';
import 'package:spendly/sign%20in/login_page.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);

  // Text editing controllers
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Sign user up method
  void signUserUp(BuildContext context) {
    // Perform sign up logic here, without Firebase
    // For demonstration, let's just print the user's information
    print('Name: ${nameController.text}, Email: ${emailController.text}, Password: ${passwordController.text}');

    // Show success message
    showSuccessMessage(context);
  }

  void showSuccessMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(
            child: Text(
              "Account created successfully! Please log in.",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Logo
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/WhatsApp Image 2024-04-08 at 14.10.31_78b5cd06.jpg',
                    height: 150,
                    width: 150,
                  ),
                ),
                const SizedBox(height: 20),

                // Let's create an account for you!
                const Text(
                  'Let\'s create an account for you!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins-regular',
                  ),
                ),
                const SizedBox(height: 25),

                // Name field
                MyTextField(
                  controller: nameController,
                  hintText: 'Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // Email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // Password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // Confirm Password textfield
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                // Forgot password
                const SizedBox(height: 10),

                // Sign up button
                MyButton(
                  text: "Sign Up",
                  onTap: () => signUserUp(context),
                ),

                const SizedBox(height: 20),

                // Or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'poppins-regular',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // Google sign in button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/google.png'),
                  ],
                ),

                // Already have an account? Login now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
                      },
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
