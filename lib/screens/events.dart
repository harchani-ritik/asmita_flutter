import 'package:asmita_flutter/components/sport_tile.dart';
import 'package:asmita_flutter/components/title_card.dart';
import 'package:asmita_flutter/constants.dart';
import 'package:flutter/material.dart';

class EventsViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TitleCard(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(8,0,0,0),
                      child: Text(
                        'Events.',
                        style: TextStyle(fontSize: 40.0 ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        scrollDirection: Axis.vertical,
                        children: _getTiles(sportsList),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Function to be called on click
void _onTileClicked(int index) {
  print("You tapped on item $index");
}

// Get grid tiles
List<Widget> _getTiles(List<SportWidget> iconList) {
  final List<Widget> tiles = <Widget>[];
  for (int i = 0; i < iconList.length; i++) {
    tiles.add(GridTile(
        child: InkResponse(
      enableFeedback: true,
      child: SportWidget(
        name: '${iconList[i].name}',
        image: '${iconList[i].image}',
      ),
      onTap: () => _onTileClicked(i),
    )));
  }
  return tiles;
}
