import 'package:asmita_flutter/components/column_template.dart';
import 'package:asmita_flutter/components/sport_tile.dart';
import 'package:asmita_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'event_details.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColumnTemplate(
        columnTitle: 'Events.',
        childWidget: Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: _getTiles(sportsList,context),
          ),
        ),
      ),
    );
  }
  // Function to be called on click
  void _onTileClicked(int index,context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => EventDetails(index),
    );
  }

// Get grid tiles
  List<Widget> _getTiles(List<SportWidget> iconList,context) {
    final List<Widget> tiles = <Widget>[];
    for (int i = 0; i < iconList.length; i++) {
      tiles.add(GridTile(
          child: InkResponse(
            enableFeedback: true,
            child: SportWidget(
              name: '${iconList[i].name}',
              image: '${iconList[i].image}',
            ),
            onTap: () => _onTileClicked(i,context),
          )));
    }
    return tiles;
  }

}