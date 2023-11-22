import 'package:flutter/material.dart';
import 'package:security/service.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.service1,
    required this.isHovered,
    required this.cardWidth,
    required this.gap,
  });
  final CardService service1;
  final bool isHovered;
  final double cardWidth;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardWidth,
      width: cardWidth,
      margin: EdgeInsets.all(gap),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xff282222),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 2 == 8
            ? [
                Text(service1.subtitle),
                Text(service1.description),
              ]
            : [
                Text(
                  " $isHovered $cardWidth",
                  //service1.title,
                  style: const TextStyle(
                    color: Colors.white,
                    //fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: isHovered ? Colors.pink : Colors.grey,
                ),
              ],
      ),
    );
  }
}
