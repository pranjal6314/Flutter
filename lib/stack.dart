import 'package:firstapp/custom_button.dart';
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
              )),
          Positioned(
            left: 40,
            top: 30,
            child: Container(
              // width: 100,
              child: MyButton(
                btnName: 'btn',
                btnColor: Colors.purple[400],
                icon: const Icon(Icons.lock),
                callBack: () {
                  print("Lock");
                },
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 30,
            child: Center(
              // height: 100,
              // width: 100,
              child: MyButton(
                btnName: 'btn',
                btnColor: Colors.red[400],
                icon: const Icon(Icons.play_arrow),
                callBack: () {
                  print("Play");
                },
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 90,
            child: Center(
              // height: 100,
              // width: 100,
              child: MyButton(
                btnName: 'btn',
                btnColor: Colors.blueGrey[400],
                icon: const Icon(Icons.mail),
                callBack: () {
                  print("Mail");
                },
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 90,
            child: Center(
              // height: 100,
              // width: 100,
              child: MyButton(
                btnName: 'btn',
                btnColor: Colors.pink[400],
                icon: const Icon(Icons.login),
                callBack: () {
                  print("Login");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
