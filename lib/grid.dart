import 'package:flutter/material.dart';

class UsingGrid extends StatefulWidget {
  const UsingGrid({super.key});

  @override
  State<UsingGrid> createState() => _UsingGridState();
}

class _UsingGridState extends State<UsingGrid> {
  @override
  Widget build(BuildContext context) {
    var colorlist = [
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
    return _mygrid(colorlist);
    // GridView.count(
    //     crossAxisCount: 3,
    //     crossAxisSpacing: 11,
    //     mainAxisSpacing: 11,
    //     children: [
    //       Container(
    //         color: colorlist[0],
    //       ),
    //       Container(
    //         color: colorlist[1],
    //       ),
    //       Container(
    //         color: colorlist[2],
    //       ),
    //       Container(
    //         color: colorlist[3],
    //       ),
    //       Container(
    //         color: colorlist[4],
    //       ),
    //       Container(
    //         color: colorlist[5],
    //       ),
    //       Container(
    //         color: colorlist[6],
    //       ),
    //       Container(
    //         color: colorlist[7],
    //       ),
    //       Container(
    //         color: colorlist[8],
    //       ),
    //     ]
    // children: [
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[0],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[1],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[2],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[3],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[4],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[5],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[6],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[7],
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     color: colorlist[8],
    //   ),
    // ),
    // ],
    // );
  }

  GridView _mygrid(List<Color> colorlist) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, crossAxisSpacing: 11, mainAxisSpacing: 11),
        itemBuilder: (context, index) {
          return Container(
            color: colorlist[index],
          );
        },
        itemCount: colorlist.length);
  }
}
