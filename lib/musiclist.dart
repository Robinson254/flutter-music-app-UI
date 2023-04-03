import 'dart:ui';

import 'package:flutter/material.dart';
class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15.0,
          
          ),
          for(int i=1;i<20;i++)
          Container(
            margin: EdgeInsets.only(top: 15,right: 12,left: 5),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xff30314d),
              borderRadius: BorderRadius.circular(10.0),
              
            
            ),
            child: Row(
             
              children: [
                
                Text(
                  i.toString(),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  width: 25,
                  
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "musicPage");
                  },
                  child: Column(
                    children: [
                      Text("tiwa_savage_somebody",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,

                        ),
                        
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Bass",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),

                          ),
                          ),
                          SizedBox(
                            width: 2.0,
                            ),
                            Text('-',style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 25,
                            ),
                            ),
                            SizedBox(
                            width: 5.0,
                            ),
                            Text('05:30',style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    size: 25,
                    color: Color(0xff31314f),
                    ),
                  
                )
              ],
            ),
          )

        ],
      ),
      
    );
  }
}