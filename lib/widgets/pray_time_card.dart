import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';

class PrayTimeCard extends StatelessWidget {
  const PrayTimeCard({
    super.key,
    required this.title,
    required this.time,
  });
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    final formatted = _formatTime(time);

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            ColorsManager.black,
            ColorsManager.softGold,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: ColorsManager.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            formatted['formattedTime']!,
            style: const TextStyle(
              color: ColorsManager.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            formatted['period']!,
            style: const TextStyle(
              color: ColorsManager.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

Map<String, String> _formatTime(String time) {
  try {
    final timeParts = time.split(':');
    int hour = int.parse(timeParts[0]);
    final minute = timeParts[1];
    final period = hour >= 12 ? 'PM' : 'AM';
    if (hour > 12) hour -= 12;
    if (hour == 0) hour = 12;
    return {
      'formattedTime': '$hour:$minute',
      'period': period,
    };
  } catch (e) {
    return {
      'formattedTime': time,
      'period': '',
    };
  }
}
