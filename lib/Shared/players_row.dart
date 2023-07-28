import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayersRow extends StatelessWidget {
  final String property;
  String? value;

  PlayersRow({required this.property, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          property,
          style: GoogleFonts.roboto(
            color: Color(0xFF090A0A),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        const Spacer(),
        Text(
          value ?? "",
          style: GoogleFonts.roboto(
            color: Color(0x8504764E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}
