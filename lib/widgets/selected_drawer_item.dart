import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class SelectedDrawerItem extends StatelessWidget {
  const SelectedDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        item.image,
      ),
      title: Text(
        item.title,
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
        height: 50,
        width: 2,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
