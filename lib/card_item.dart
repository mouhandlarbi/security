import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.isHovered,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  final bool isHovered;
  final String title;
  final String subtitle;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isHovered ? Colors.pink : const Color(0xff282222), //const color
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: isHovered
            ? [
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Formular, Arial, Helvetica, sans-serif",
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Formular, Arial, Helvetica, sans-serif",
                  ),
                ),
              ]
            : [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    //fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ],
      ),
    );
  }
}
