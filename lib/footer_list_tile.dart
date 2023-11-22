import 'package:flutter/material.dart';

class FooterListTile extends StatelessWidget {
  const FooterListTile({
    super.key,
    required this.title,
    required this.subtitles,
  });
  final String title;
  final List<String> subtitles;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: InkWell(
        onTap: () {},
        child: const Text("data"),
      ),
      subtitle: Row(
        children: [
          ...subtitles
              .map(
                (e) => InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text(e),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
