import 'package:flutter/material.dart';
import 'package:pueblosMagicosBMXFlutter/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class PlaceDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Santiago, NL', 5,
                'Esta es una descripción algo larguita para ver qué tal se van a ver las descripciones de los pueblos mágicos'),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
