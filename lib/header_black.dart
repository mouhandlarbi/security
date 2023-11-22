import 'package:flutter/material.dart';
import 'package:security/card_item.dart';
import 'package:security/service.dart';
import 'package:security/welcome_message.dart';

class HeaderBlack extends StatefulWidget {
  const HeaderBlack({super.key});

  @override
  State<HeaderBlack> createState() => _HeaderBlackState();
}

class _HeaderBlackState extends State<HeaderBlack> {
  List<CardService> services = [
    CardService(
      title: "Startup Developement",
      subtitle: "Sparking your next big thing.",
      description:
          "We offer full-cycle developement for startup: from streamlining your ideas int .....",
      isHovered: false,
    ),
    CardService(
      title: "Hight-load projects",
      subtitle: "Sparking your next big thing.",
      description:
          "We offer full-cycle developement for startup: from streamlining your ideas int ....ffer full-cycle developement.",
      isHovered: false,
    ),
    CardService(
      title: "Team extension",
      subtitle: "Sparking your next big thing.",
      description: "We offer full-cyclelining your ideas int .....",
      isHovered: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    var cardWidth = (pageWidth * 9 / 10) / services.length;
    var gap = (1 / 10 * pageWidth) / (services.length * 2);
    bool anyoneHoverd = false;

    int selectedItem = 0;
    String message = "sssss$selectedItem";
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          WelcomeMessage(
            txt: message, //services[selectedItem].title,
            pageWidth: pageWidth,
          ),
          AnimatedContainer(
            duration: const Duration(microseconds: 300),
            child: Row(
              children: List.generate(
                services.length,
                (index) => InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      services[index].isHovered = value;
                      anyoneHoverd = value;
                      selectedItem = index;
                      message = "sell$index";
                    });
                    print(anyoneHoverd);
                  },
                  child: CardItem(
                    service1: services[index],
                    isHovered: services[index].isHovered,
                    cardWidth: anyoneHoverd
                        ? getWdth(services[index].isHovered, cardWidth,
                            services.length)
                        : cardWidth,
                    gap: gap,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double getWdth(isHover, cardWidth, numberOfCard) {
    double widthe = 0;
    isHover
        ? widthe = cardWidth * 1.2
        : widthe = cardWidth - (0.2 * cardWidth) / (numberOfCard - 1);
    return widthe;
  }
}
