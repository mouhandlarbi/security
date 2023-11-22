import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.pinkAccent,
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("all projects"),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
