import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'range_option.dart';

class AllExpenssesHeader extends StatelessWidget {
  const AllExpenssesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expensses',
          style: AppStyles.styleSemiBold20,
        ),
        RangeOption(),
      ],
    );
  }
}
