import 'package:fb_messenger/widgets/add_to_your_story_button.dart';
import 'package:flutter/material.dart';

const imageUrl =
    "https://scontent.fbeg1-1.fna.fbcdn.net/v/t1.0-9/37262724_665073247174922_6865706832715841536_n.jpg?_nc_cat=103&_nc_ht=scontent.fbeg1-1.fna&oh=c3a2c99bfa7637e7e21a775c642b4f18&oe=5CCAA6EE";

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return AddToYourStoryButton();
        } else if (index < 10)
          return StoriesListItem(isViewed: false);
        else
          return StoriesListItem(isViewed: true);
      },
      itemCount: 21,
      scrollDirection: Axis.horizontal,
    );
  }
}

class StoriesListItem extends StatelessWidget {
  bool isViewed;

  StoriesListItem({@required this.isViewed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: _getBorder(),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Abc',
              softWrap: true,
              style: _getTextStyle(),
            ),
          ],
        ),
        Container(width: 12.0),
      ],
    );
  }

  _getTextStyle() {
    return TextStyle(
      fontSize: 12,
      color: (!isViewed) ? Colors.black : Colors.grey,
      fontWeight: (!isViewed) ? FontWeight.bold : FontWeight.normal,
    );
  }

  _getBorder() {
    return (!isViewed) ? Border.all(color: Colors.blue, width: 3) : null;
  }
}
