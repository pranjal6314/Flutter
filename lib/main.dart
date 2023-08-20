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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: const Center(
      // child: Column(
      // children: [
      // Container(
      //   height: 100,
      //   width: 200,
      //   color: Colors.yellow,
      //   child: const Center(
      //     child: Text(
      //       "hello bois",
      //       style: TextStyle(
      //         fontSize: 20,
      //         color: Colors.lightBlue,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      //   SizedBox(height: 20), // Add some spacing between the texts
      // const Text(
      //   "hello pranjal",
      //   style: TextStyle(
      //     fontSize: 18,
      //     color: Colors.black,
      //     fontWeight: FontWeight.normal,
      //   ),
      // ),
      // TextButton(
      //   child: const Text("click me"),
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
      //     child: const Text("elevated button")),
      // const SizedBox(height: 20),
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

      // ],
      // ),
      // ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'a',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('b'),
            Text('c'),
            Text('d'),
            ElevatedButton(onPressed: () {}, child: Text("elevated button")),
          ]),
      // const Row(children: [
      //     Text('a'),
      //     Text('b'),
      //     Text('c'),
      //     Text('d'),
      //   ]),
    );
  }
}
