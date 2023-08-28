import 'package:firstapp/card.dart';
import 'package:firstapp/date_time.dart';
import 'package:firstapp/input.dart';
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
          textTheme: TextTheme(
              displayLarge: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.yellow.shade200,
                  fontSize: 30,
                  fontFamily: 'RobotoMono')),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 34, 196, 255)),
          useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Pranjal Choudhary'),
        // home: InputWidget(),/
        home: CurrDateTime());
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
    var arrName = [
      'pranjal',
      'aditya',
      'vivek',
      'saura',
      'Rohan',
      'Rahul',
      'Raj',
      'Ravi',
      'Rajat'
    ];
    var collor = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.brown,
      Colors.black
    ];
    var AllIcons = [
      "add",
      "email",
      "circle",
      "description",
      "comment ",
      "lock",
      "description",
      "comment ",
      "lock"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Expanded(
      //         flex: 10,
      //         child: ListView.separated(
      //           itemBuilder: (context, index) {
      //             return Padding(
      //               padding: const EdgeInsets.all(20),
      //               child: SingleChildScrollView(
      //                 scrollDirection: Axis.horizontal,
      //                 child: Column(
      //                   children: [
      //                     Row(
      //                       children: [
      //                         Container(
      //                           height: 110,
      //                           width: 100,
      //                           child: Center(
      //                             child: Text(
      //                               index.toString(),
      //                               style: const TextStyle(
      //                                 fontSize: 20,
      //                                 color: Colors.white,
      //                               ),
      //                             ),
      //                           ),
      //                           decoration: BoxDecoration(
      //                             color: collor[collor.length - 1 - index],
      //                             borderRadius: BorderRadius.only(
      //                               topLeft: Radius.elliptical(5, 10),
      //                               bottomRight: Radius.circular(10),
      //                             ),
      //                             border: Border.all(
      //                               color: const Color.fromARGB(255, 255, 0, 0),
      //                               width: 2,
      //                             ),
      //                             boxShadow: [
      //                               BoxShadow(
      //                                 color: collor[index],
      //                                 blurRadius: 11,
      //                                 spreadRadius: 10,
      //                               )
      //                             ],
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 100,
      //                           width: 20,
      //                         ),
      //                         Container(
      //                           height: 100,
      //                           width: 500,
      //                           color: collor[index],
      //                           child: Center(
      //                             child: Text(
      //                               arrName[index],
      //                               style: const TextStyle(
      //                                 fontSize: 20,
      //                                 color: Color.fromARGB(255, 244, 3, 212),
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 100,
      //                           width: 200,
      //                           child: Image.asset('assets/images/logo.jpg'),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             );
      //           },
      //           itemCount: arrName.length,
      //           separatorBuilder: (BuildContext context, int index) {
      //             return const Divider(
      //               height: 5,
      //               thickness: 4,
      //             );
      //           },
      //         ),
      //       ),
      //       SizedBox(
      //           height: 20), // Space between the two ListViews and the Text
      //       Expanded(
      //         child: Text(
      //           'Learning Flutter',
      //           style: TextStyle(
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 20), // Additional space after the Text
      //     ],
      //   ),
      // ),

      body: Center(
        child: CircleAvatar(
          child: Text(
            "papu",
            style: (Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.bold)),
          ),
          maxRadius: 60,
          // backgroundImage:f AssetImage('assets/images/logo.jpg'),
          backgroundColor: Color.fromARGB(255, 179, 201, 67),
        ),

        //  ListView.separated(
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       onTap: () {
        //         print("hello");
        //       },

        //       leading: Text('$index'),
        //       title: Text(
        //         arrName[index],
        //         style: TextStyle(color: collor[index]),
        //       ),
        //       subtitle: Text(collor[index].toString()),
        //       trailing: Icon(Icons.add),
        //     );

        // Padding(
        //     padding: const EdgeInsets.all(20),
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Column(children: [
        //         Row(children: [
        //           Container(
        //             height: 110,
        //             child: Center(
        //                 child: Text(
        //               index.toString(),
        //               style: const TextStyle(
        //                   fontSize: 20, color: Colors.white),
        //             )),
        //             width: 100,
        //             decoration: BoxDecoration(
        //                 color: collor[collor.length - 1 - index],
        //                 borderRadius: BorderRadius.only(
        //                     topLeft: Radius.elliptical(5, 10),
        //                     bottomRight: Radius.circular(10)),
        //                 // borderRadius: BorderRadius.circular(10),
        //                 border: Border.all(
        //                     color: const Color.fromARGB(255, 255, 0, 0),
        //                     width: 2),
        //                 boxShadow: [
        //                   BoxShadow(
        //                     color: collor[index],
        //                     blurRadius: 11,
        //                     spreadRadius: 10,
        //                   )
        //                 ]),
        //           ),
        //           SizedBox(
        //             height: 100,
        //             width: 20,
        //           ),
        //           Container(
        //             margin: EdgeInsets.all(5),
        //             height: 100,
        //             width: 500,
        //             color: collor[index],
        //             child: Center(
        //               child: Padding(
        //                 padding: EdgeInsets.only(right: 50),
        //                 child: Text(
        //                   arrName[index],
        //                   style: const TextStyle(
        //                     fontSize: 20,
        //                     color: Color.fromARGB(255, 244, 3, 212),
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           SizedBox(
        //             height: 100,
        //             width: 200,
        //             child: Image.asset('assets/images/logo.jpg'),
        //           ),
        //         ]),
        //       ]),
        //     ));
        //   },
        //   itemCount: arrName.length,
        //   separatorBuilder: (BuildContext context, int index) {
        //     return const Divider(
        //       height: 5,
        //       thickness: 4,
        //     );
        //   },
        // ),
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
