import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project3/configration/app_theme.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/74cb478bdbe2eb237e645b4966a25883.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pizza Ransh extra cheese",
                  style: TextStyle(
                      color: Color(0xff1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
                SizedBox(height: 4),
                Text("1500 AED",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppTheme.primerycolor,
                    )),
              ],
            )
          ],
        ),
        Divider(height: 50),
        Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(
                  image: AssetImage("assets/images/plans.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Cacciatore",
                  style: TextStyle(
                      color: Color(0xff1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
                SizedBox(height: 4),
                Text("1500 AED",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: AppTheme.primerycolor,
                    )),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class selectBranchOrder extends StatefulWidget {
  const selectBranchOrder({
    super.key,
  });

  @override
  State<selectBranchOrder> createState() => _selectBranchOrderState();
}

class _selectBranchOrderState extends State<selectBranchOrder> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        String? rusalt = await showModalBottomSheet(
            context: context,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            builder: (context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select Branch",
                            style: TextStyle(
                                color: Color(0xff1F1F1F),
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                fontFamily: "Poppins"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/closing.svg"),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pop(context, " $index");
                              },
                              child: Row(
                                children: [
                                  Radio(
                                      value: "$index",
                                      groupValue: value,
                                      onChanged: (String? value) {}),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Richdiets Branch one"),
                                          Text("Dubai, Street 55 Dub Tower"),
                                          Text("Neres branch to you")
                                        ]),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: 2)
                    ],
                  ),
                ),
              );
            });

        setState(() {
          value = rusalt ?? "";
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 52,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xffEDEDED),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Select...",
                style: TextStyle(color: Color(0xffBFBFBF)),
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
