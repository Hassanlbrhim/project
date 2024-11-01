import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuiledProfile extends StatelessWidget {
  const BuiledProfile({
    super.key,
    required this.icon,
    required this.text,
  });
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: () {}, icon: SvgPicture.asset(icon)),
      SizedBox(width: 2),
      Text(
        text,
        style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff1F1F1F)),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      )
    ]);
  }
}

List<BuiledProfile> ListProfile = [
  BuiledProfile(icon: "assets/icons/orders.svg", text: "Orders"),
  BuiledProfile(icon: "assets/icons/Subscriptions.svg", text: "Subscriptions"),
  BuiledProfile(icon: "assets/icons/notification.svg", text: "Notifications"),
  BuiledProfile(icon: "assets/icons/address.svg", text: "Addresses"),
  BuiledProfile(icon: "assets/icons/wishilast.svg", text: "Wishlist"),
  BuiledProfile(icon: "assets/icons/editi_profile.svg", text: "Edit Profile"),
  BuiledProfile(icon: "assets/icons/refare.svg", text: "Refer and earn"),
  BuiledProfile(icon: "assets/icons/shear.svg", text: "Share the app"),
  BuiledProfile(icon: "assets/icons/reat.svg", text: "Rate the app"),
  BuiledProfile(icon: "assets/icons/reporit.svg", text: "Report an issue"),
];

class ItemProfile extends StatelessWidget {
  const ItemProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListProfile[index];
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: ListProfile.length);
  }
}
