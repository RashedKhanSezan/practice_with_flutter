import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 245, 249),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    color: const Color.fromARGB(139, 197, 190, 190),
                    offset: Offset(1, 1)),
              ],
            ),
            width: 550,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: Color.fromARGB(255, 6, 185, 216),
                        child: Icon(
                          Icons.face,
                          size: 52,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Join Us',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor:
                                    const Color.fromARGB(255, 241, 245, 249),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.perm_identity,
                                  size: 22,
                                  color: Color.fromARGB(255, 6, 185, 216),
                                ),
                                hintText: 'First Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor:
                                    const Color.fromARGB(255, 241, 245, 249),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.perm_identity,
                                  size: 22,
                                  color: Color.fromARGB(255, 6, 185, 216),
                                ),
                                hintText: 'Last Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 241, 245, 249),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 22,
                          color: Color.fromARGB(255, 6, 185, 216),
                        ),
                        hintText: 'Email Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFF1F5F9),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock,
                            size: 22, color: Color(0xFF06B6D4)),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFF1F5F9),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_reset,
                            size: 22, color: Color.fromARGB(255, 6, 182, 212)),
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 6, 185, 216),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 6, 185, 216),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Center(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 6, 185, 216),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 185, 216),
                        ),
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
