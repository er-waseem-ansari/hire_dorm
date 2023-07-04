import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/image_strings.dart';
import 'dashboard_widgets/hostel_list_item_widget.dart';
import 'dashboard_widgets/search_bar_widget.dart';


class HostelListScreen extends StatelessWidget {
  const HostelListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var arrHostelName=[
      "Sanskar Sadan Boys Hostel",
      "Vimal Sadan Boys Hostel",
      "Oxotel",
      "Dragon Dive Komodo Hostel",
      "The Yard Hostel",
      "Caveland Hostel",
      "Valencia Lounge Hostel",
      "Swanky Mint Hostel",
      "CODE Hostel",
      "Hektor Design Hostel"
    ];

    var arrHostelAddress = [
      "Brockton Avenue, Abington MA 2351",
      "Memorial Drive, Avon MA 2322",
      "Hartford Avenue, Bellingham MA 2019",
      "Oak Street, Brockton MA 2301",
      "Parkhurst Rd, Chelmsford MA 1824",
      "Memorial Dr, Chicopee MA 1020",
      "Brooksby Village Way, Danvers MA 1923",
      "Teaticket Hwy, East Falmouth MA 2536",
      "Fairhaven Commons Way, Fairhaven MA 2719",
      "William S Canning Blvd, Fall River MA 2721",
    ];

    var arrAvailableRooms = [34,6,3,5,34,5,65,34,2,45];

    var arrSingleRate = [87000,98000,76000,76000,65000,74000,64000,73000,77000,85000];
    var arrDoubleRate = [65000,54000,56000,34000,65000,57000,45000,76000,87000,54000];
    var arrTripleRate = [43000,64000,36000,45000,65000,43000,65000,40006,54000,34000];

    var arrHostelImages = [
      thisHostelImage1,
      thisHostelImage2,
      thisHostelImage3,
      thisHostelImage4,
      thisHostelImage5,
      thisHostelImage6,
      thisHostelImage7,
      thisHostelImage8,
      thisHostelImage9,
      thisHostelImage10
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "HireDorm",
            style: Theme.of(context).textTheme.headline3,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              Container(
                // color: Colors.blue,
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Showing Hostels nearby ",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SearchBarWidget(),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return HostelListItem(index: index,arrHostelImages: arrHostelImages, arrHostelName: arrHostelName, arrHostelAddress: arrHostelAddress, arrAvailableRooms: arrAvailableRooms, arrSingleRate: arrSingleRate, arrDoubleRate: arrDoubleRate, arrTripleRate: arrTripleRate);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
