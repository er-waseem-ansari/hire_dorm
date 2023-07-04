import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.service_image,
    required this.service_name,
    required this.service_address,
  });

  final service_image;
  final service_name;
  final service_address;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: thisSearchBarColor),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(image: service_image,
              fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            service_name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            service_address,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ));
  }
}
