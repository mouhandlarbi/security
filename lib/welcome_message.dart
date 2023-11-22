import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.txt,
    required this.pageWidth,
  });
  final String txt;
  final double pageWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: pageWidth / 2,
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Strong partner for accelerating your innovation with ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "$txt.",
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
