import 'package:flutter/material.dart';
import 'package:gmail/view/componets/const.dart';

class CustumAppbar extends StatelessWidget {
  const CustumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(Icons.menu,size: 23,color: Colors.black87,),
                SizedBox(width: 19,),
                Image(
            image: AssetImage(
              'assets/gmail_logo.png',
            ),
            fit: BoxFit.cover,
            height: 25,
          ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 420,left: 90),
              child: Container(
                height: 50,
                width: 670,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xffEAF1FB)
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
                      const Icon(Icons.search,color: Color.fromARGB(255, 51, 49, 49),size: 24,),
                      kwidth5,
                      Text("Search here",style: TextStyle(color: Colors.grey,fontSize: 16),),

                     const Spacer(),
                         IconButton(
                  icon:  const Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                  onPressed: () {
                  },
                )
                    ],
                  ),
                ),
              ),
            )

, Padding(
  padding: const EdgeInsets.only(right: 20),
  child: Row(
    children: [
       IconButton(
          icon:  Icon(Icons.help_outline),
          onPressed: () {
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
          },
        ),
        IconButton(
          icon: const Icon(Icons.apps),
          onPressed: () {
          },
        ),
      const CircleAvatar(
        
        backgroundColor: Color.fromARGB(255, 136, 14, 5),
        child: Center(
          child: Text("A",style: TextStyle(color: Colors.white,fontSize: 19),),
        ),
      )
    ],
  ),
)
          ],
        ),
        
      ),
    );
  }
}