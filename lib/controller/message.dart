import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String title;
  final String text;
  const Message({required this.title, required this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
              title ?? "(unnamed chapter)",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22
            ),
          ),
          Text(
            text ?? "(no text)",
            style: TextStyle(
                color: Color(0xFFB1FF3C)
            ),
          )
        ],
      ),
    );
  }
}

