import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoardView(),
    );
  }
}
// the problem of column that i must to give it a fixed height inside singlechildscrollview.
   //we can solve this throught using customscrollview insted singlechildscrollview 

// Expanded widget inside row or column

// if i have horizintal itemes when should i use row or horizintal listview : 
   // 1: if the number of items are large i should use horizintal listview
   // 2: if i have a small numbers of items(2, 3) i should use row espically if i want to  make the items Expanded
   //                                                                                                     ======== 
   

// 1: horizintal listview needs from me to detemine its height
// 2: row does not need from mt to detemine its height   