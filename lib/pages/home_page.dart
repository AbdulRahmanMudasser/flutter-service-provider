import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 15,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xffe6e4e0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Most Section
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BOOK',
                        style: GoogleFonts.dosis(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          letterSpacing: 0.8,
                          height: 1,
                        ),
                      ),
                      Text(
                        'NEW',
                        style: GoogleFonts.dosis(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          letterSpacing: 0.8,
                          height: 1,
                        ),
                      ),
                      Text(
                        'SERVICE',
                        style: GoogleFonts.dosis(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          letterSpacing: 0.8,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/girl.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Top Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WHICH SERVICE DO YOU NEED?',
                    style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 0.8,
                      height: 1,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Search Service
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: TextField(
                      style: GoogleFonts.dosis(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        letterSpacing: 0.8,
                        height: 1,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                        hintText: 'SEARCH SERVICE',
                        hintStyle: GoogleFonts.dosis(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0.8,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
