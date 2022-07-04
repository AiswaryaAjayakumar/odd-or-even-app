

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  TextEditingController num=TextEditingController();
 dynamic _check =0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Container(
       margin: EdgeInsets.all(20),
       child: Column(
         children: [
           SizedBox(height: 5,),
           TextField(
             controller: num,

             decoration: InputDecoration(
               hintText: "Enter a number",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30)
               )
             ),
           ),
           SizedBox(height: 15,),
           SizedBox(height: 55,
           width: double.infinity,
             child:  RaisedButton(
               color: Colors.lightGreen,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30)
                 ),
               onPressed: (){
              var getnum = double.parse(num.text);

              print(_check);
              setState(() {
                _check= (getnum%2)==0 ? "EVEN": "ODD";

              });

               },
               child: Text("CHECK",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 30
               ),
               ),
             ),
           ),

          Text(_check.toString()),
         ],
       ),
     ),
    );
  }
}


