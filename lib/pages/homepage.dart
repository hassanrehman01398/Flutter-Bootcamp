import "package:flutter/material.dart";
//stateful widget data can transform its data during developement
//while stateless widget cannot change data 
import "package:gamify/data.dart";
class HomePage extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePagestate();
  }

}
//Now what is scaffold?Scaffold is a simple blank page.
class _MyHomePagestate extends State<HomePage>{
var device_height;
var device_width;
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //now we will use stack bcz stack will show from top to bottom
      body://Container(),
      Stack(
children: <Widget>[

  _featuegamewidget(),
],
     ) ,
    
    
    
    );
  }
  Widget _featuegamewidget(){
   device_height=MediaQuery.of(context).size.height;
    device_width=MediaQuery.of(context).size.width;
 
return SizedBox(
  height:device_height  * 0.50,
  width:device_width,

child: PageView(
scrollDirection: Axis.horizontal,
children: featuredGames.map((_game){
return Container(
decoration: BoxDecoration(
image: DecorationImage(
  fit: BoxFit.cover,
  image:NetworkImage(featuredGames[0].coverImage.url) 

)
),  

);

//)

}).toList(),));

}


//);

//);
   }
//}

/*

Container(
decoration: BoxDecoration(
image: DecorationImage(
  fit: BoxFit.cover,
  image:NetworkImage(featuredGames[0].coverImage.url) 

)
),


 */