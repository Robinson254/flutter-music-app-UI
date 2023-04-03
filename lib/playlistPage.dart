import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff303151).withOpacity(0.6),
             Color(0xff303151).withOpacity(0.6),


          ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
body: SafeArea(
  
  child: SingleChildScrollView(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
            Icons.arrow_back,
            size: 27,
            color: Color(0xff899ccf),
            ),
          ),
          InkWell(
            // onTap: () {
            //   Navigator.pop(context);
            // },
            child: Icon(
            Icons.more_vert,
            size: 27,
            color: Color(0xff899ccf),
            ),
          ),
        
        ],
   
  ),
   SizedBox(
        height: 10.0,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        
        child: Image(image: AssetImage('assets/m1.png'),
        fit: BoxFit.cover,
        width:250 ,
        height: 260,
        ),
      ),
     Column(
      children: [
         SizedBox(
        height: 20,
      ),
      Text("Tiwa Savage",
      style: TextStyle(
        color: Colors.white.withOpacity(0.9),
        fontSize: 28,
        fontWeight: FontWeight.w400,
      ),
      ),
      SizedBox(
        height: 8,
      ),
       Text("Artist Name",
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 18,
       
      ),
      ),
      ],
     ),
     SizedBox(
      height: 30.0,
      
     ),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            
          },
          child: Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Play All",
              style: TextStyle(
                color: Color(0xff30314d),
                fontSize: 20,
                fontWeight: FontWeight.w500,

              ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.play_arrow_rounded,
              color: Color(0xff30314d),
              size: 40,)
            ],),
          ),
        ),
         InkWell(
          onTap: () {
            
          },
          child: Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              color: Color(0xff30314d),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Shuffle",
              style: TextStyle(
                color:Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,

              ),
              ),
              SizedBox(width: 10,),
              Icon(Icons.shuffle_on,
              color:Colors.white,
              size: 20,)
            ],
            ),
          ),
        )
      ],
     ),
     SizedBox(
      height: 20,
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
                  // onTap: () {
                  //   Navigator.pushNamed(context, "musicPage");
                  // },
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
    
  ),
  ),
      ),
    );
  }
}