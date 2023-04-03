
import 'package:flutter/material.dart';
import 'package:musicapp/playlist.dart';

import 'musiclist.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Color(0x303151).withOpacity(0.6),
              Color(0x303151).withOpacity(0.6),
    
            ] )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20,left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (() {
                            
                          }),
                          child: Icon(
                            Icons.sort_rounded,
                            color: Color(0xFF899CCF),
                            size: 30,),
                        ),
                          InkWell(
                          onTap: (() {
                            
                          }),
                          child: Icon(
                            Icons.more_vert,
                            color: Color(0xFF899CCF),
                            size: 30,),
                        )
                      ],
                    ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(bottom:5 ),
                      child: Text("Hey Madam",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize:28 
                      ),
                      ),
                       ),
                         Padding(
                      padding:EdgeInsets.only(bottom:5 ),
                      child: Text("what you wanna listen madam?",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize:16
                      ),
                      ),
                       ),
                       Padding(
                        padding: EdgeInsets.only(top: 15,right: 20,bottom: 20),
                        child: Container(
                          height: 50.0,
                          width: 380.0,
                          decoration: BoxDecoration(
                            color: Color(0xff31314f),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                height: 50,
                                width: 200,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "search the music",
                                    hintStyle:TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    border:InputBorder.none,
                                  ),
                                
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                ),
                            ],
                          ),
                        ),
                        ),
                        TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(fontSize: 17),
                          indicator: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width:3,
                                color: Color(0xff899ccf),
                              )
                            )
                          ),
                          tabs: [
                            Tab(text: "Musics"),
                            Tab(text: "Playlists"),
                             Tab(text: "Favourites"),
                              Tab(text: "New"),
                               Tab(text: "Collection"),
                                Tab(text: "Trending"),
                          ],
                        ),
                        Flexible(
                          flex: 1,
                          child: TabBarView(
                            children:[
                            MusicList(),
                            PlayList(),
                            MusicList(),
                            MusicList(),
                            MusicList(),
                            MusicList(),

                            ]
                            ),),

                        
                    
                ],
                
              ),
              ),
              ),
        ),
      ),
    );
  }
}