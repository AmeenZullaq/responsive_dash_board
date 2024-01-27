import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({
    super.key,
    required this.image,
    this.imageBackGroundColor,
    this.imageColor,
    this.iconColor,
  });

  final String image;
  final Color? imageBackGroundColor;
  final Color? imageColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: imageBackGroundColor ?? const Color(0xFFFAFAFA),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xFF4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor ?? Colors.black,
        ),
      ],
    );
  }
}
