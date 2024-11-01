import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key, this.svg, this.ontap});
  final String? svg;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 270,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home_page.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Image.asset(
              "assets/images/Frame 2 copy.png",
              width: 75,
              height: 89,
            ),
          ),
        ),
        Positioned(
          top: 57,
          left: 24,
          child: InkWell(
            onTap: ontap,
            child: svg != null ? SvgPicture.asset(svg!) : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
