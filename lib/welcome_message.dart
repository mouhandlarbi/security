import 'package:flutter/material.dart';

enum BackGround { dark, white, pink }

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.isAnimated,
    required this.bkGround,
    required this.mainText,
    this.coloredText,
  });
  final bool isAnimated;
  final BackGround bkGround;
  final String mainText;
  final String? coloredText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Strong partner for accelerating your innovation with",
              style: TextStyle(
                color:
                    bkGround != BackGround.white ? Colors.white : Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "${coloredText != null ? " $coloredText" : ""}.",
              style: TextStyle(
                color: bkGround != BackGround.pink ? Colors.pink : Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
