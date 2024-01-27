import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensses_header.dart';
import 'package:responsive_dash_board/widgets/all_expensses_list_view.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(20),
      child: const Column(
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
