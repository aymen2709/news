import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Abs extends StatefulWidget {
  const Abs({ Key ? key}) : super(key: key);

  @override
  State<Abs> createState() => _Abs();
}

class _Abs extends State<Abs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
      appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0.0,
          title: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 7.0,
                ),
                Image(
                  image: AssetImage('assets/images/Municiaplite.jpeg'),
                  width: 35.0,
                  height: 35.0,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Municipalité de Hammam Sousse',
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 18),
              icon: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.white),
  body:Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 10,
      ),
      Text('Actualités',
          style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20.0)),
      SizedBox(
        height: 10,
      ),
      Text('Découvrez toute notre actualité sur notre application',
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15.0)),
  Expanded(child:
      ListView.builder(
   padding: EdgeInsets.symmetric(horizontal: 11),

      shrinkWrap: true,
      itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
    return Container(
    child: Column(children: [

      SizedBox(
        height: 7,
      ),
          Card(
            elevation: 8,
            shadowColor: Colors.grey[50],
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(color: Colors.white)),
            child:Padding(
              padding: EdgeInsets.all(18),

              child:Column(
                children:[
                  Container(
                    width: 330.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage('assets/images/news.jpg')),
                      borderRadius: BorderRadius.only (topRight: Radius.circular(13.0),
                          topLeft: Radius.circular(13.0)),
                    ),
                  ),

                  Row(
                    children: [
                      SizedBox(height:38),
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: ),
                        decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 1, color: Colors.green),
                        ),
                        width: 75,
                        height: 20,
                        alignment: Alignment.center,
                        child: Text(
                          "Travaux",
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 1, // This can be the space you need between text and underline
                        ),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(
                              color: Colors.green,
                              width: 1.0, // This would be the width of the underline
                            ))
                        ),
                        child: Text(
                          "6-02-2022",style: TextStyle(fontSize: 14,)
                          ,),),

                      SizedBox(width: 20),
                      Image(
                        image: AssetImage('assets/images/clock.png'),
                        width: 15.0,
                        height: 15.0,
                      ),
                      SizedBox(width: 4),
                      Text("2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Jours",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(height: 8),

                  Row(
                    children: [
                      Text("Travaux sur la route de la plage",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Nous vous informons que nous avons des travaux \n pour améliorer la qualité de nos route",
                        style: TextStyle(
                          color: Colors.grey,

                        ),
                      ),
                    ],
                  ),
                ]
              )

            ),

          )



    ]));
    }))])
    );
  }
}
