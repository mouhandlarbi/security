import 'package:flutter/material.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    super.key,
    required this.icone,
    required this.txt,
  });
  final IconData icone;
  final String txt;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        isHover = value;
        setState(() {});
      },
      onTap: () {},
      child: Container(
        width: 200,
        height: 120,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isHover ? Colors.pink : Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 20,
              color: Colors.grey.withOpacity(0.4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.icone,
              color: isHover ? Colors.white : Colors.black,
            ),
            Row(
              children: [
                Text(
                  widget.txt,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isHover ? Colors.white : Colors.black,
                  ),
                ),
                Visibility(
                  visible: isHover,
                  child: const Icon(
                    Icons.arrow_outward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
