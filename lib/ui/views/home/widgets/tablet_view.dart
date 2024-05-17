import 'dart:math';

import 'package:flutter/material.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: CustomPaint(
        painter: ShapePainter(random),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  final Random random;
  ShapePainter(this.random);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Draw random shapes
    for (int i = 0; i < 20; i++) {
      paint.color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      switch (random.nextInt(3)) {
        case 0: // Circle
          canvas.drawCircle(
            Offset(random.nextDouble() * size.width,
                random.nextDouble() * size.height),
            random.nextDouble() * 40 + 10,
            paint,
          );
          break;
        case 1: // Rectangle
          canvas.drawRect(
            Rect.fromLTWH(
              random.nextDouble() * size.width,
              random.nextDouble() * size.height,
              random.nextDouble() * 100 + 20,
              random.nextDouble() * 100 + 20,
            ),
            paint,
          );
          break;
        case 2: // Triangle
          Path path = Path();
          path.moveTo(
            random.nextDouble() * size.width,
            random.nextDouble() * size.height,
          );
          path.lineTo(
            random.nextDouble() * size.width,
            random.nextDouble() * size.height,
          );
          path.lineTo(
            random.nextDouble() * size.width,
            random.nextDouble() * size.height,
          );
          path.close();
          canvas.drawPath(path, paint);
          break;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
