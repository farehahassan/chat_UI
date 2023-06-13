//  import 'package:flutter/cupertino.dart';
import 'package:chatui_app/widgets/category_selector.dart';
import 'package:chatui_app/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

// import '../models/message_model.dart';
import '../widgets/Recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Center(
          child: Text(
            "Chats",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
        const categorySelector(),
        Expanded(
          child: Container(
            // height: 500,
            decoration: BoxDecoration(
                color: Theme.of(context).hintColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(children: [
              const FavoriteContacts(),
              RecentChats(),
            ]),
          ),
        )
      ]),
    );
  }
}
