class Category{
  final String name;
  final String image;

  Category({ required this.name,required this.image});
  List<Category> getserviceTags() => [
        Category(name: 'Football', image: 'images/football.png'),
        Category(name: 'Basketball', image: 'images/basketball.png'),
        Category(name: 'Tennis', image: 'images/tennis.png'),
        Category(name: 'Padel', image: 'images/padel.png'),
        Category(name: 'Swimming', image: 'images/swimmingg.png'),
      ];
  

}

