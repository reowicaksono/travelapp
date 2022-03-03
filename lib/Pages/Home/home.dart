import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/modelExclusiveHotel.dart';
import 'package:travelapp/Models/Home/topDestinationsModels.dart';
import 'package:travelapp/Pages/Top%20Destination/detailPagesTopDestination.dart';
import 'package:travelapp/Wdigets/Home/bottomNavbarItem.dart';
import 'package:travelapp/Wdigets/Home/card_ExclusiveHotels.dart';
import 'package:travelapp/Wdigets/Home/topDestinations.dart';
import 'package:travelapp/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Where would you \nspend your holiday?",
              style: BlackText.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue[100],
                    child: Icon(
                      CupertinoIcons.airplane,
                      color: purpleColor,
                    ),
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.black12,
                    child: Icon(
                      CupertinoIcons.car_fill,
                      color: Colors.black54,
                    ),
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.black12,
                    child: Icon(
                      CupertinoIcons.bus,
                      color: Colors.black54,
                    ),
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.black12,
                    child: Icon(
                      Icons.motorcycle,
                      color: Colors.black54,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge, right: edge),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style: BlackText.copyWith(fontSize: 18),
                  ),
                  Text(
                    "See All",
                    style: BlueText,
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: edge,
                ),
                TopDestinations(
                  TopDestinationsModel(
                    id: 1,
                    country: "Japan",
                    city: "Tokyo",
                    imgUrl: "assets/japan.jpg",
                    activities: 89,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DetailPagesTopDestination();
                    }));
                  },
                  child: TopDestinations(
                    TopDestinationsModel(
                      id: 2,
                      country: "Indonesia",
                      city: "Papua Barat",
                      imgUrl: "assets/indonesia.jpg",
                      activities: 97,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TopDestinations(
                  TopDestinationsModel(
                    id: 3,
                    country: "France",
                    city: "Paris",
                    imgUrl: "assets/paris.jpg",
                    activities: 97,
                  ),
                ),
                SizedBox(
                  width: edge,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge, right: edge),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exclusive Hotels",
                    style: BlackText.copyWith(fontSize: 18),
                  ),
                  Text(
                    "See All",
                    style: BlueText,
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: edge,
              top: edge,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardExclusiveHotels(ModelExlusiveHotel(
                    id: 1,
                    city: "Bali",
                    country: "Indonesia",
                    imgUrl: "assets/baliHotel.jpeg",
                    nameHotel: "Capela Ubud",
                    activities: 80)),
                CardExclusiveHotels(ModelExlusiveHotel(
                    id: 2,
                    city: "Tokyo",
                    country: "Japan",
                    imgUrl: "assets/japanHotel.jpg",
                    nameHotel: "Hashimoto Hoteru",
                    activities: 80)),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          )
        ],
      )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icons_search.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/user.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
