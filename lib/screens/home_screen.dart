import 'package:book_app/constants.dart';
import 'package:book_app/screens/details_screen.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/reading_list_card.dart';
import 'package:book_app/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displaySmall,
                    children: const [
                      TextSpan(text: "What are you \nreading "),
                      TextSpan(
                        text: "today?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      title: 'Dan Vanhelsing',
                      image: 'assets/images/book-1.png',
                      auth: 'Gary Venchuk',
                      rating: 4.6,
                      pressDetails: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsScreen(),
                          ),
                        );
                      },
                    ),
                    ReadingListCard(
                      title: 'Top ten Business Hacks',
                      image: 'assets/images/book-2.png',
                      auth: 'Herman john',
                      rating: 4.8,
                    ),
                    ReadingListCard(
                      title: 'One more night',
                      image: 'assets/images/book-3.png',
                      auth: 'Chunk han so',
                      rating: 3.1,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: 'Best of the '),
                          TextSpan(
                            text: "day",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    bestOfTheDayCard(size, context),
                    RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: kLightBlackColor,
                          ),
                          children: [
                            TextSpan(text: "Continue "),
                            TextSpan(
                              text: "reading...",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(38.5),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0,10),
                            blurRadius: 33,
                            color: const Color(0xFFD3D3D3).withOpacity(.84),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30, right: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchunk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text(
                                                    "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                            ],
                                          ),
                                      ),
                                      Image.asset(
                                          'assets/images/book-1.png',
                                        width: 55,
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * .6,
                              decoration: const BoxDecoration(
                                color: kProgressIndicator,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container bestOfTheDayCard(Size size, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: double.infinity,
    height: 205,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
                left: 24, top: 24, right: size.width * .35),
            height: 185,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFEAEAEA).withOpacity(.45),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "New York Time Best for 11th March 2022",
                  style: TextStyle(
                    fontSize: 9,
                    color: kLightBlackColor,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'How to Win \nFriends & Influence',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'Gary Venchuk',
                  style: TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    BookRating(score: 4.9,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "When the earth was When the earth was flat and everyone wanted to win themselfve",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          color: kLightBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset('assets/images/book-3.png'),
          width: size.width * .35,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 40,
            width: size.width * .3,
            child: TwoSideRoundedButton(
              text: "Read",
              radious: 24,
              press: () {},
            ),
          ),
        ),
      ],
    ),
  );
}

