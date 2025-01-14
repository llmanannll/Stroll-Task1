import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final int count;

  const NotificationBadge(this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 139, 136, 239),
      ),
      child: Text(
        '$count',
        style:
            TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 10),
      ),
    );
  }
}
