import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/colors.dart';
import 'package:hire_dorm/src/constants/image_strings.dart';
import 'package:hire_dorm/src/constants/text_strings.dart';
import 'package:hire_dorm/src/repository/authentication_repository/authentication_repository.dart';

import 'dashboard_widgets/service_type_widget.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.black,),
          title: Text("HireDorm", style: Theme.of(context).textTheme.headline3,),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),

        body: Padding(
          
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Location Bar
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: thisSearchBarColor,

                  ),

                   child: const Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text(thisCollegeName),
                      Spacer(),
                      Icon(Icons.edit)
                    ],
                  ),
                ),


                const SizedBox(height: 10.0,),

                // Search Bar
                TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: thisSearchBarColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none
                    ),
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.black,
                    suffixIcon: const Icon(Icons.mic),
                    suffixIconColor: Colors.black,

                  ),

                ),


                const SizedBox(height: 20.0,),




                const ServiceTypeWidget(
                  service_name: "Hostels",
                  first_service_name: "Sanskar Sadan Boys Hostel",
                  first_service_address: "In front of UIT",
                  first_service_image: AssetImage(thisHostelImage1),
                  second_service_name: "Vimal Sadan Boys Hostel",
                  second_service_address: "In back of UIT",
                  second_service_image: AssetImage(thisHostelImage2),
                ),


                const SizedBox(height: 10.0,),


                const ServiceTypeWidget(
                  service_name: "Seperate Rooms",
                  first_service_name: "Shiksha Sadan",
                  first_service_address: "Naini Induatrial Area NH 35",
                  first_service_image: AssetImage(thisRoomImage1),
                  second_service_name: "Hanumat Sadan",
                  second_service_address: "UPSIDC",
                  second_service_image: AssetImage(thisRoomImage2),
                ),


                const SizedBox(height: 10.0,),


                const ServiceTypeWidget(
                  service_name: "Mess facilities",
                  first_service_name: "Food Foundry",
                  first_service_address: "Inside Sanskar Sadan Boys Hostel",
                  first_service_image: AssetImage(thisMessImage1),
                  second_service_name: "Delicious Foods",
                  second_service_address: "In front of United College of Engineering and Research",
                  second_service_image: AssetImage(thisMessImage2),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      AuthenticationRepository.instance.logout();
                    },
                    child: Text("Logout"),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}

