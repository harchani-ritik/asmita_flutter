import 'package:asmita_flutter/components/column_template.dart';
import 'package:flutter/material.dart';
import '../components/update_card.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColumnTemplate(
        columnTitle: 'Updates',
        childWidget: UpdateCard(),
        ),
      );
  }
}
