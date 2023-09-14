import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:helloworld/helpers/colors.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.appBlack),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transport', style: TextStyle(color: AppColors.appBlack)),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            transport(),
          ],
        ),
      ),
    );
  }

  Widget transport() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Transport', style: TextStyle(fontSize: 15)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price per trip (AMD)',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text('100', style: TextStyle(fontSize: 15))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'QR code expiry date (days)',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text('30', style: TextStyle(fontSize: 15))
            ],
          ),
        ],
      ),
    );
  }
}
