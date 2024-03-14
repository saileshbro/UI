import 'package:book_store/models/book_category.dart';
import 'package:book_store/utils/utils_colors.dart';
import 'package:book_store/widgets/book_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BookStoreColors.lightSand,
      body: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.white,
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                'images/profile.png',
                                width: 35,
                                height: 35,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Hi, Natalie!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.gentiumBookPlus().copyWith(
                              color: BookStoreColors.darkBrown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.white,
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.shopping_cart_rounded,
                            color: BookStoreColors.darkBrown, size: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PageView(
                children: [
                  // Page 1 showing list of books
                  ListView(
                    padding: const EdgeInsets.all(0),
                    children: [
                      // Search for books
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: SizedBox(
                          height: 47,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    color: BookStoreColors.mediumSand,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Search for books',
                                          hintStyle: TextStyle(
                                            color: BookStoreColors.darkBrown,
                                            fontSize: 14,
                                          ),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 25, bottom: 5)),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: 47,
                                width: 47,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      BookStoreColors.mediumRed,
                                      BookStoreColors.lightRed.withOpacity(0.8),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(Icons.search_rounded,
                                    color: Colors.white, size: 27),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // List of books category horizontal scroll
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyBooksCategory.length,
                          itemBuilder: (context, index) {
                            final book = dummyBooksCategory[index];
                            return Container(
                              width: 40,
                              margin: const EdgeInsets.only(right: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          offset: const Offset(.5, .5),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: BookWidget(
                                      bookPagesColor:
                                          BookStoreColors.pagesColor,
                                      bookLeftVerticalStrip:
                                          book.colorSet.bookLeftVerticalStrip,
                                      bookBottomHorizontalStrip: book
                                          .colorSet.bookBottomHorizontalStrip,
                                      bookCover: Container(
                                        color: book
                                            .colorSet.bookLeftVerticalStrip
                                            .withOpacity(0.7),
                                        child: book.icon,
                                      ),
                                      showBookMark:
                                          book.name.toLowerCase() != 'all',
                                      width: 35,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    book.name,
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.gentiumBookPlus().copyWith(
                                      color: BookStoreColors.darkBrown,
                                      fontSize: 13,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
