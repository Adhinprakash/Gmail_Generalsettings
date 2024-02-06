import 'package:flutter/material.dart';

class Mailitems extends StatelessWidget {
   Mailitems({super.key, required this.icon, required this.mailtype, this.mailcount, required this.fontWeight});
final IconData icon;
final String mailtype;
final FontWeight fontWeight;
final mailcount;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:   
      
       [
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       Icon(icon,color: const Color.fromARGB(255, 120, 120, 120),size: 17,),
       SizedBox(width: 15,),
        Text(mailtype,style:  TextStyle(color: Colors.black,fontWeight:fontWeight ,fontSize: 15),) 
        ],
       ),
      
       Text(mailcount,style: const TextStyle(color: Color.fromARGB(255, 105, 105, 105),fontSize: 11),)
      ],),
    ) ;
  }
}