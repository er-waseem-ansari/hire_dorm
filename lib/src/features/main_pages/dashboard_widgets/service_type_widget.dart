import 'package:flutter/material.dart';
import 'package:hire_dorm/src/features/main_pages/dashboard_widgets/service_widget.dart';
import 'package:hire_dorm/src/features/main_pages/hostel_list_screen.dart';
import '../../../constants/colors.dart';

class ServiceTypeWidget extends StatelessWidget {
  const ServiceTypeWidget({
    super.key,
    required this.service_name,
    required this.first_service_name,
    required this.first_service_address,
    required this.first_service_image,
    required this.second_service_name,
    required this.second_service_address,
    required this.second_service_image,
  });

  final service_name;
  final first_service_name;
  final first_service_address;
  final first_service_image;
  final second_service_name;
  final second_service_address;
  final second_service_image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: thisSearchBarColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                service_name,
                style: Theme.of(context).textTheme.headline4,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  if(service_name=="Hostels") {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HostelListScreen()),);
                  }
                },
                child: Text("See all"),
              )
            ],
          ),



          Row(
            children: [
              ServiceWidget(
                  service_image: first_service_image,
                  service_name: first_service_name,
                  service_address: first_service_address),

              const SizedBox(height: 25, width: 10),

              ServiceWidget(
                  service_image: second_service_image,
                  service_name: second_service_name,
                  service_address: second_service_address),

            ],
          ),
        ],
      ),
    );
  }
}
