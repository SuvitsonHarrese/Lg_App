import 'package:flutter/material.dart';

class LGAppList extends StatefulWidget {
  const LGAppList({super.key});

  @override
  State<LGAppList> createState() => _LGAppListState();
}

class _LGAppListState extends State<LGAppList>
    with SingleTickerProviderStateMixin {
  late TabController tb;

  @override
  void initState() {
    tb = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // App available in play store
    List<String> availableInPlayStore = [
      "Lg Chess space",
      "La Palma Volcano Eruption tracking tool",
      "Laser slides",
      "CropDoc",
      "Asteriod Liquid Galaxy Retro Gaming",
      "HAPIS",
      "Simple CMS",
      "Simple CMS E.S.",
      "LG Education",
      "BIM LG Visulaizer",
      "Reforestation Assistant Simulator (RAS)",
      "Reforestation Assistant Simulator2 (RAS2)",
      "SatNOGS visualization Tool",
      "Image Satellite Visualizer",
      "Lg Controller",
      "Liquid Galaxy Retro Gaming",
      "Arduino Controller",
      "TINYGS DATA visualization Tool",
      "Orbit Satellite Visualizer",
    ];

    // App not available in play store
    List<String> notAvailableInPlayStore = [
      "Free parking Visualization Tool",
      "Gesture Controller to Liquid Galaxy",
      "3D_Visualization_API",
      "Liquid Galaxy Controller Application (Redsigned & Developed by Shreyas)",
      "IBRI Drone",
    ];

    // Creted TabBar for separation
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: const Text("Liquid Galaxy Android App List"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.white70,
                  controller: tb,
                  tabs: const <Widget>[
                    Tab(
                      child: Text("Available in PlayStore"), // name of tabbar
                    ),
                    Tab(
                      child:
                          Text("Not Available in PlayStore"), // name of tabbar
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: tb,
          children: <Widget>[
            appList(availableInPlayStore, true), // for published app
            appList(notAvailableInPlayStore, false), // unpublished app
          ],
        ),
      ),
    );
  }

// Function which take two parameter List and bool type of data and returns a widget
  Widget appList(List<String> appNameList, bool done) {
    return ListView.builder(
      itemCount: appNameList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1),
          child: Card(
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.greenAccent, width: 5),
                  ),
                ),
                child: ListTile(
                  leading: const Icon(Icons.android_sharp),
                  trailing: done
                      ? const Icon(Icons.done)
                      : const Icon(Icons.pending_actions),
                  title: Text(appNameList[index]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
