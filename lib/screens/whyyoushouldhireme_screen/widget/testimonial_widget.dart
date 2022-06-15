import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
    required this.name,
    required this.profilePictureUrl,
    required this.position,
    required this.description,
  }) : super(key: key);
  final String name;
  final String profilePictureUrl;
  final String position;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profilePictureUrl),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  position,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          description,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
