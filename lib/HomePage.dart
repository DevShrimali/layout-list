import 'package:flutter/material.dart';
import 'squre.dart';
import 'circle.dart';

class HomePage extends StatelessWidget {
  final List _cards = [
    'card 1',
    'card 2',
    'card 3',
    'card 4',
    'card 5',
  ];

  final List _circles = [
    'List 1',
    'List 2',
    'List 3',
    'List 4',
    'List 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          AppBar(
            title: Text(
              'Yowza',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            backgroundColor: Colors.grey[200],
            elevation: 0,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MyCircle(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _cards.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _cards[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
