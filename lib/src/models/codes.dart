class Codes {
  final String title;
  final String url;

  Codes({required this.title, required this.url});

  static List<Codes> get all => [
        Codes(
            title: 'C++ Neural Networks',
            url: 'https://github.com/AnthonyAniobi/CPP_Neural_Networks'),
        Codes(
            title: 'Image Classification',
            url: 'https://github.com/AnthonyAniobi/Image_Classfication')
      ];
}
