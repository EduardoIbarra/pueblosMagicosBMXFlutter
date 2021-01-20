import 'package:flutter/material.dart';
import 'package:pueblosMagicosBMXFlutter/Place/ui/widgets/card_image_list.dart';
import 'package:pueblosMagicosBMXFlutter/widgets/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack('Popular'), CardImageList()],
    );
  }
}
