import 'package:flutter/material.dart';

class Cardd extends StatefulWidget {
  const Cardd({super.key});

  @override
  State<Cardd> createState() => _CardState();
}

class _CardState extends State<Cardd> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Card',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
