// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:instagram_flutter/models/content_model.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    Key? key,
    required this.content,
  }) : super(key: key);

  final Content content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(content.userImageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      content.user,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 300,
          child: Image.network(
            content.largeImageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          child: Row(
            children: const [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 10),
              Icon(Icons.send_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              Text(
                '${content.likes} likes ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: RichText(
            text: TextSpan(
              // style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(
                  text: 'kepala_sekolah ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: content.tags),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            'View all commenets',
            // style: TextStyle(color: Colors.black54),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            '17 hours ago',
            style: TextStyle(
              // color: Colors.black54,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
