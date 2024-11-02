class OnlineCourse {
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final String url;

  OnlineCourse(this.name, this.startDate, this.endDate, this.url);
  static List<OnlineCourse> get all => [
        OnlineCourse(
          'Introduction to Computer Science Programming',
          DateTime(2021, 12),
          DateTime(2022, 8),
          'https://coursera.org/share/0d1e6254424584f7f2375b9beaa59c8c',
        ),
        OnlineCourse(
          'Design Thinking for Innovation',
          DateTime(2021, 10),
          DateTime(2021, 11),
          'https://coursera.org/share/4e5203a0fa3259faf2695e0ae76619b4',
        ),
        OnlineCourse(
          'Modern Robotics, Foundations of Robot Motion',
          DateTime(2021, 9),
          DateTime(2021, 10),
          'https://coursera.org/share/3f09255562368f515034b3d3ab0b4c4c',
        ),
        OnlineCourse(
          'Writing in the Sciences',
          DateTime(2021, 9),
          DateTime(2021, 10),
          'https://coursera.org/share/638987c5cab881d3d8e762a33767a6d7',
        ),
        OnlineCourse(
          'Neural Networks and Deep Learning',
          DateTime(2021, 8),
          DateTime(2021, 9),
          'https://coursera.org/share/67406099c8ed6ee5e6e12cf35f7e9316',
        ),
        OnlineCourse(
          'Machine Learning',
          DateTime(2020, 2),
          DateTime(2020, 3),
          'https://coursera.org/share/044151892b765b3afb043ab1c4b01a24',
        ),
        OnlineCourse(
          'Object-oriented data structures in C++',
          DateTime(2019, 9),
          DateTime(2019, 10),
          'https://coursera.org/share/c6b398da0d65d864223436cb4814750a',
        ),
      ];
}
