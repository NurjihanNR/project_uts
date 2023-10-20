class BestSellerModel {
  String image;

  BestSellerModel(this.image);
}

List<BestSellerModel> bestsellerbooks =
    bestSellerData.map((item) => BestSellerModel(item['image']!)).toList();

var bestSellerData = [
  {"image": "assets/images/img_book5.jpg"},
  {"image": "assets/images/img_book7.jpg"},
  {"image": "assets/images/img_book8.png"},
];
