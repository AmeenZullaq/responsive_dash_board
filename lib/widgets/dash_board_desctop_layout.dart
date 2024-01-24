import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardDesctopLayout extends StatelessWidget {
  const DashBoardDesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
        ],
      ),
    );
  }
}
