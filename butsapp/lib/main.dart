import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "butsapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.green,
        //non clickabe
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        // actions: [IconButton(icon: Icon(Icons.arrow_back, size: 30,), onPressed: () {  },)],
        //clickable
        title: Text("settings"),
      ),
      body: Container( 
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.vox-cdn.com/thumbor/KWq2rDyZR5SEc4XQN3-wDO5qSyk=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16221040/parabellumcover.jpg'),
                        radius: 30,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Title(
                                color: Colors.black,
                                child: Text(
                                  "John Wick(Ritaban)",
                                  style: TextStyle(fontSize: 20),
                                )),
                            Text("EVERYTHING’S GOT A PRICE."),
                          ]),
                      Icon(Icons.qr_code),
                    ]),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.vpn_key),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Account",
                                style: TextStyle(fontSize: 20,)
                              ),
                            )),
                        Text("Privacy,Security,Change number"),
                      ]),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.chat),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Chat",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        Text("theme,wallpaper,chathistory"),
                      ]),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.notifications),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Notification",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        Text("message,groups & call tones"),
                      ]),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.data_saver_off),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Storage and data",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        Text("Network usage, auto download"),
                      ]),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.help),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Help",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        Text("help center, contact us, privacy policy"),
                      ]),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 50, 10, 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.contacts),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Invite a friend",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ]),
                ],
              ),
              Container(
                child: Text("from"),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "FAKEBOOK",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
