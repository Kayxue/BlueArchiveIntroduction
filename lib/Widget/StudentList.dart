import 'dart:math';

import 'package:flutter/material.dart';

import '../Types/Student.dart';
import 'StudentTile.dart';

class StudentList extends StatelessWidget {
  final List<Student> students;

  const StudentList(this.students, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length ~/ 2 + 1,
      itemBuilder: (context, index) {
        List<Student> temp = students.sublist(
          index * 2,
          min(index * 2 + 2, students.length),
        );
        return Row(
          children:
              temp
                  .map(
                    (stu) => SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2,
                      child: StudentTile(stu),
                    ),
                  )
                  .toList(),
        );
      },
    );
  }
}
