import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: thisSearchBarColor,
      ),
      child: Row(
        children: [
          Icon(Icons.location_pin),
          Text(thisCollegeName),
          Spacer(),
          Icon(Icons.edit)
        ],
      ),
    );
  }
}
