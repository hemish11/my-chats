import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesCount extends StatelessWidget {
  const MessagesCount({
    Key? key,
    required this.name,
    required this.value,
    required this.color,
    required this.count,
  }) : super(key: key);

  final String name;
  final double value;
  final int count;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$name ($count)',
          style: GoogleFonts.manrope(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2A3C44),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 4,
          width: value * width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        )
      ],
    );
  }
}
