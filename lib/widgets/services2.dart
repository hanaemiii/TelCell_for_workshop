import 'package:flutter/material.dart';
import 'package:helloworld/helpers/colors.dart';

class ServicesGrey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 15, top: 13, bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Services', style: TextStyle(fontSize: 20)),
              Text('view all'),
            ],
          ),
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    serviceItemGrey(
                        icon: Icons.ballot_outlined,
                        title: 'Payments',
                        onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.compare_arrows,
                        title: 'Transfers',
                        onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.plus_one, title: 'Loans', onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.emoji_transportation,
                        title: 'Transport',
                        onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.auto_awesome_sharp,
                        title: 'Events',
                        onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.arrow_upward,
                        title: 'Withdrawal',
                        onTap: () {}),
                    serviceItemGrey(
                        icon: Icons.handshake, title: 'Partners', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget serviceItemGrey(
    {required dynamic icon,
    required String title,
    required void Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color(0xffF3F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 100,
      height: 100,
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: AppColors.appOrange, size: 30),
          Text(title, style: TextStyle(fontSize: 15, color: Color(0xff000000))),
        ],
      ),
      // Text(subtitle),
    ),
  );
}
