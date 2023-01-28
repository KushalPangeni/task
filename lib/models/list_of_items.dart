import 'package:flutter/material.dart';

class ListOfItems extends StatelessWidget {
  final List<String> foods;
  final List<int> noOforders;
  const ListOfItems({super.key, required this.foods, required this.noOforders});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: foods.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  foods[index],
                  style: const TextStyle(fontSize: 10),
                ),
                Text(
                  noOforders[index].toString(),
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
