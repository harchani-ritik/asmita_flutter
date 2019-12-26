import 'package:asmita_flutter/components/column_template.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SponserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColumnTemplate(
        columnTitle: 'Sponsers',
        childWidget: Text(
          'Sponsers List Coming Soon',
          style: kOptionStyle,
        ),
      ),
    );
  }
}
