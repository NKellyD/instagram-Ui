
import 'package:flutter/material.dart';

class BubbleStories extends StatefulWidget {
  final String text;
  const BubbleStories({super.key, required this.text});

  @override
  State<BubbleStories> createState() => _BubbleStoriesState();
}

class _BubbleStoriesState extends State<BubbleStories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400]
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
