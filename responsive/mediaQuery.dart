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
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("LayoutBuilder Demo"),
          centerTitle: true,
        ),
        body: size.width > 600
            ?
            //  Tablet / Large screen layout
            Center(
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
              )
            :
            //  Mobile layout
            Center(
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
              ));
  }
}
