import 'package:flutter/material.dart';
import 'package:login_screen/components/button.dart';
import 'package:login_screen/components/logos.dart';

import '../components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // controle de edição de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Metodo de login
  void loginUser() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Logo
              const Icon(
                Icons.android,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Bem vindo de volta, sentimos sua falta!
              Text(
                'Bem vindo de volta, estavamos com saudade!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),

              // Login textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // senha textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // esqueçeu sua senha?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // login com button
              MyButton(
                onTap: loginUser,
              ),

              const SizedBox(height: 25),

              // ou continue com
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
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[700],
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
              const SizedBox(
                height: 50,
              ),
              // google or apple
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/images/google-37.png'),

                  SizedBox(width: 25),
                  // apple button
                  SquareTile(imagePath: 'lib/images/applelogo.png'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
