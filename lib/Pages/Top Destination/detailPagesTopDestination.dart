import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/detailsModelTopDestination.dart';
import 'package:travelapp/Pages/Detail%20Top%20Destination/detailPlacePagesTopDestination.dart';
import 'package:travelapp/Wdigets/Home/detailCardTopDestination.dart';
import 'package:travelapp/theme.dart';

class DetailPagesTopDestination extends StatelessWidget {
  const DetailPagesTopDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 235, 238),
      body: ListView(
        children: [
          //Background Image
          Stack(
            children: [
              
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/indonesia.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(17),
                    bottomRight: Radius.circular(17))),
            child: Padding(
              padding: EdgeInsets.only(left: edge, right: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Papua Barat",
                        style: WhiteText.copyWith(fontSize: 24),
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                          )))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.airplane,
                        color: whiteColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Indonesia",
                        style: WhiteText.copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: edge,top: 18),
              child: Container(
                height: 50,
                width: 50,
                child: Image(image: AssetImage("assets/btn_back.png"), fit: BoxFit.cover,)),
            ),
          ),
            ],
          ),

          // NOTE:Detail
           Padding(
             padding: EdgeInsets.only(left: edge, right : edge ),
             child: Column(
               children: [
                 SizedBox(height: edge,),
                DetailCardTopDestination(
                  DetailsModelTopDestination(
                    id: 1,
                    activities: "Sunrise Sailing",
                    price: 20,
                    open: "9.00 am",
                    close: "10.00 am",
                    imgUrl: "assets/rajaAmpat.jpg",
                    namePlace: "Raja Ampat",
                    location: "Kabupaten Raja Ampat",
                    city: "Papua Barat",
                    country: "Indonesia",
                    rating: 4,
                    phone: "081389091234",
                    url360: 'assets/rajaAmpat360.jpg'
                  )
                ),
                SizedBox(height: 10,),
                DetailCardTopDestination(
                  DetailsModelTopDestination(
                    id: 2,
                    activities: "Sightseing Tour",
                    price: 30,
                    open: "9.00 am",
                    close: "10.00 am",
                    imgUrl: "assets/misool.jpg",
                    namePlace: "Misool",
                    location: "Kabupaten Raja Ampat",
                    city: "Papua Barat",
                    country: "Indonesia",
                    rating: 3,
                    phone: "081389091234",
                    url360: 'assets/misoolIsland360.jpg'
                    
                  )
                ),
                SizedBox(height: 10,),
                DetailCardTopDestination(
                  DetailsModelTopDestination(
                    id: 3,
                    activities: "Sightseing Tour",
                    price: 15,
                    open: "11.00 am",
                    close: "15.00 am",
                    imgUrl: "assets/wajagIsland.jpg",
                    namePlace: "Wajag Island",
                    location: "Kabupaten Raja Ampat",
                    city: "Papua Barat",
                    country: "Indonesia",
                    rating: 5,
                    phone: "081389091234",
                    url360 : 'assets/wajagIsland360.jpg'
                  )
                ),
               ],
             ),
           )
        ],
      ),
    );
  }
}
