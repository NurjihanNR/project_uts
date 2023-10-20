class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image']!)).toList();

var newBookData = [
  {"image": "assets/images/img_new1.jpg"},
  {"image": "assets/images/img_book2.jpg"},
  {"image": "assets/images/img_new3.png"},
];
