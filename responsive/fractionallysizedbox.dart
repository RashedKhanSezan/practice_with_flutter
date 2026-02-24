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
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.6,
                  widthFactor: 0.2,
                  child: Container(
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
              Text('Rashedkhansezan')
            ],
          ),
        ),
      ),
    );
  }
}
