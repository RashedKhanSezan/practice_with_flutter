import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.amberAccent,
            ),
            Positioned(
              bottom: 0,
              left: 80,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 10),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(150)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
