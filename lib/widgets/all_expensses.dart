import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensses_header.dart';
import 'package:responsive_dash_board/widgets/all_expensses_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpenssesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpenssesListView(),
        ],
      ),
    );
  }
}
