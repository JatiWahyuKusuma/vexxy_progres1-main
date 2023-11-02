import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginVexxyPage extends StatelessWidget {
  const LoginVexxyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/loginha.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
              child: Text(
            "VEXXY",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 30),
          )),
          Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Card(
                color: Colors.black.withOpacity(0.3),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Selamat Datang Admin",
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Text(
                      "Untuk dapat mengakses fitur admin, Anda perlu login terlebih dahulu",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/gugel.webp",
                              width: 30,
                            ),
                            SizedBox(width: 30),
                            Text(
                              "Login Sekarang",
                              style: GoogleFonts.poppins(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ))
        ],
      )),
    );
  }
}
