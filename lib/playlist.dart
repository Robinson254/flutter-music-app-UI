

import 'package:flutter/material.dart';
class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     
      child: Column(
        children: [
           for(int i=1;i<20;i++)
          Container(
            margin: EdgeInsets.only(top:20,right: 20,left:5 ),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xff30314d)
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'playlistPage');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(image: AssetImage("assets/j.png"),
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                    ),
                    
                  ),
                
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text("Tiwa_Savage",style:TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("26 songs",style:TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      
                    ),
                    ),

                  ],
                  
                ),
                Spacer(),
                    Icon(Icons.more_vert,
                    color: Colors.white.withOpacity(0.6),
                    size: 27,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}