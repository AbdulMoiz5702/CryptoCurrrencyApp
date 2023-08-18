import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Name',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          Text(
            'Price',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          Text(
            '24hr chge',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
