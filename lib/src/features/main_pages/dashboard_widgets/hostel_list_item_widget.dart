
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
class HostelListItem extends StatelessWidget {
  const HostelListItem({
    super.key,
    required this.index,
    required this.arrHostelImages,
    required this.arrHostelName,
    required this.arrHostelAddress,
    required this.arrAvailableRooms,
    required this.arrSingleRate,
    required this.arrDoubleRate,
    required this.arrTripleRate,
  });

  final List<String> arrHostelImages;
  final List<String> arrHostelName;
  final List<String> arrHostelAddress;
  final List<int> arrAvailableRooms;
  final List<int> arrSingleRate;
  final List<int> arrDoubleRate;
  final List<int> arrTripleRate;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: thisSearchBarColor,
        ),
        height: 150,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // color: Colors.pink,
                image: DecorationImage(
                    image: AssetImage(arrHostelImages[index]),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                      decoration: BoxDecoration(
                        color: thisSearchBarColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(arrHostelName[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Text(arrHostelAddress[index], maxLines: 1,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.bodyText2,),
                    Text("Available : ${arrAvailableRooms[index]} "),
                    Text("Single : ${arrSingleRate[index]}/Year"),
                    Text("Double : ${arrDoubleRate[index]}/Year"),
                    Text("Triple : ${arrTripleRate[index]}/Year"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
