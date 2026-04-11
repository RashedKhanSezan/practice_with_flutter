import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, child) => ResponsiveBreakpoints(
      breakpoints: const [
        Breakpoint(start: 0, end: 450, name: 'Mobile'),
        Breakpoint(start: 451, end: 800, name: 'Tablet'),
      ],
      child: child!,
    ),
    home: Response(),
  ));
}

class Response extends StatelessWidget {
  const Response({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          height: 200,
          width: ResponsiveValue<double>(context, conditionalValues: const [
            Condition.equals(name: 'Mobile', value: 200),
            Condition.equals(name: 'Tablet', value: 400),
            Condition.largerThan(name: 'Tablet', value: 1200),
          ]).value,
          child: Center(child: Text('rashed')),
        ),
      ),
    );
  }
}
