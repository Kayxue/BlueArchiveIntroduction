import 'package:flutter/material.dart';

import '../Pages/StudentDetail.dart';
import '../Types/Student.dart';

class StudentTile extends StatelessWidget {
  final Student student;

  const StudentTile(this.student, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.grey.withAlpha(30),
        onTap:
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetail(student: student),
                ),
              ),
            },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: SizedBox(
                width: 100,
                child: Image.asset(
                  "assets/students/${student.imgName}.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                student.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
