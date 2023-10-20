class PopularBookModel {
  String title, author,  image, description;
  int color;

  PopularBookModel(this.title, this.author, this.image, this.color,
      this.description);
}

List<PopularBookModel> populars = popularBookData
  .map((item) => PopularBookModel(
    item["title"] as String,
    item["author"] as String,
    item["image"] as String,
    item["color"] as int,
    item["description"] as String,
  ))
    .toList();

var popularBookData = [
  {
    "title": "Hujan",
    "author": "Tere Liye",
    "image": "assets/images/img_popular1.jpg",
    "color": 0xFFFFD3B6,
    "description":
        "Salah satu novel karya penulis terkenal Tere Liye yang mengisahkan kisah cinta dan petualangan seorang anak muda bernama Hanif."
  },
  {
    "title": "Pulang",
    "author": "Tere Liye",
    "image": "assets/images/img_popular2.png",
    "color": 0xFF2B325C,
    "description":
        "Karya lain dari Tere Liye yang mengisahkan tentang perjalanan hidup tokoh utama bernama Khrisna, seorang pemuda yang melalui banyak peristiwa penting dalam hidupnya."
  },
  {
    "title": "Sang Pemimpi",
    "author": "Andrea Hirata",
    "image": "assets/images/img_popular3.png",
    "color": 0xFFF7EA4A,
    "description":
        "Novel karya penulis Indonesia terkenal Andrea Hirata.Buku ini mengikuti petualangan seorang anak muda yang bermimpi besar dan berjuang untuk mengubah hidupnya dan komunitasnya."
  }
];
