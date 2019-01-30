import 'package:flutter/material.dart';

const imageUrl =
    "https://scontent.fbeg1-1.fna.fbcdn.net/v/t1.0-9/37262724_665073247174922_6865706832715841536_n.jpg?_nc_cat=103&_nc_ht=scontent.fbeg1-1.fna&oh=c3a2c99bfa7637e7e21a775c642b4f18&oe=5CCAA6EE";

class ConversationList extends StatefulWidget {
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 12.0),
          child: ConversationListItem(),
        );
      },
      itemCount: 200,
    );
  }
}

class ConversationListItem extends StatefulWidget {
  _ConversationListItemState createState() => _ConversationListItemState();
}

class _ConversationListItemState extends State<ConversationListItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildConversationImage(),
        _buildTitleAndLatestMessage(),
      ],
    );
  }

  _buildConversationImage() {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  _buildTitleAndLatestMessage() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildConversationTitle(),
          SizedBox(height: 8.0),
          Row(
            children: <Widget>[
              _buildLatestMessage(),
              SizedBox(width: 4.0),
              Text('.'),
              SizedBox(width: 4.0),
              _buildTimeOfLatestMessage(),
            ],
          ),
        ],
      ),
    );
  }

  _buildConversationTitle() {
    return Text(
      'John Smith',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _buildLatestMessage() {
    return Text(
      'Hello',
      style: TextStyle(
        color: Colors.grey.shade700,
      ),
    );
  }

  _buildTimeOfLatestMessage() {
    return Text(
      '22:21',
      style: TextStyle(
        color: Colors.grey.shade700,
      ),
    );
  }
}
