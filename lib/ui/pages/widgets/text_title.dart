import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04,
            vertical: 8.0,
          ),
          child: Text(
            'Best sales',
            style: GoogleFonts.roboto(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
