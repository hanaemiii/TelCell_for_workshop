import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 15, top: 15, bottom: 15),
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Special offers', style: TextStyle(fontSize: 20)),
                Text('view all'),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_city-750x350-1-360x168.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/750x350-17-360x168.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_solara-750x350-1.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_buy.am-750x350-1.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_zangak-750x350-1.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_gurmenia750x350.png'),
                offersItem(
                    imageURL:
                        'https://blog.telcell.am/wp-content/uploads/2023/08/684x380_downtown-750x350-1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget offersItem({required dynamic imageURL}) {
  return Padding(
    padding: EdgeInsets.only(right: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        image: NetworkImage(imageURL),
        width: 150,
      ),
    ),
  );
}
