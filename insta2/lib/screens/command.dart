import 'package:flutter/material.dart';

class Command extends StatefulWidget {
  const Command({super.key});

  @override
  State<Command> createState() => _CommandState();
}

class _CommandState extends State<Command> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'insta2/lib/images/Biyu.png',
          width: 30, height: 30,
        ),
      ),
    );
  }
}
