import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            // Menu icons row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  color: StoreColors.darkGreen.withOpacity(.9),
                  size: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: StoreColors.darkGreen.withOpacity(.9),
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    Icon(
                      cupertino.CupertinoIcons.add_circled_solid,
                      color: StoreColors.darkGreen.withOpacity(.9),
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text(
              'Notifications',
              softWrap: true,
              maxLines: 2,
              style: TextStyle(
                color: StoreColors.darkTeal,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: StoreColors.lightGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve spent \$10,100 on stuff which you even didn\'t needed!! ( just kidding!! )',
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(
                            color: StoreColors.darkTeal.withOpacity(.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.bar_chart_rounded,
                              color: StoreColors.darkGreen,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '10% of spending',
                              softWrap: true,
                              maxLines: 2,
                              style: TextStyle(
                                color: StoreColors.darkGreen,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: StoreColors.darkGreen,
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 7),
                  Container(
                    height: 28,
                    width: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: StoreColors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Budget',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$11,020',
                      style: TextStyle(
                        color: StoreColors.darkGreen,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // Make a thing vertical line
                Container(
                  height: 110,
                  width: 0.7,
                  color: Colors.grey.withOpacity(.5),
                ),
                Column(
                  children: [
                    Text(
                      'Bills',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$8,020',
                      style: TextStyle(
                        color: StoreColors.darkGreen,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Spendings',
                  style: TextStyle(
                    color: StoreColors.darkTeal,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text(
              'Budget',
              softWrap: true,
              maxLines: 2,
              style: TextStyle(
                color: StoreColors.darkTeal,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              decoration: BoxDecoration(
                color: StoreColors.lightGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 57,
                    width: 57,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: StoreColors.darkGreen,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:
                        Icon(Icons.thumb_up_alt_rounded, color: Colors.white),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve saved \$100 that now you can atleast dream to buy a used Tesla.',
                          style: TextStyle(
                            color: StoreColors.darkTeal.withOpacity(.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'View budget',
                              softWrap: true,
                              maxLines: 2,
                              style: TextStyle(
                                color: StoreColors.darkGreen,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: StoreColors.darkGreen,
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
