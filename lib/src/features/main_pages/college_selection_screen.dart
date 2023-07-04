import 'package:flutter/material.dart';
import 'package:hire_dorm/src/features/main_pages/dashboard_screen.dart';
class CollegeSelectionScreen extends StatelessWidget {
  const CollegeSelectionScreen({Key? key}) : super (key: key);

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

        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding:  const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter State",
                      hintText: "Enter State",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter City",
                      hintText: "Enter City",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter College",
                      hintText: "Enter College",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              ),
            Container(
              padding:  const EdgeInsets.all(30.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                      },
                    child: const Text("Next")),
              ),


            )
          ],
        ),

        ),

      );
  }
}

