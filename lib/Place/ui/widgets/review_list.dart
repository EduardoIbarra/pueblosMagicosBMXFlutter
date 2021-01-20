import 'package:flutter/material.dart';
import 'package:pueblosMagicosBMXFlutter/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagePath = 'assets/img/motorrax.jpg';
    final name = 'Eduardo Ibarra';
    final details = '1 review 5 photos';
    final comment = 'This is amazing. Visit México!';
    return Column(
      children: <Widget>[
        Review(imagePath, name, details, comment),
        Review(imagePath, name, details, comment),
        Review(imagePath, name, details, comment)
      ],
    );
  }
}
