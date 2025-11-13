import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basics/check_provider.dart';

class HomeScreen01 extends StatefulWidget {
  const HomeScreen01({super.key});

  @override
  State<HomeScreen01> createState() => _HomeScreen01State();
}

class _HomeScreen01State extends State<HomeScreen01> {
  final TextEditingController _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Access the provider instance
    final checkProvider = Provider.of<CheckProvider>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: _myController,
                keyboardType: TextInputType.number, // Suggest numerical input
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(77, 219, 3, 3),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Call the provider's method to process the text and update the state
                checkProvider.checkScore(_myController.text);
              },
              child: const Text('Check'),
            ),
            const SizedBox(height: 10),
            // Consumer listens for changes and displays the result text
            Consumer<CheckProvider>(
              builder: (context, provider, child) {
                return Text(
                  provider.resultText,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
