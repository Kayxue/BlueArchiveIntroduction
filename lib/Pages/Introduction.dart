import 'package:bluearchiveintroduction/Widgets/Screenshot.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "《蔚藍檔案 Blue Archive》（韓語：블루 아카이브，日語：ブルーアーカイブ -Blue Archive-，英語：Blue Archive，中國大陸有時也用非官方名稱「碧藍檔案」）為 NEXON 旗下子公司 NEXON Games 開發且於 2021 年發行的校園美少女風格手機遊戲。",
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 20,
                ),
              ),
              SizedBox(width: 32.0),
              Image.asset('assets/images/icon.jpg', width: 100, height: 100),
            ],
          ),
          SizedBox(height: 32.0),
          Row(
            children: [
              Text(
                "畫面截圖",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 32.0),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Screenshot(name: "IMG_3905.PNG", width: 100),
              Screenshot(name: "IMG_3906.PNG", width: 100),
              Screenshot(name: "IMG_3907.PNG", width: 100),
              Screenshot(name: "IMG_3908.PNG", width: 100),
              Screenshot(name: "IMG_3909.PNG", width: 100),
              Screenshot(name: "IMG_3904.PNG", width: 100),
            ],
          ),
        ],
      ),
    );
  }
}
