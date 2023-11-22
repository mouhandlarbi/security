import 'package:flutter/material.dart';

class HoveredBtn extends StatefulWidget {
  const HoveredBtn({
    super.key,
    required this.txt,
  });
  final String txt;
  @override
  State<HoveredBtn> createState() => _HoveredBtnState();
}

class _HoveredBtnState extends State<HoveredBtn> {
  bool isHover = false;
  late Color defaultColor;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          isHover = value;
          setState(() {});
        },
        child: Text(
          widget.txt,
          style: TextStyle(
            color: isHover ? Colors.pink : Colors.white,
          ),
        ),
      ),
    );
  }
}
