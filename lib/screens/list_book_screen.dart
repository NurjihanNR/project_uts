import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterbookapp/constants/color_constant.dart';
import 'package:flutterbookapp/screens/detail_book_screen.dart'; 
import 'package:google_fonts/google_fonts.dart';

class ListBukuScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'), 
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kLightGreyColor,
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLength: 10,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search book..',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 12,
                        color: kGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: SvgPicture.asset('assets/svg/background_search.svg'),
                  ),
                  Positioned(
                    top: 8,
                    right: 9,
                    child: SvgPicture.asset('assets/icons/icon_search_white.svg'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // Item 1
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Pergi',
                            author: 'Penulis: Tere Liye',
                            description: 'Novel karya Tere Liye mengisahkan tentang perjalanan hidup tokoh utamanya dalam mencari jati diri dan cinta sejati.',
                            imagePath: 'assets/images/img_book1.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                         color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Pergi'),
                        subtitle: Text('Penulis: Tere Liye'),
                        leading: Container(
                            width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // // Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku

                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book1.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Item 2
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Pulang',
                            author: 'Penulis: Tere Liye',
                            description: '"Pulang" menggambarkan tema tentang cinta, kehilangan, perjalanan, dan pencarian makna hidup.',
                            imagePath: 'assets/images/img_book2.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                     color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Pulang'),
                        subtitle: Text('Penulis: Tere Liye'),
                        leading: Container(
                            width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // / // Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book2.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    // Item 3
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Bumi',
                            author: 'Tere Liye',
                            description: 'Novel ini mengandung pesan-pesan moral dan nilai-nilai kehidupan yang mendalam. Selain itu, seperti banyak karya Tere Liye lainnya, "Bumi" juga menghadirkan cerita yang sarat dengan nuansa keindonesiaan dan budaya lokal.',
                            imagePath: 'assets/images/img_book7.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Bumi'),
                        subtitle: Text('Penulis: Tere Liye'),
                        leading: Container(
                           width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // /// Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book7.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Item 3
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Dikta & Hukum',
                            author: 'Penulis: Bernard Batubara',
                            description: '"Dikta dan Hukum" menggabungkan unsur hukum, drama, dan intrik ke dalam ceritanya. Novel ini tidak hanya memberikan gambaran tentang dunia hukum dan peradilan, tetapi juga mengupas karakter tokoh-tokohnya, termasuk pertumbuhan dan perkembangan Dikta sebagai seorang pengacara.',
                            imagePath: 'assets/images/img_new2.png', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Dikta & Hukum'),
                        subtitle: Text('Penulis: Bernard Batubara'),
                        leading: Container(
                          width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // /// Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_new2.png'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    // Item 3
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'The Hobbits',
                            author: 'Penulis: J.R.R. Tolkien',
                            description: '"The Hobbit" adalah kisah petualangan yang penuh imajinasi, dengan karakter-karakter yang unik dan dunia Middle-earth yang kaya. ',
                            imagePath: 'assets/images/img_book8.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                       color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('The Hobbits'),
                        subtitle: Text('Penulis: J.R.R Tolkien'),
                        leading: Container(
                          width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            //borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book8.jpg',
                               ), // Gantilah dengan path gambar buku
                              fit: BoxFit.contain, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    // Item 3
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Harry Potter and the Deathly Hallows',
                            author: 'Penulis: J.K Rowling',
                            description:  'novel ketujuh dan terakhir dalam seri "Harry Potter" yang populer, ditulis oleh penulis Inggris J.K. Rowling. Buku ini diterbitkan pada tahun 2007 dan menandai akhir dari kisah epik tentang penyihir muda, Harry Potter.',
                            imagePath: 'assets/images/img_book9.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Harry Potter and the Deathly Hallows'),
                        subtitle: Text('Penulis: J.K Rowling'),
                        leading: Container(
                         width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // // Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            //borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book9.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    // Item 4
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Bicara itu Ada Seninya',
                            author: 'Penulis: OH SU HYANG',
                            description: 'sebuah novel yang mengangkat tema seni dan seni lukis sebagai elemen sentral dalam ceritanya, dan seni di dalamnya memiliki peran penting dalam menggambarkan perasaan, pemikiran, dan komunikasi tokoh-tokohnya.',
                            imagePath: 'assets/images/img_book6.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Bicara itu Ada Seninya'),
                        subtitle: Text('Penulis: OH SU HYANG'),
                        leading: Container(
                           width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // /// Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_book6.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    // Item 5
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Sang Pemimpi',
                            author: 'Andrea Hirata',
                            description: 'Novel ini menggambarkan pencarian makna hidup, keinginan untuk mengejar impiannya, dan perjuangan Ikal dalam menjalani kehidupan.',
                            imagePath: 'assets/images/img_popular3.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Sang Pemimpi'),
                        subtitle: Text('Andrea Hirata'),
                        leading: Container(
                            width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // / // Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_popular3.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    // Item 6
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'Ketika Laut Bercerita',
                            author: 'Penulis: Desi Puspitasari',
                            description: '"Ketika Laut Bercerita" adalah kisah tentang perjalanan, pengenalan diri, dan bagaimana lingkungan alam kita dapat menjadi sumber inspirasi dan pengetahuan. ',
                            imagePath: 'assets/images/img_popular2.jpg', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child:Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                       color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('Ketika Laut Bercerita'),
                        subtitle: Text('Penulis: Desi Puspitasari'),
                        leading: Container(
                           width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // /// Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_popular2.jpg'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),),
                    // Item 7
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail buku
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailBukuScreen(
                            title: 'The Alchemist',
                            author: 'Penulis: Paulo Coelho',
                            description: '"The Alchemist" telah menjadi salah satu novel terlaris di dunia dan memenangkan banyak penghargaan. Buku ini memiliki pesan yang mendalam tentang keberanian, kepercayaan diri, dan keinginan untuk mengikuti impian pribadi. Itu juga mengajak pembaca untuk merenungkan tentang arti kehidupan, tujuan, dan pencarian makna dalam perjalanan hidup.',
                            imagePath: 'assets/images/img_new3.png', // Gantilah dengan path gambar buku
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 5),
                        color: const Color.fromARGB(255, 218, 73, 121),
                      child: ListTile(
                        title: Text('The Alchemist'),
                        subtitle: Text('Penulis: Paulo Coelho'),
                        leading: Container(
                           width: 32, // Sesuaikan ukuran dengan kebutuhan Anda
                          height: 100, // / Sesuaikan ukuran dengan kebutuhan Anda
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang foto buku
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img_new3.png'), // Gantilah dengan path gambar buku
                              fit: BoxFit.cover, // Atur sesuai preferensi
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),// Tambahkan item-item lain di sini sesuai dengan daftar buku Anda
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
