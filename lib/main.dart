import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter -pranjal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aditya vivek'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrName = ['pranjal', 'aditya', 'vivek', 'saura'];
    var collor = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(children: [
              Container(
                height: 100,
                color: collor[index],
                child: Center(
                  child: Text(
                    arrName[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ]),
          );
        },
        itemCount: arrName.length,
      ),

      //  Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: SingleChildScrollView(
      //       child: Column(
      //         children: [
      // Padding(
      //   padding: EdgeInsets.all(8),
      //   child: SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(children: [
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.green,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.lightBlue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.red,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.lightBlue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.blue,
      //           child: const Center(
      //             child: Text(
      //               "Abba ka daba",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.red,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.red,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.lightBlue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.blue,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.grey,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.blue,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.blue,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.grey,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.blue,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.grey,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.brown,
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.lightBlue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(right: 6),
      //           height: 100,
      //           width: 150,
      //           color: Colors.red[300],
      //           child: const Center(
      //             child: Text(
      //               "hello bois",
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.lightBlue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ])),
      // ),
      // const SizedBox(
      //     height: 20), // Add some spacing between the texts

      // SizedBox(height: 20),

      // const Text(
      //   "hello pranjal",
      //   style: TextStyle(
      //     fontSize: 18,
      //     color: Colors.black,
      //     fontWeight: FontWeight.normal,
      //   ),
      // ),
      // TextButton(
      //   child: Text("click me"),
      //   onPressed: () {
      //     print("hello pranjal");
      //   },
      //   onLongPress: () => {
      //     print("hello pranjal"),
      //   },
      // ),
      // const SizedBox(height: 20),
      // Container(
      //   height: 10,
      //   width: 50,
      //   color: Colors.grey,
      // ),
      // ElevatedButton(
      //     onPressed: () {
      //       print('hi');
      //     },
      //     child: Text("elevated button")),
      // const SizedBox(height: 100),
      // OutlinedButton(
      //     onPressed: () => {}, child: const Text("outlined button")),
      // const SizedBox(height: 20),
      // Center(
      //   child: Container(
      //       height: 100,
      //       width: 200,
      //       color: Colors.lightBlue,
      //       child: Image.asset('assets/images/logo.jpg')),
      // ),
      // const SizedBox(height: 20),
      // Container(
      //   height: 400,
      //   width: 400,
      //   child: Column(
      //     children: [
      //       const Row(children: [
      //         Text('a'),
      //         Text('b'),
      //         Text('c'),
      //         Text('d'),
      //       ]),
      //       const SizedBox(height: 20),
      //       InkWell(
      //           onTap: () {
      //             // give a pop of hello
      //             print("hello InkWell");
      //           },
      //           onDoubleTap: () => {print("Double InkWell")},
      //           onLongPress: () => {print("Long InkWell")},
      //           child: Image.asset('assets/images/logo.jpg')),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //           onPressed: () {}, child: Text("elevated button")),
      //     ],
      //   ),
      // )
      //     ],
      //   ),
      // )),

      //  Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const Text(
      //         'a',
      //         style: TextStyle(fontWeight: FontWeight.bold),
      //       ),
      //       const Text('b'),
      //       Text('c'),
      //       Text('d'),
      //       ElevatedButton(onPressed: () {}, child: Text("elevated button")),
      // ]
    );
  }
}
