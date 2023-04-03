import 'package:flutter/material.dart';
class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/f.png"),
          fit: BoxFit.cover,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                 Colors.black.withOpacity(0.5),
                 // Color(0xff31314f).withOpacity(1),
                   Color(0xff31314f).withOpacity(1),
              ])
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 45,horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:Icon( Icons.arrow_back,color: Colors.white,size: 30,),
                      
                    ),
                     InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:Icon( Icons.more_vert,color: Colors.white,size: 30,),
                      
                    )
                  ],
                ),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23,horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tiwa Savage",style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                                ),
                                SizedBox(height: 10,),
                                  Text("Singer Name",style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                ),
                              ],
                            ),
                            Icon(Icons.favorite,
                            color: Colors.redAccent,
                            size: 35,
                            )
                          ],
                        ),
                      ),
                      Slider(
                        min: 0,
                        max: 100,
                        value:40,
                         onChanged: (value){},
                         activeColor: Colors.white,
                         inactiveColor: Colors.white54,
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("03:10",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            
                            ),
                             Text("04:20",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              
                            ),
                          ),
                          ],
                         ),
                         SizedBox(height: 5,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.list,
                            color: Colors.white,
                            size: 26,
                            ),
                             Icon(Icons.skip_previous,
                            color: Colors.white,
                            size: 26,

                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child:Icon(Icons.play_arrow_rounded,size:35,color: Color(0xff31314f),)
                            ),

                             Icon(Icons.skip_next,
                            color: Colors.white,
                            size: 26,
                            ),
                             Icon(Icons.download,
                            color: Colors.white,
                            size: 20,),
                            
                            
                            
        
                          ],
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