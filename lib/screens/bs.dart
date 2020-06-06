import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Bussiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/hotel.jpg"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            top: 40,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(LineAwesomeIcons.search,
                  color: Colors.white,
                  size: 30,),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                
                Text(
                  "View All",
                   style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontFamily: 'CentraleSansRegular',
                            fontWeight: FontWeight.w100),
                ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            height: 300,
            width: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset("assets/slide1.png"),
                Image.asset("assets/slide2.png"),
                Image.asset("assets/slide3.png")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 370),
            height: 400,
            width: 400,
            child: ListView(
              children: <Widget>[
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad1.png"),
                  title: Text("ALJAFERS RESTURANT",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("EGYPT",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad2.png"),
                  title: Text("ALHUSN CLOTHING STORE",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("SUDAN",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: Text("KAMRAN FURNTITURE SOCIETY",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("KARACHI",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}