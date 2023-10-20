import 'package:flutter/material.dart';
import 'package:flutterbookapp/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailBukuScreen extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String imagePath;

  DetailBukuScreen({
    required this.title,
    required this.author,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 255, 170, 165),
      appBar: AppBar(
        title: Text('Detail Buku'),
      ),
      body: ListView( 
        // Menggunakan ListView di dalam body
        //padding: EdgeInsets.all(16.0),
        
        children: [
          Container(
            
             width: 150,
             height: 400,
            decoration: BoxDecoration(
              //color:Color.fromARGB(255, 255, 170, 165) ,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kBlackColor,
            ),
          ),
          Text(
            author,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: kGreyColor,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Deskripsi:',
            style: GoogleFonts.openSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kBlackColor,
            ),
          ),
          Text(
            description,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
