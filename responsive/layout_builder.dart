import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder Demo"),
        centerTitle: true,
      ),
      body: 
      LayoutBuilder(
        builder: (context, constraints) {
          //  Check screen width

          final size = MediaQuery.of(context).size;
          if (size.width > 600) {
            //  Tablet / Large screen layout
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: const Center(child: Text("Left")),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: const Center(child: Text("Right")),
                  ),
                ],
              ),
            );
          } else {
            //  Mobile layout
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: const Center(child: Text("Top")),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: const Center(child: Text("Bottom")),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
