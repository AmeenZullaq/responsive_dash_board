import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int selectedItem = 0;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      image: AppImages.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AppImages.imagesMyTransctions,
      title: 'Transaction',
    ),
    DrawerItemModel(
      image: AppImages.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: AppImages.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AppImages.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (selectedItem != index) {
                selectedItem = index;
                print(selectedItem);
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              item: items[index],
              isPressed: selectedItem == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
