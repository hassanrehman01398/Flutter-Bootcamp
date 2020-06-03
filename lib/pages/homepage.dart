import "package:flutter/material.dart";
//stateful widget data can transform its data during developement
//while stateless widget cannot change data 
import "package:gamify/data.dart";
class homepage extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
//Now what is scaffold?Scaffold is a simple blank page.
class _MyHomepagestate extends State<homepage>{
var device_height;
var device_width;
@override
  void initState() {
    device_height=MediaQuery.of(context).size.height;
    device_width=MediaQuery.of(context).size.width;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //now we will use stack bcz stack will show from top to bottom
      body:Stack(
children: [],
      ) ,
    
    
    
    );
  }
  Widget _featuegamewidget(){

return SizedBox(height:device_height*0.50,width:device_width,child: Container(
decoration: BoxDecoration(
image: DecorationImage(
  fit: BoxFit.cover,
  image:NetworkImage(featuredGames[0].coverImage.url) 

)
),
));
  }
}

