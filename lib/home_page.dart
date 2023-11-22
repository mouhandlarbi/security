import 'package:flutter/material.dart';
import 'package:security/card_item.dart';
import 'package:security/footer_list_tile.dart';
import 'package:security/hovered_btn.dart';
import 'package:security/image_card.dart';
import 'package:security/service_card.dart';
import 'package:security/small_btn.dart';
import 'package:security/welcome_message.dart';

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
          Container(
            color: Colors.white,
            child: const WelcomeMessage(
              isAnimated: false,
              bkGround: BackGround.white,
              mainText: "Strong partner for accelerating your innovation with",
              coloredText: "Software services",
            ),
          ),
          Container(
            color: Colors.pink,
            child: const WelcomeMessage(
              isAnimated: false,
              bkGround: BackGround.pink,
              mainText: "Strong partner for accelerating your innovation with",
              coloredText: "Software services",
            ),
          ),
          Container(
            color: Colors.black,
            child: const WelcomeMessage(
              isAnimated: false,
              bkGround: BackGround.dark,
              mainText: "Strong partner for accelerating your innovation with",
              coloredText: "Software services",
            ),
          ),
          const CardItem(
            isHovered: true,
            title: "startup Develepement",
            subtitle: "Sparking your next big thing",
            description:
                "We offer full-cycle develepement for startups We offer full-cycle develepement for startups We offer full-cycle develepement for startups",
          ),
          //RoundedBtn(),
          const FooterListTile(
            title: "Web",
            subtitles: ["android", "ios", "steam"],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallBtn(
                txt: "Web App",
              ),
              ServiceCard(
                txt: "Web",
                icone: Icons.web_asset,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWithImage(
                title: "Flippick",
                subtitle: "Consum social network for sports betting fans",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
