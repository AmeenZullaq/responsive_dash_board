import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'selected_drawer_item.dart';
import 'unselected_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.item,
    required this.isPressed,
  });

  final DrawerItemModel item;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return isPressed
        ? SelectedDrawerItem(item: item)
        : UnSelectedDrawerItem(item: item);
  }
}
