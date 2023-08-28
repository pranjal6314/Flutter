import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final inputcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: inputcontroller,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.blue, width: 1),
                        ),
                        suffixText: "hello pranjal",
                        suffixIcon: IconButton(
                            onPressed: () {
                              print("hello pranjal");
                            },
                            icon: Icon(
                              Icons.access_alarm,
                              color: Colors.brown,
                            ))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordcontroller,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2),
                      ),
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: 'disabled',
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.yellow, width: 2),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String name = inputcontroller.text;
                        String pass = passwordcontroller.text;
                        print("name -> ${name} password ->  ${pass} ");
                      },
                      child: Text("Submit")),
                ],
              ))),
    );
  }
}
