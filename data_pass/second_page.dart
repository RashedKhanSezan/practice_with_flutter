import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, this.sp});
  final sp;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text('This is second page ${widget.sp}'),
      ),
    );
  }
}
