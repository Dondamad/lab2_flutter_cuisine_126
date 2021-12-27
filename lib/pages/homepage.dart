import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuisine App'),
      ),
      body: ListView(
        children: [
          Image.asset('images/omlet_cover.jpg'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Column(
              children: [
                Text(
                  'วิธีทำ “ออมเลตชีส” เมนูไข่เนื้อนุ่ม ชีสเยิ้ม อิ่มท้องง่าย ๆ ในยามเช้า!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'แจกสูตรอาหารเช้าง่าย ๆ "ออมเลตชีส" เมนูไข่ของโปรดทุกรุ่นทุกวัย เนื้อไข่นุ่มมมละมุนลิ้น แถมชีสเยิ้ม ๆ ยั่วใจ ทำตามกันได้ที่บ้านเลย ขนาดนี้ต้องลองทำแล้ว!',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          profileChef(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconCard(
                      iconData: FaIcon(
                        FontAwesomeIcons.stopwatch,
                        color: Colors.blue,
                      ),
                      title: 'เวลาเตรียม',
                      detail: '15 นาที',
                    ),
                    IconCard(
                      iconData: FaIcon(
                        FontAwesomeIcons.utensils,
                        color: Colors.orange,
                      ),
                      title: 'เวลาปรุง',
                      detail: '20 นาที',
                    ),
                    IconCard(
                      iconData: FaIcon(
                        FontAwesomeIcons.burn,
                        color: Colors.red,
                      ),
                      title: 'แคลอรี่',
                      detail: '300 Kcal/เสิร์ฟ',
                    ),
                    IconCard(
                      iconData: FaIcon(
                        FontAwesomeIcons.conciergeBell,
                        color: Colors.green,
                      ),
                      title: 'สำหรับ',
                      detail: '1 เสิร์ฟ',
                    ),
                  ],
                ),
              ),
            ),
          ),
          introduction(),
          ingredients(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TitleDivider(title: 'วิธีทำ'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STEP 1 : ตีไข่',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                listitem()
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Padding profileChef() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      child: Column(
        children: [
          CircleAvatar(
            radius: 48,
            backgroundColor: Colors.black.withOpacity(0.3),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                  'http://std.csit.sci.tsu.ac.th/622021126/images/userProfile.jpg',
                  scale: 20),
            ),
          ),
          SizedBox(height: 10),
          Text('เชฟดอน • วันที่ 25 ธ.ค. 2564'),
        ],
      ),
    );
  }

  Column ingredients() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Image.asset('images/omlet_material.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: TitleDivider(title: 'วัตถุดิบ'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. ไข่ไก่ 3 ฟอง'),
              Text('2. นม 2 ช้อนโต๊ะ'),
              Text('3. เกลือ ½ ช้อนชา'),
              Text('4. พริกไทย ½ ช้อนชา'),
              Text('5. เนย 1 ช้อนโต๊ะ'),
              Text('6. ชีสมอซซาเรลลา ½ ถ้วย'),
              Text('7. ชีสพาเมซาน 2 ช้อนโต๊ะ'),
            ],
          ),
        ),
      ],
    );
  }

  Padding introduction() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        children: [
          TitleDivider(
            title: 'เกริ่นสักหน่อย',
          ),
          Text(
              'ใครคิดว่า “ออมเลตชีส” ทำยาก เห็นสูตรนี้ต้องเปลี่ยนใจแล้ว! อีกหนึ่งเมนูไข่ทำง่าย ๆ อารมณ์ดี๊ดี ไว้สำหรับเป็นอาหารเช้าในวันสบาย ๆ ที่อยากทำอาหารเช้ากินเอง หรือจะทำให้เด็ก ๆ กินก็ได้นะ รับรองว่าเป็นที่ถูกอกถูกใจแน่นอน เพราะมีทั้งไข่ออมเลตนุ่ม ๆ และชีสสุดยืดด ของโปรด ถ้าพร้อมแล้วไปเข้าครัวดูวิธีทำออมเลตกันเลย'),
        ],
      ),
    );
  }
}

class listitem extends StatelessWidget {
  const listitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.circle,
          color: Colors.black,
          size: 10,
        ),
        Text(
            'วิธีทำออมเลตเริ่มจากตอกไข่ใส่ชามผสม ใส่นมลงไป ปรุงรสด้วยเกลือ พริกไทย แล้วตีให้เข้ากัน')
      ],
    );
  }
}

class TitleDivider extends StatelessWidget {
  final String title;
  const TitleDivider({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
      ],
    );
  }
}

class IconCard extends StatelessWidget {
  final FaIcon iconData;
  final String title;
  final String detail;

  const IconCard({
    Key? key,
    required this.title,
    required this.detail,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iconData,
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(detail),
      ],
    );
  }
}
