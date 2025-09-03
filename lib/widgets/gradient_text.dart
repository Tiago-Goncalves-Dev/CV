import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final List<Color> colors; // Permite personalizar cores do gradiente

  const GradientText({
    Key? key,
    required this.text,
    this.fontSize = 40,
    this.fontWeight = FontWeight.bold,
    this.colors = const [Color.fromARGB(255, 40, 73, 41), Colors.green],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Colors.white, // cor ignorada pelo ShaderMask
        ),
      ),
    );
  }
}
