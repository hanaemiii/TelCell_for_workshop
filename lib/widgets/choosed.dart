import 'package:flutter/material.dart';

class choosed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 15, top: 0, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Favorites', style: TextStyle(fontSize: 20)),
              Text('view all'),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 3, top: 15),
                padding: EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Color(0xffF3F5F5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xff37424A),
                  ),
                ),
              ),
              Text('Add', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
