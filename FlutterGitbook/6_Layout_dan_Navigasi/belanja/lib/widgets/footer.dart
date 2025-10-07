import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final String name;
  final String nim;

  const FooterWidget({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[400],
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text('NIM: $nim', style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
