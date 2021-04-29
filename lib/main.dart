import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    title: "this is satateful",
     home: fast(),
  ),
  );
}
class fast extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _fav();
  }

}
class _fav extends State<fast>
{
  String name="";
  var _currency=['Rupees','Dollor','pounds'];
  var _currenitem='Rupees';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Stateful App"),
     ),
     body: Container(
       margin: EdgeInsets.all(20.0),
       child: Column(
         children: <Widget>[
           TextField(
             onSubmitted: (String user)
             {
               setState(() {
                 name=user;
               });

             },
           ),
           DropdownButton<String>(

             items:_currency.map((String dropDownStringItem){
               return DropdownMenuItem<String>(
                 value: dropDownStringItem,
                 child: Text(dropDownStringItem),
               );
             }).toList(),
             onChanged: (String newValueSelected){
               setState(() {
                 this._currenitem=newValueSelected;
               });

             },
             value: _currenitem,
           ),
           Padding(
             padding: EdgeInsets.all(30.0),
               child:Text(
                 "Your City is $name",
             style: TextStyle(fontSize: 20.0),
           ),
           ),
         ],
       ),
     ),

   );



  }

}