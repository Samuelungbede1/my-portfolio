import 'package:flutter/material.dart';


class EducationComponent extends StatelessWidget {
  final String universityName;
  final String degree;
  final String date;
  final String grade;

  const EducationComponent({super.key,
    required this.universityName,
    required this.degree,
    required this.date,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          universityName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Text('Certificate Earned: $degree'),
        Text('Year: $date'),
        Text('Grade: $grade'),
      ],
    );
  }
}
