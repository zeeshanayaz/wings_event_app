import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import '../../../common_widgets/common_button.dart';
import '../../../utils/extensions.dart';
import '../../../models/on_board/on_boarding_content.dart';
import '../login/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kToolbarHeight.height,
          Expanded(
            flex: 4,
            child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: onBoardContent.length,
                itemBuilder: (context, i) {
                  return AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        double pageOffSet = 0;
                        if (_controller.position.haveDimensions) {
                          pageOffSet = _controller.page! - i;
                        }
                        double gauss = math
                            .exp(-(math.pow(pageOffSet.abs() - 0.5, 2) / 0.08));
                        return Transform.translate(
                          offset: Offset(-32 * gauss * pageOffSet.sign, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Image.asset(
                                  onBoardContent[i].image,
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                  alignment: Alignment(pageOffSet, 0),
                                ),
                              ),
                              20.height,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: Text(
                                  onBoardContent[i].title,
                                  textAlign: TextAlign.center,
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                              ),
                              20.height,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: Text(
                                  onBoardContent[i].desc,
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                }),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardContent.length,
                    (int index) => _buildDots(
                      index: index,
                    ),
                  ),
                ),
                _currentPage + 1 == onBoardContent.length
                    ? Padding(
                        padding: const EdgeInsets.all(30),
                        child: SizedBox(
                          width: double.infinity,
                          child: Hero(
                            tag: 'button',
                            child: CommonButton(
                              'get_started'.tr,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScreen()),
                                );
                              },
                            ),
                          ),
                        ))
                    : Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                _controller
                                    .jumpToPage(onBoardContent.length - 1);
                              },
                              style: TextButton.styleFrom(
                                elevation: 0,
                              ),
                              child: Text(
                                'skip'.tr,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            CommonButton(
                              'next'.tr,
                              onPressed: () {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn,
                                );
                              },
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage == index
            ? Theme.of(context).splashColor
            : Theme.of(context).dividerColor,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 5,
      curve: Curves.easeIn,
      width: _currentPage == index ? 30 : 5,
    );
  }
}
