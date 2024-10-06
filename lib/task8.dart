import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task8(),
  ));
}

class Task8 extends StatefulWidget {
  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF3EDF7),
                            ),
                            child: Icon(
                              Icons.notifications_active,
                              color: Color(0xff9D3ADF),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "👋أهلاً بك، مريم ",
                              style: TextStyle(
                                  color: Color(0xff061624),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24),
                            ),
                            Text(
                              "تابعي طلابك في الحضانة بكل سهولة",
                              style: TextStyle(
                                  color: Color(0xff8B97A3),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Color(0xff8344AD),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "أبريل,2023",
                              style: TextStyle(
                                  color: Color(0xff8344AD),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Text(
                          "الإحصائيات الشهرية",
                          style: TextStyle(
                              color: Color(0xff061624),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //continar1
                      Container(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          width: 159,
                          height: 73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "الأطفال",
                                      style: TextStyle(
                                          color: Color(0xff8B97A3),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "356",
                                      style: TextStyle(
                                        color: Color(0xff8344AD),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3EDF7),
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.person,
                                    color: Color(0xff8344AD),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        //continar2
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          width: 159,
                          height: 73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "الفصول",
                                      style: TextStyle(
                                          color: Color(0xff8B97A3),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "300",
                                      style: TextStyle(
                                        color: Color(0xff8344AD),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3EDF7),
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.cast_for_education_outlined,
                                    color: Color(0xff8344AD),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //continar3
                      Container(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          width: 159,
                          height: 73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "الأذونات",
                                      style: TextStyle(
                                          color: Color(0xff8B97A3),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "20",
                                      style: TextStyle(
                                        color: Color(0xff8344AD),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3EDF7),
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.schedule_sharp,
                                    color: Color(0xff8344AD),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //container4
                      Container(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          width: 159,
                          height: 73,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "الأجازات",
                                      style: TextStyle(
                                          color: Color(0xff8B97A3),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        color: Color(0xff8344AD),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffF3EDF7),
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.date_range,
                                    color: Color(0xff8344AD),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " 👀منشورات الحضانة ",
                        style: TextStyle(
                            color: Color(0xff061624),
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              "روضة الحياة للأطفال",
                              style: TextStyle(
                                  color: Color(0xff061624),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                            Text(
                              "اليوم, منذ ٣ دقائق",
                              style: TextStyle(
                                  color: Color(0xff8B97A3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xffF4F1F9),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/3d752ff5fbbd893dbe4a3ce5d7e55015.png"),
                            radius: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "اليوم قمنا بالإحتفال بالأجيال الجديدة في حضانة الحياة",
                    style: TextStyle(
                      color: Color(0xff061624),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text("💖ونتمنى لكم عام سعيد"),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      "images/0bec1ae644328f2002404f6277bf893e.png",
                      width: 295,
                      height: 107,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            "روضة الحياة للأطفال",
                            style: TextStyle(
                                color: Color(0xff061624),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Text(
                            "اليوم, منذ ٣ دقائق",
                            style: TextStyle(
                                color: Color(0xff8B97A3),
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Color(0xffF4F1F9),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "images/3d752ff5fbbd893dbe4a3ce5d7e55015.png"),
                          radius: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "اليوم قمنا بالإحتفال بالأجيال الجديدة في حضانة الحياة",
                    style: TextStyle(
                      color: Color(0xff061624),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text("💖ونتمنى لكم عام سعيد"),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      "images/0bec1ae644328f2002404f6277bf893e.png",
                      width: 295,
                      height: 107,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              "المستقبل المشرق",
                              style: TextStyle(
                                  color: Color(0xff061624),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                            Text(
                              "اليوم, منذ ٣ دقائق",
                              style: TextStyle(
                                  color: Color(0xff8B97A3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xffF4F1F9),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "images/d38b56501ceb5caec0b219bfff3ea819.png"),
                            radius: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "اليوم قمنا بالإحتفال بالأجيال الجديدة في حضانة",
                    style: TextStyle(
                        color: Color(0xff061624),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Text(
                    " 💖!الحياة ونتمنى لكم عام سعيد",
                    style: TextStyle(
                      color: Color(0xff061624),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
