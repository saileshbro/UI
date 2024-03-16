import 'package:book_store/pages/home_page.dart';
import 'package:book_store/utils/utils_colors.dart';
import 'package:book_store/widgets/book_widget_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 28,
        right: 28,
        top: 75,
        bottom: 100,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            SizedBox(
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'images/gradient.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 25,
                    right: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        height: 120,
                        color: BookStoreColors.veryLightSand,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: Image.asset(
                                'images/profile.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Text(
                                    'Top 50 Classic books',
                                    style: TextStyle(
                                      color: BookStoreColors.darkBrown,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Discover the most influential books in classic literature.',
                                    style: TextStyle(
                                      color: BookStoreColors.darkBrown.withOpacity(.8),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
