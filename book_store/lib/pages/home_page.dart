import 'package:book_store/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 200,
                width: 350,
                color: BookStoreColors.darkBlue,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-1.9, 1),
                            colors: [
                              BookStoreColors.veryLightSand,
                              BookStoreColors.darkBlue,
                              BookStoreColors.darkGreen,
                              Colors.yellow,
                              BookStoreColors.darkRed,
                            ],
                            radius: 3,
                            focalRadius: 10,
                            stops: [0, 0.3, 0.464, 0.665, 1],
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(-0.9, -1.7),
                            colors: [
                              BookStoreColors.darkRed,
                              BookStoreColors.darkRed.withOpacity(0.3),
                            ],
                            radius: 1,
                            focalRadius: 1,
                            stops: [0, 1],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /* BookWidget(
              bookLeftVerticalStrip: Colors.red,
              bookBottomHorizontalStrip: Colors.red,
              bookPagesColor: Colors.red,
              bookCover: Icon(Icons.book, size: 50, color: Colors.red),
            ), */
            Image.asset('images/books.png'),
          ],
        ),
      ),
    );
  }
}
