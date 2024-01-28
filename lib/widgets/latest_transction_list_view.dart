import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/latest_transction_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  final List<UserInfoModel> items = const [
    UserInfoModel(
      image: AppImages.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
    ),
    UserInfoModel(
      image: AppImages.imagesAvatar2,
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: AppImages.imagesAvatar3,
      name: 'Mohammed Ali',
      email: 'Mohammedali@gmail.com ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
