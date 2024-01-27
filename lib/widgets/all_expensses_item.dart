import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/widgets/selected_all_expensses_item.dart';
import 'unselected_all_expensses_item.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({
    super.key,
    required this.allExpenssesItemModel,
    required this.isSelected,
  });

  final AllExpenssesItemModel allExpenssesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpenssesItem(
            allExpenssesItemModel: allExpenssesItemModel,
          )
        : UnSelectedAllExpenssesItem(
            allExpenssesItemModel: allExpenssesItemModel,
          );
  }
}
