import 'package:covid19app/models/prevention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  List<Prevention> prevention = [
    Prevention(text: "Avoid close\ncontact", image: "images/closecontact.jpeg"),
    Prevention(text: "Clean your\nhands often", image: "images/hands.png"),
    Prevention(text: "Wear a\nfacemask", image: "images/patient.png"),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               color: Colors.deepPurple,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
             ),
             child: Container(
               padding: EdgeInsets.only(left: 20,right: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Icon(Icons.menu,color: Colors.white,size: 30,),
                       Icon(Icons.notifications,color: Colors.white,size: 30,),
                     ],
                   ),
                   SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text("Covid - 19",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(30),
                         ),
                         padding: EdgeInsets.only(left: 16,right: 16,top: 6,bottom: 6),
                         child: Row(
                           children: <Widget>[
                             ClipRRect(
                               borderRadius: BorderRadius.circular(30),
                               child: Image.asset("images/india.png",height: 32,width: 32,fit: BoxFit.cover,),
                             ),
                             SizedBox(width: 10,),
                             Text("India",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                             SizedBox(width: 10,),
                             Icon(Icons.keyboard_arrow_down,size: 24,color: Colors.grey.shade500,),
                           ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 30,),
                   Text("Are you feeling sick?",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                   SizedBox(height: 20,),
                   Text("If you feel sick with any of covid 19 symptoms\nplease call or SMS us immediately for help.",style: TextStyle(fontSize: 16,height: 1.6,color: Colors.white),),
                   SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         height: 45,
                         child: FlatButton(
                           onPressed: (){},
                           color: Colors.red,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                           child: Container(
                             padding: EdgeInsets.only(left: 20,right: 20),
                             child: Row(
                               children: <Widget>[
                                 Icon(Icons.call,color: Colors.white,),
                                 SizedBox(width: 10,),
                                 Text("Call Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Container(
                         height: 45,
                         child: FlatButton(
                           onPressed: (){},
                           color: Colors.blue,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                           child: Container(
                             padding: EdgeInsets.only(left: 20,right: 20),
                             child: Row(
                               children: <Widget>[
                                 Icon(Icons.chat,color: Colors.white,),
                                 SizedBox(width: 10,),
                                 Text("Send SMS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 30,),
                 ],
               ),
             ),
           ),
           SizedBox(height: 30,),
           Padding(
             padding: EdgeInsets.only(left: 20),
             child: Text("Prevention",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
           ),
           SizedBox(height: 24,),
           Container(
             height: 120,
             child: ListView.builder(
               itemCount: prevention.length,
               shrinkWrap: true,
               physics: BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.only(left: 20),
               itemBuilder: (context, index){
                 return Container(
                   padding: EdgeInsets.only(right: 60),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Image.asset(prevention[index].image,height: 50,width: 50,fit: BoxFit.cover,),
                       SizedBox(height: 10,),
                       Text(prevention[index].text,style: TextStyle(fontSize: 16,height: 1.5,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                     ],
                   ),
                 );
               },
             ),
           ),
           SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.only(left: 20,right: 20),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color: Colors.indigo.withOpacity(0.3),
             ),
             padding: EdgeInsets.all(16),
             child: Row(
               children: <Widget>[
                 Image.asset("images/patient.png",height: 80,width: 80,),
                 SizedBox(width: 24,),
                 Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("Do your own test!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(height: 10,),
                       Text("Follow the instructions to do your own test.",style: TextStyle(fontSize: 16,height: 1.5,color: Colors.white),),
                     ],
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 30,)
         ],
       ),
     ),
   );
  }

}