import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DashBoardDesctopLayout extends StatelessWidget {
  const DashBoardDesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  AllExpensses(),
                  SizedBox(
                    height: 24,
                  ),
                  QuickInvoice(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: MyCard(),
          ),
        ],
      ),
    );
  }
}
