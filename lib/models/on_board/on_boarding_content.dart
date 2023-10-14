class OnBoardingContent {
  final String title;
  final String image;
  final String desc;

  OnBoardingContent({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnBoardingContent> onBoardContent = [
  OnBoardingContent(
    title: 'Discover Exciting Events',
    image: 'assets/images/onboard_image_1.png',
    desc: 'Explore a wide range of events, from concerts to conferences, right at your fingertips.',
  ),
  OnBoardingContent(
    title: 'Easy Booking',
    image: 'assets/images/onboard_image_2.png',
    desc: 'Book your tickets and secure your spot with just a few taps. It\'s that simple!',
  ),
  OnBoardingContent(
    title: 'Stay Informed',
    image: 'assets/images/onboard_image_1.png',
    desc: 'Get real-time updates and notifications to never miss a moment.',
  ),
];
