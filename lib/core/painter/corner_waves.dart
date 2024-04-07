import 'package:flutter/material.dart';

// Use:
// Container(
//   width: double.infinity,
//   height: MediaQuery.of(context).size.height,
//   child: Stack(
//     children: [
//       Positioned(
//         top: 0,
//         left: 0,
//         child: ClipPath(
//           clipper: CornerWaves(),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 160,
//             color: Colors.lightGreen,
//           ),
//         ),
//       ),
//       Positioned(
//         bottom: 0,
//         right: 0,
//         child: ClipPath(
//           clipper: BottomCornerWaves(),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 160,
//             color: Colors.lightGreen,
//           ),
//         ),
//       ),
//       Container(
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text('Body Content')],
//         ),
//       )
//     ],
//   ),
// ),

class CornerWaves extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var p = Path();
    p.lineTo(0, 0);
    p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, height);
    p.lineTo(width, 0);
    p.close();

    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class BottomCornerWaves extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var p = Path();
    p.lineTo(0, 0);
    p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, height);
    p.lineTo(0, height);
    p.close();

    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
