import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPainter(),
    );
  }
}

class MyPainter extends StatelessWidget {
  const MyPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lines "),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //   Offset startingPoint = Offset(0, size.height / 2);
    //   Offset endingPoint = Offset(size.width, size.height / 2);
    //   canvas.drawLine(startingPoint, endingPoint, paint);
    // }

    var path = Path();
    // path.moveTo(0, size.height / 2);
    // path.lineTo(size.width, size.height / 2);
    // canvas.drawPath(path, paint);

    path.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2), radius: 100));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
