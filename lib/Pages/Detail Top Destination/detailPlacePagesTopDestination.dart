
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Models/Home/detailsModelTopDestination.dart';
import 'package:travelapp/Pages/error_page.dart';
import 'package:travelapp/Pages/view360.dart';
import 'package:travelapp/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPlacePagesTopDestination extends StatelessWidget {
  final DetailsModelTopDestination detailsModelTopDestination;
  DetailPlacePagesTopDestination(this.detailsModelTopDestination);

  


  @override
  Widget build(BuildContext context) {

        launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    Future<void> handleBook(DetailsModelTopDestination detailsModelTopDestination) async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Do you want?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text(
                  'Later',
                  style: GreyText,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Call'),
                onPressed: () {
                  Navigator.of(context).pop();
                  launchUrl('tel:${detailsModelTopDestination.phone}');
                },
              ),
            ],
          );
        },
      );
    }


    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Stack(
        children: [
          Image(
            image: AssetImage(detailsModelTopDestination.imgUrl),
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(detailsModelTopDestination.namePlace,
                                  style: BlackText.copyWith(fontSize: 22)),
                              Text.rich(
                                TextSpan(
                                  text: '\$${detailsModelTopDestination.price}',
                                  style: BlackText.copyWith(
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' / person',
                                      style: GreyText.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              for (int i = 1;
                                  i <= detailsModelTopDestination.rating;
                                  i++)
                                Icon(CupertinoIcons.star_fill,
                                    color: orangeColor, size: 17),
                              if (detailsModelTopDestination.rating != 5)
                                for (int j = detailsModelTopDestination.rating;
                                    j < 5;
                                    j++)
                                  Icon(CupertinoIcons.star_fill,
                                      color: greyColor, size: 17)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE: LOCATION
                    Padding(
                      padding: EdgeInsets.only(left: edge,),
                      child: Text(
                        'Location',
                        style: BlackText.copyWith(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge, right : edge),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - (4* edge),
                            child: Text(
                              '${detailsModelTopDestination.location}, ${detailsModelTopDestination.city}\n${detailsModelTopDestination.country}',
                              style: GreyText.copyWith(fontSize: 16),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/btn_map.png',
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("Overview",
                                  style: BlueText.copyWith(fontSize: 22)),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 5,
                                width: 30,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text("Photos",
                                  style: BlackText.copyWith(fontSize: 22)),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                        padding: EdgeInsets.only(left: edge, right: edge),
                        child: Text(
                          "Lorem ipsum dolor sit amet, at vim saepe menandri.",
                          style: GreyText.copyWith(fontSize: 16),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 2.0, color: Colors.blue),
                            ),
                            child: RaisedButton(
                              onPressed: () {
                                handleBook(detailsModelTopDestination);
                              },
                              child: Icon(CupertinoIcons.phone_fill),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: whiteColor,
                              splashColor: Colors.green,
                              animationDuration: Duration(seconds: 2),
                              elevation: 5.0,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width:
                                MediaQuery.of(context).size.width - (6 * edge),
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {
                                var urlImage = detailsModelTopDestination.url360;
                                Navigator.push(context, MaterialPageRoute(builder: (context) => viewStreetCard(urlImage),));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              color: Colors.blue,
                              elevation: 5.0,
                              child: Center(
                                child: Text(
                                  "Preview",
                                  style: WhiteText.copyWith(fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
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
      )),
    );
  }
}
