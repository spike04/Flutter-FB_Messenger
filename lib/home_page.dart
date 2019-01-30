import 'package:fb_messenger/widgets/conversation_list.dart';
import 'package:fb_messenger/widgets/search_bar.dart';
import 'package:fb_messenger/widgets/stories_list.dart';
import 'package:flutter/material.dart';
import 'package:fb_messenger/widgets/messenger_app_bar.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buildAppBar(),
            _buildRootLessView(),
          ],
        ),
      ),
    );
  }

  _buildRootLessView() {
    return Expanded(
      child: ListView.builder(
        itemCount: 21,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: SearchBar(),
            );
          } else if (index == 1) {
            return Container(
              height: 100,
              child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                  child: StoriesList()),
            );
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ConversationListItem(),
            );
          }
        },
      ),
    );
  }

  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: MessengerAppBar(
        title: 'Chats',
        actions: <Widget>[Icon(Icons.camera_alt), Icon(Icons.edit)],
      ),
    );
  }
}
