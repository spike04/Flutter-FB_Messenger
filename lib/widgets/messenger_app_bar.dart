import 'package:fb_messenger/widgets/app_bar_round_network_image.dart';
import 'package:fb_messenger/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

const imageUrl =
    "https://scontent.fbeg1-1.fna.fbcdn.net/v/t1.0-9/37262724_665073247174922_6865706832715841536_n.jpg?_nc_cat=103&_nc_ht=scontent.fbeg1-1.fna&oh=c3a2c99bfa7637e7e21a775c642b4f18&oe=5CCAA6EE";

class MessengerAppBar extends StatefulWidget {
  String title;
  List<Widget> actions;

  MessengerAppBar({@required this.title, this.actions = const <Widget>[]});

  _MessengerAppBarState createState() =>
      _MessengerAppBarState(title: title, actions: actions);
}

class _MessengerAppBarState extends State<MessengerAppBar> {
  String title;
  List<Widget> actions;

  _MessengerAppBarState({@required this.title, @required this.actions});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            AppBarRoundNetworkImage(imageUrl: imageUrl),
            SizedBox(width: 16.0),
            AppBarTitle(title: 'Chats'),
          ],
        ),
        Row(
          children: actions.map((action) {
            return Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: action,
            );
          }).toList(),
        ),
      ],
    );
  }
}
