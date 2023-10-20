class TrendingBookModel {
  String image;

  TrendingBookModel(this.image);
}

List<TrendingBookModel> trendingbooks =
    trendingBookData.map((item) => TrendingBookModel(item['image']!)).toList();

var trendingBookData = [
  {"image": "assets/images/img_new3.png"},
  {"image": "assets/images/img_book9.jpg"},
  {"image": "assets/images/img_book2.png"},
];
