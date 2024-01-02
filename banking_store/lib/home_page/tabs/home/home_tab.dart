import 'dart:math';

import 'package:banking_store/notification_page/notification_page.dart';
import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          bottom: MediaQuery.of(context).size.height / 2.1,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Container(
              color: StoreColors.darkBrown,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 140,
                    left: -180,
                    height: 450,
                    child: Transform.flip(
                      flipY: true,
                      child: Transform.rotate(
                        angle: pi / 2.1,
                        child: Image(
                          image: Svg('assets/svgs/svg-path.svg'),
                          color: StoreColors.darkGreen,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -350,
                    right: -300,
                    height: 600,
                    child: Transform.flip(
                      flipY: false,
                      child: Transform.rotate(
                        angle: pi,
                        child: Image(
                          image: Svg('assets/svgs/svg-path.svg'),
                          color: StoreColors.darkTeal,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -80,
                    right: -150,
                    height: 330,
                    child: Transform.flip(
                      flipY: false,
                      flipX: true,
                      child: Transform.rotate(
                        angle: pi,
                        child: Image(
                          image: Svg('assets/svgs/svg-path.svg'),
                          color: StoreColors.ligthPink,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const NotificationPage(),
                          ),
                        );
                      },
                      child: Icon(
                        cupertino.CupertinoIcons.slider_horizontal_3,
                        color: StoreColors.ligthPink.withOpacity(.9),
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/profile/profile.jpeg',
                        width: 95,
                        height: 95,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome back,',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.9),
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'Julie Bell',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 50),
                // Make a Card Container with shadow
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
