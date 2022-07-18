class UnbordingContent {
  String image;
  String title;
  String discription;


  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Send Money Anywhere',
      image: 'assets/img/onbording1.png',
      discription: "With our unique technology, you can get \n money anywhere in the world."
  ),
  UnbordingContent(
      title: 'Safe & Secured',
      image: 'assets/img/onbording2.png',
      discription: "Safety of your funds is guaranteed. We’ve\n got you covered 24/7."
  ),
  UnbordingContent(
      title: 'Unbeatable Support',
      image: 'assets/img/onbording3.png',
      discription: "Send money to other sutraq users free of\n charge, with no additional fee."
  ),
];