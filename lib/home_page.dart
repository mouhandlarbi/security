import 'package:flutter/material.dart';
import 'package:security/header_black.dart';
import 'package:security/hovered_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const HoveredBtn(txt: "BRIGHTS"),
        actions: [
          const HoveredBtn(txt: "Services"),
          const HoveredBtn(txt: "Projects"),
          const HoveredBtn(txt: "About us"),
          const HoveredBtn(txt: "Contacts"),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          HeaderBlack(),
        ],
      ),
    );
  }
}
