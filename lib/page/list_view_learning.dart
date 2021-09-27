// import 'package:flutter/material.dart';
//
// class ListViewLearning extends StatefulWidget {
//   const ListViewLearning({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<ListViewLearning> createState() => _ListViewLearningState();
// }
//
// class _ListViewLearningState extends State<ListViewLearning> {
//   @override
//   Widget build(BuildContext context) {
//     var lists = ["item 1", "item 2", "item 3", "item 4", "item 5"];
//
//     // final Section section;
//
//     return Scaffold(
//         appBar: AppBar(title: const Text("List")),
//         body:Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("session title"),
//             // Container(
//             //   height: section.axis == Axis.horizontal ? 100 : 700,  // I just set these values
//             //   width: section.axis == Axis.horizontal ? 350 : 100,   // to fit with my device.
//             //   child: ListView.separated(                            // If you want to fit for
//             //     shrinkWrap: true,                                   // all devices, use MediaQuery
//             //     scrollDirection: section.axis,
//             //     physics: section.axis == Axis.vertical
//             //         ? NeverScrollableScrollPhysics()
//             //         : null,
//             //     itemCount: section.itemList.length,
//             //     itemBuilder: (BuildContext context, int index) {
//             //       return Container(
//             //         height: 100,
//             //         width: 100,
//             //         color: Colors.red,
//             //       ); // Just to test if it works
//             //     },
//             //     separatorBuilder: (BuildContext context, int index) {
//             //       double paddingBetween = 10;
//             //       if (section.axis == Axis.horizontal) {
//             //         return SizedBox(width: paddingBetween);
//             //       } else {
//             //         return SizedBox(height: paddingBetween);
//             //       }
//             //     },
//             //   ),
//             // ),
//           // ],
//         // );
//
//     // );
//   }
// }
