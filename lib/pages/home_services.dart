import 'package:flutter/material.dart';
import 'package:helloworld/helpers/colors.dart';
import 'package:helloworld/pages/transport_page.dart';
import 'package:helloworld/widgets/services2.dart';
import 'package:helloworld/widgets/choosed.dart';
import 'package:helloworld/widgets/offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: homeBar(),
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appOrange,
        unselectedItemColor: Colors.grey,
        elevation: 7,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'BON'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR code'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: 'Banking'),
        ],
      ),
    );
  }

  // PreferredSizeWidget appBar() {
  //   return getAppBar();
  // }

  // PreferredSizeWidget getAppBar() {
  //   switch (currentTab) {
  //     case 0:
  //       return new AppBar(
  //         homeBar(),
  //       );
  //     case 1:
  //       return

  //     default:
  //       return Container();
  //   }
  // }

  Widget body() {
    return getBody();
  }

  Widget getBody() {
    switch (currentTab) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: [
              balance(),
              services(),
              ServicesGrey(),
              choosed(),
              Offers(),
            ],
          ),
        );
      case 1:
        return Container(
          child: Text('BON!!!!!'),
        );
      default:
        return Container();
    }
  }

  PreferredSizeWidget homeBar() {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Gor',
                style: TextStyle(
                    color: AppColors.appBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.chevron_right_outlined, color: AppColors.appBlack)
            ],
          ),
          Text(
            'expert',
            style: TextStyle(color: AppColors.appBlack, fontSize: 10),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            color: AppColors.appBlack,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: AppColors.appBlack,
          ),
        ),
      ],
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xffF3F5F5),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          iconSize: 20,
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Color(0xff37424A),
          ),
        ),
      ),
    );
  }

  Widget balance() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 160,
              decoration: BoxDecoration(
                color: AppColors.appLightGrey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.remove_red_eye_sharp),
                    ],
                  ),
                  Text('Balance'),
                  Text('0.00 Դ'),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            'Replenish',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 23, bottom: 23),
                height: 160,
                decoration: BoxDecoration(
                  color: Color(0xff6FD8FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'VISA | TELCELL',
                        style: TextStyle(
                          fontSize: 9.75,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                        ),
                      ),
                      //Expanded(
                      Container(
                        width: 50,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration:
                                      BoxDecoration(color: Color(0xffffffff)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration:
                                      BoxDecoration(color: Color(0xffffffff)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //),
                      Text(
                        'SOON',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffffffff),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ])),
          ),
        ],
      ),
    );
  }

  Widget services() {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: EdgeInsets.all(15),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          serviceItem(
              title: 'Տրանսպորտ',
              subtitle: 'ուղետոմսեր',
              bgColor: Color(0xff14cd7f),
              imageURL:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjgnqRyAlsyq12StBC-R0zTonIhxzdT3CC26xF3UYPtKvhGCpZcrqYjSWWAgLrmTtZNgMS41D93udGEgDYukzjadTnY28D_nu5Ny8ba5hTuZL2e9QDPzMVMSx9TIibZmdXkw0PDXtBP5XPdk-ioHGhnn7MRGJ4V-BL2JEHBROlOPEoFT5VJqcKep1y5j3M/s320/HvAw-unscreen.gif',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransportPage(),
                  ),
                );
              }),
          serviceItem(
              title: 'Իվենթներ',
              subtitle: '',
              bgColor: Color(0xffA48DC0),
              imageURL:
                  'https://cdn3d.iconscout.com/3d/premium/thumb/party-disco-ball-and-speaker-6894947-5740391.png?f=webp',
              onTap: () {}),
          serviceItem(
              title: 'Տերմինալից',
              subtitle: 'համալրված',
              bgColor: Color(0xffD75535),
              imageURL:
                  'https://clipart-library.com/2023/cute-piggy-bank-clipart-md.png',
              onTap: () {}),
          serviceItem(
              title: 'Վարկ',
              subtitle: 'Մեքենայի գրավադրմամբ',
              bgColor: Color(0xff9778B7),
              imageURL:
                  'https://images.selency.com/901afceb-72e8-40b0-a59c-4d96ded0e99e?width=332&height=372',
              onTap: () {}),
          serviceItem(
              title: 'Զգոնությունդ',
              subtitle: '',
              bgColor: Color(0xffef8559),
              imageURL:
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg-BCqosHXnNKNsvqpQ28CxkCrr_dRJrmnQG2xqEPJSiqSx_2HJoEySVl1G_Se8gmi8ztXbSdtIW2WRwjmondPD77wAL6Y30F7r5dKVcgUuMJjk-_XKPfeFzoT-x2Evnj1E3VE9UR9Z9LpkdHt_JEJEkD-hrmo_wNx3_bLkVQq8ELLOlFvFoLwRMWX9fjc/w945-h600-p-k-no-nu/Climate%20change.png',
              onTap: () {}),
        ],
      ),
    );
  }

  Widget serviceItem(
      {required String title,
      String? subtitle,
      required Color bgColor,
      required String imageURL,
      required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 9),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 100,
        padding: EdgeInsets.only(right: 5, left: 5, top: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 13, color: Color(0xffffffff))),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),

                // Text(subtitle),
                Stack(
                  children: [
                    if (imageURL.isNotEmpty)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.network(
                          imageURL,
                          fit: BoxFit.contain,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
