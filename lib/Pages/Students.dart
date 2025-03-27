import 'package:bluearchiveintroduction/Widget/StudentList.dart';

import '../Types/Student.dart';
import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  final List<Student> students = [
    Student(
      name: "白子",
      description:
          "喜歡運動的阿拜多斯對策委員會的行動班長。她給人的印象是，基本上沉默寡言且幾乎沒有表情變化，但其實她比任何人珍惜阿拜多斯學園。為了復興學園而不擇手段，偶爾會提出令人意想不到的想法。",
      imgName: "siroko",
    ),
    Student(
      name: "芹香",
      description:
          "阿拜多斯對策委員會的難纏會計。很愛碎碎念，毫不猶豫地表露自己的感情。「這種學園最好快點完蛋！」就像她的口頭禪似的。雖然老是把這句話掛在嘴上，其實她為了償還學園的債務而暗中打工，對學園是很有愛的。",
      imgName: "serika",
    ),
    Student(
      name: "星野",
      description:
          "阿拜多斯高中的原學生會副會長學生會會長，現在是對策委員會委員長的懶惰蟲少女。喜歡用大叔的口吻說話。比起公務，她更愛惡作劇。因此她平常老是被委員會的委員們訓。不過一旦任務開始，她就會為了保護其他學生站到最前線奮戰。",
      imgName: "hosino",
    ),
    Student(
      name: "綾音",
      description: "阿拜多斯對策委員會的誠實書記。重視基本理論與規定的原則主義者，正為了復興阿拜多斯高中而踏實地努力着。",
      imgName: "ayane",
    ),
    Student(
      name: "野乃美",
      description:
          "阿拜多斯高中所屬，對策委員會的一員。感情豐富且品性善良，是讓有着許多極端性格成員的對策委員會團結一致的精神支柱。雖然沒有怎麼表露出來，但她是富裕人家的千金，大部分的對策委員會零食費都來自她的零用錢。",
      imgName: "nonomi",
    ),
  ];

  Students({super.key});

  @override
  Widget build(BuildContext context) {
    return StudentList(students);
  }
}
