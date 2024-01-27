import 'package:flutter/material.dart';
import '../models/all_expensses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expensses_item_header.dart';

class UnSelectedAllExpenssesItem extends StatelessWidget {
  const UnSelectedAllExpenssesItem({
    super.key,
    required this.allExpenssesItemModel,
  });

  final AllExpenssesItemModel allExpenssesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpenssesItemHeader(
            image: allExpenssesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpenssesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpenssesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpenssesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
