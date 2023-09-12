import 'package:flutter/material.dart';

class BizCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("BizCard"),
        centerTitle: false,
        backgroundColor: Colors.amber,


      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            // Text("Hello")
               _getCard(),
            _getAvatar()
          ],


        ),

      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 340,
      height: 240,
      margin:EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.pink,
              borderRadius: BorderRadius.circular(4.5)



      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Khushi Paul",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          Text("khushipaul53@gmail.com")

        ],
      ),
    );
  }

  _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        image: DecorationImage(image:NetworkImage("https://picsum.photos/id/1/200/300"),
          fit:BoxFit.cover


        )
      ),

    );
  }

}

