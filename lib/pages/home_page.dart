import 'package:flutter/material.dart';
import 'package:lg_project/pages/lg_android_apps.dart';
import 'package:lg_project/pages/view_model_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Galaxy Task 3.2"),
        backgroundColor: Color.fromARGB(255, 193, 24, 97),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("images/lg_logo.png"), // image form asset

            // View Demo 3d Model
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                elevation: 18.0,
                color: const Color(0xFF801E48),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 20,
                  height: 65,
                  color: const Color(0xFF801E48),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewModel()),
                    );
                  },
                  child: const Text("View Demo 3d Model"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // Lg App list button
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                elevation: 18.0,
                color: const Color(0xFF801E48),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 20,
                  height: 65,
                  color: const Color(0xFF801E48),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LGAppList()), // Navigates to new page where app are listed there
                    );
                  },
                  child: const Text("LG App List"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // About Me button
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                elevation: 18.0,
                color: const Color(0xFF801E48),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 20,
                  height: 65,
                  color: const Color(0xFF801E48),
                  onPressed: () {
                    // Pops up a dialog box with text
                    showDialog(
                      context: context,
                      builder: (ctx) => const AlertDialog(
                        title: Text("Developer Info"),
                        content: Text(
                            " Name: Suvitson Harrese Daniel \n 3rd Year Engineering Student \n Major in Computer Science"),
                      ),
                    );
                  },
                  child: const Text("About Me"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // About App button
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                elevation: 18.0,
                color: const Color(0xFF801E48),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 20,
                  height: 65,
                  color: const Color(0xFF801E48),
                  onPressed: () {
                    // Pops up a dialog box with text
                    showDialog(
                      context: context,
                      builder: (ctx) => const AlertDialog(
                        title: Text("App Info"),
                        content: Text.rich(
                          TextSpan(
                            text:
                                'This is contains a 3d model to view and list of Liquid Galaxy Android App which are published in Play Store and also has list of ', // default text style
                            children: <TextSpan>[
                              TextSpan(
                                // for edit font weight to bold
                                text: 'unpublished app in Play Store',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Text("About App"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
