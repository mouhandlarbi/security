import 'package:flutter/material.dart';

class SmallBtn extends StatefulWidget {
  const SmallBtn({
    super.key,
    required this.txt,
  });
  final String txt;

  @override
  State<SmallBtn> createState() => _SmallBtnState();
}

class _SmallBtnState extends State<SmallBtn> {
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isHover ? Colors.pink : Colors.grey[400],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          widget.txt,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isHover ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
