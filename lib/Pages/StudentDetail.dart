import 'package:flutter/material.dart';

import '../Types/Student.dart';

class StudentDetail extends StatelessWidget {
  final Student student;

  const StudentDetail({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(student.name)),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    student.description,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 20,
                  ),
                ),
                SizedBox(width: 32.0),
                Image.asset(
                  'assets/students/${student.imgName}.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
