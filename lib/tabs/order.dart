// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task/table_of_order.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 15,
      crossAxisCount: 3,
      childAspectRatio: 0.75,
      children: [
        //Add order
        Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: 135,
              width: 112,
              decoration: BoxDecoration(
                color: Colors.teal[50],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.teal,
                  ),
                  Text(
                    'Add order',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //Gridview containers
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [1, 4, 5, 3],
          tablename: 'First Floor T4',
        ),
        TOO(
          food: ['Chi Burger', 'Mas Pizza', 'Cake', 'Wine'],
          noOforder: [1, 2, 1, 3],
          tablename: 'Roof T2',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [1, 1, 4, 3],
          tablename: 'Balcony Table',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [1, 3, 1, 3],
          tablename: 'Table 31',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: [
            'Mid Steak',
            'Taco',
            'Chi Burger',
            'Wine',
          ],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
        TOO(
          food: ['Mid Steak', 'Taco', 'Chi Burger', 'Wine'],
          noOforder: [2, 2, 1, 3],
          tablename: 'Mike Torello',
        ),
      ],
    );
  }
}
