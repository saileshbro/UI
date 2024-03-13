import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final double width;
  final Color bookLeftVerticalStrip;
  final Color bookBottomHorizontalStrip;
  final Color bookPagesColor;
  final Widget bookCover;
  const BookWidget({
    required this.bookLeftVerticalStrip,
    required this.bookBottomHorizontalStrip,
    required this.bookPagesColor,
    required this.bookCover,
    this.width = 50,
    super.key,
  });

  // 167 / 260
  @override
  Widget build(BuildContext context) {
    final height = (65 / 42) * width;
    final radiusRight = (15 / 168) * width;
    final radiusLeft = (25 / 168) * width;
    final radiusBookBottom = (26 / 168) * width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(radiusRight),
        bottomRight: Radius.circular(radiusRight),
        topLeft: Radius.circular(radiusLeft),
        bottomLeft: Radius.circular(radiusLeft),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: (35 / 168) * width,
              height: (256 / 260) * height,
              child: Container(
                decoration: BoxDecoration(
                  color: bookLeftVerticalStrip,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radiusLeft),
                    bottomLeft: Radius.circular(radiusLeft),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              width: ((168 + 10) / 168) * width,
              height: (52 / 260) * height,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: bookBottomHorizontalStrip,
                    width: (10 / 168) * width,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey,
                      bookPagesColor,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radiusBookBottom),
                    bottomLeft: Radius.circular(radiusBookBottom),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              width: (133 / 168) * width,
              height: (208 / 260) * height,
              child: bookCover,
            ),
          ],
        ),
      ),
    );
  }
}
