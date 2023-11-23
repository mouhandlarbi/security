import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon {
  final String imageUrl;
  final String socialMediaUrl;
  final double iconSize;
  final IconData icone;

  SocialMediaIcon(
      {required this.imageUrl,
      required this.socialMediaUrl,
      required this.iconSize,
      required this.icone});
}

List<SocialMediaIcon> socialMediaIcons = [
  SocialMediaIcon(
    imageUrl: 'assets/images/social_media/facebook.png',
    socialMediaUrl: 'https://www.facebook.com/yourpage',
    iconSize: 30,
    icone: Icons.facebook,
  ),
  SocialMediaIcon(
    imageUrl: 'assets/images/social_media/twitter.png',
    socialMediaUrl: 'https://www.twitter.com/yourpage',
    iconSize: 30,
    icone: Icons.facebook,
  ),
  SocialMediaIcon(
    imageUrl: 'assets/images/social_media/instagram.png',
    socialMediaUrl: 'https://www.instagram.com/yourpage',
    iconSize: 30,
    icone: Icons.facebook,
  ),
];

class SocialMediaIconsRow extends StatelessWidget {
  final List<SocialMediaIcon> socialMediaIcons;

  const SocialMediaIconsRow({
    Key? key,
    required this.socialMediaIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: socialMediaIcons
          .map((socialMediaIcon) => _buildSocialMediaIcon(socialMediaIcon))
          .toList(),
    );
  }

  Widget _buildSocialMediaIcon(SocialMediaIcon socialMediaIcon) {
    return IconButton(
      icon: Icon(socialMediaIcon.icone),
      iconSize: socialMediaIcon.iconSize,
      onPressed: () {
        launchUrl(
          Uri.parse(socialMediaIcon.socialMediaUrl),
        );
      },
    );
  }
}

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
          SocialMediaIconsRow(
            socialMediaIcons: socialMediaIcons,
          ),
        ],
      ),
    );
  }
}
