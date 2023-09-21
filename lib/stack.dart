import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.yellow[400],
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.blue[400],
          ),
          Positioned(
              left: 20,
              // right: 20,
              // top: 20,
              child: Container(
                height: 250,
                width: 250,
                color: Colors.green[400],
              ))
        ],
      ),
    );
  }
}
