import 'package:asmita_flutter/components/column_template.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColumnTemplate(
        columnTitle: 'Updates',
        childWidget: Text(
          'Realtime Event Updates will be fetched here',
          style: kOptionStyle.copyWith(fontSize: 15),
        ),
      ),
    );
  }
}
