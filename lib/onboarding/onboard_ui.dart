import 'dart:io';

import 'package:flutter/material.dart';


import 'data.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  List<OnboardingData> slides = new List<OnboardingData>();

  int _currentIndex = 0;

  PageController pageController = new PageController();

  @override
  void initState() {
    slides = getPageViews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        itemCount: slides.length,
        itemBuilder: (context, index) {
          return SliderTile(
            imageAssetPath: slides[index].getImageAsset(),
            titleText: slides[index].getTitle(),
            descText: slides[index].getDescription(),
          );
        },
      ),
      bottomSheet: _currentIndex != slides.length - 1
          ? Container(
              height: Platform.isIOS ? 70 : 60,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(
                        _currentIndex + 1,
                        duration: Duration(microseconds: 7),
                        curve: Curves.linearToEaseOut,
                      );
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < slides.length; i++)
                        _currentIndex == i
                            ? _pageIndexIndicator(true)
                            : _pageIndexIndicator(false),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(slides.length - 1,
                          duration: Duration(milliseconds: 5),
                          curve: Curves.linearToEaseOut);
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              alignment: Alignment.center,
              height: Platform.isIOS ? 70 : 60,
              color: Colors.indigo,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Start Exploring',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }

  Widget _pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        //      shape: BoxShape.circle,
        color: isCurrentPage ? Colors.grey : Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath;
  String titleText;
  String descText;

  SliderTile({
    this.titleText,
    this.descText,
    this.imageAssetPath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(
            height: 10.0,
          ),
          Text(
            titleText,
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            descText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
