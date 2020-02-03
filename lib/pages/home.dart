import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: <Widget>[
            //Row for email phone amount
            Container(
              child: buildTopHeader(),
              color: Colors.grey,
            ),
            //row for header
            buildHeader(),
            //row for nav
            //row for slider
            //horizoantal  scroll courasal
          ],
        ),
      ),
    );
  }

  Widget buildTopHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Email: admin@jonjans.com  | "),
            Text("Phone no: 9886319931")
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text("Login/Register"),
              onPressed: () {
                //TODO: Go to Login Page
              },
            ),
            FlatButton(
              child: Text("NPR(RS) "),
              onPressed: () {
                //TODO: Show Amount
              },
            ),
          ],
        ),
      ],
    );
  }

  buildHeader() {
    return Row(
      children: <Widget>[
        //logo image
        Image.network(
            "https://jonjans.com/ai_content/uploads/2020/01/cropped-shoe-world-1-e1579963903767-2.jpg"),
        Spacer(),
        //title & subtitle
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Jonjans",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Shoe World Online Store")
          ],
        ),
        Spacer(),
        //ad image
        Image.network(
            "https://jonjans.com/ai_content/uploads/2020/01/jonjan_board.png"),
        Spacer(),
        //Wishlist icon
        Badge(
          badgeColor: Colors.red,
          child: Icon(Icons.widgets,size: 30.0,),
          badgeContent: Text("0"),
        ),
        // IconButton(
        //   icon: Icon(Icons.widgets,size: 30.0,),
        //   onPressed: (){
        //     //TODO: Open Wishlist Page
        //   },
        // ),
        //Cart Icon
        IconButton(
          icon: Icon(Icons.add_shopping_cart,size: 30.0,),
          onPressed: (){
            //TODO: Open Wishlist Page
          },
        ),
        //Total Price
      ],
    );
  }
}
