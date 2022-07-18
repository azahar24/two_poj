class UnbordingContent {
  String image;
  String title;

  String tk;


  UnbordingContent({required this.image, required this.title,required this.tk});
}

List<UnbordingContent> contents_con = [
  UnbordingContent(
      title: 'SUTRAQ CURRENCY',
      image: 'assets/img/onbording1.png',
      tk: 'Q190,000'
  ),
  UnbordingContent(
      title: 'USD',
      image: 'assets/img/onbording2.png',
      tk: '\$42,000'
  ),
  UnbordingContent(
      title: 'BDT',
      image: 'assets/img/onbording3.png',
      tk: ' 300000'
  ),
];