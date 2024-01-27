import 'package:flutter/material.dart';
import '../models/all_expensses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expensses_item.dart';

class AllExpenssesListView extends StatefulWidget {
  const AllExpenssesListView({super.key});

  @override
  State<AllExpenssesListView> createState() => _AllExpenssesListViewState();
}

class _AllExpenssesListViewState extends State<AllExpenssesListView> {
  final List<AllExpenssesItemModel> items = const [
    AllExpenssesItemModel(
      image: AppImages.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpenssesItemModel(
      image: AppImages.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpenssesItemModel(
      image: AppImages.imagesExpenses,
      title: 'Expensses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex != e.key) {
                    setState(() {
                      selectedIndex = e.key;
                    });
                  }
                },
                child: AllExpenssesItem(
                  allExpenssesItemModel: item,
                  isSelected: selectedIndex == e.key,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (selectedIndex != e.key) {
                  setState(() {
                    selectedIndex = e.key;
                  });
                }
              },
              child: AllExpenssesItem(
                allExpenssesItemModel: item,
                isSelected: selectedIndex == e.key,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
