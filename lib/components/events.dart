import 'package:asmita_flutter/components/sport_tile.dart';
import 'package:asmita_flutter/constants.dart';
import 'package:flutter/material.dart';

class EventsViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Events",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image(
                    image: AssetImage('images/asmita_cover.jpg'),
                    fit: BoxFit.cover,
                  ),),
            ),
          ];
        },
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          scrollDirection: Axis.horizontal,
          // Generate 100 widgets that display their index in the List.
          children: _getTiles(sportsList),
        ),
      ),
      );
  }
}

// Function to be called on click
void _onTileClicked(int index){
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
