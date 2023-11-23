import 'package:flutter/material.dart';
import 'package:security/footer_list_tile.dart';
import 'package:security/social_media.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 153, 27, 27),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 300,
                  color: Colors.blue,
                ),
                SocialMediaIconsRow(
                  socialMediaIcons: socialMediaIcons,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                FooterListTile(
                  title: "title",
                  subtitles: [
                    "subtitles",
                    "siono",
                    "siono",
                    "siono",
                    "siono",
                  ],
                ),
                FooterListTile(
                  title: "title",
                  subtitles: [
                    "subtitles",
                    "siono",
                    "siono",
                    "siono",
                    "siono",
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                FooterListTile(
                  title: "title",
                  subtitles: [
                    "subtitles",
                    "siono",
                    "siono",
                    "siono",
                    "siono",
                  ],
                ),
                FooterListTile(
                  title: "title",
                  subtitles: [
                    "subtitles",
                    "siono",
                    "siono",
                    "siono",
                    "siono",
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
