import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FractionallySizedBox Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(80),
                  child: Container(
                    padding: EdgeInsets.all(50),
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text(
                        'Rashed',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Text('Rashedkhansezan'))
            ],
          ),
        ),
      ),
    );
  }
}
