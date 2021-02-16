import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_salo/misc/classes.dart';
import 'package:web_salo/misc/services/Provider.dart';
import 'package:web_salo/misc/widgets/StudentCard.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool menuOpen = false;
  bool detailOpen = false;
  String menuItem = "student";

  @override
  Widget build(BuildContext context) {
    fs.FirebaseFirestore firestore = fs.FirebaseFirestore.instance;
    var settings = Provider.of<Settings>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            child: AnimatedContainer(
                              duration: Duration(
                                milliseconds: (menuOpen) ? 300 : 100,
                              ),
                              height: 300,
                              width: 450,
                              // color: Colors.black54,
                              child: StreamBuilder(
                                stream: (menuItem == "degree")
                                    ? firestore
                                        .collection("degrees")
                                        .snapshots()
                                    : (menuItem == "student")
                                        ? firestore
                                            .collection("students")
                                            .snapshots()
                                        : firestore
                                            .collection("lecturers")
                                            .snapshots(),
                                builder: (context, snapshot) {
                                  dynamic snappy = snapshot.data;
                                  return ListView.builder(
                                    itemCount: snappy.docs.length,
                                    itemBuilder: (context, index) {
                                      if (menuItem == "student") {
                                        return StudentCard(
                                          snappy: snappy,
                                          index: index,
                                        );
                                      } else if (menuItem == "degree") {
                                        return DegreeCard(
                                          snappy: snappy,
                                          index: index,
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: AnimatedContainer(
                              duration: Duration(
                                milliseconds: (menuOpen) ? 100 : 200,
                              ),
                              height: 300,
                              width: (menuOpen) ? 130 : 56,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      menuItem = "course";
                                                    });
                                                    settings.newSelect(false);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.bookmark,
                                                        color: (menuItem ==
                                                                "course")
                                                            ? Colors.deepPurple
                                                            : Colors.white,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 300
                                                                    : 100),
                                                        width:
                                                            (menuOpen) ? 12 : 0,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 200
                                                                    : 0),
                                                        width:
                                                            (menuOpen) ? 60 : 0,
                                                        height:
                                                            (menuOpen) ? 15 : 0,
                                                        child: Text(
                                                          "Course",
                                                          style: GoogleFonts.montserrat(
                                                              color: (menuItem ==
                                                                      "course")
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                              fontSize:
                                                                  (menuOpen)
                                                                      ? 13
                                                                      : 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      menuItem = "degree";
                                                    });
                                                    settings.newSelect(false);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_outlined,
                                                        color: (menuItem ==
                                                                "degree")
                                                            ? Colors.deepOrange
                                                            : Colors.white,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 100
                                                                    : 100),
                                                        width:
                                                            (menuOpen) ? 12 : 0,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 200
                                                                    : 0),
                                                        width:
                                                            (menuOpen) ? 60 : 0,
                                                        height:
                                                            (menuOpen) ? 15 : 0,
                                                        child: Text(
                                                          "Degree",
                                                          style: GoogleFonts.montserrat(
                                                              color: (menuItem ==
                                                                      "degree")
                                                                  ? Colors
                                                                      .deepOrange
                                                                  : Colors
                                                                      .white,
                                                              fontSize:
                                                                  (menuOpen)
                                                                      ? 13
                                                                      : 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Padding(
                                            //   padding:
                                            //       const EdgeInsets.all(8.0),
                                            //   child: MouseRegion(
                                            //     cursor:
                                            //         SystemMouseCursors.click,
                                            //     child: GestureDetector(
                                            //       onTap: () {
                                            //         setState(() {
                                            //           menuItem = "lecturer";
                                            //         });
                                            //       },
                                            //       child: Row(
                                            //         children: [
                                            //           Icon(
                                            //             Icons.person,
                                            //             color: (menuItem ==
                                            //                     "lecturer")
                                            //                 ? Colors
                                            //                     .deepPurple[200]
                                            //                 : Colors.white,
                                            //           ),
                                            //           AnimatedContainer(
                                            //             duration: Duration(
                                            //                 milliseconds:
                                            //                     (menuOpen)
                                            //                         ? 200
                                            //                         : 100),
                                            //             width:
                                            //                 (menuOpen) ? 12 : 0,
                                            //           ),
                                            //           AnimatedContainer(
                                            //             duration: Duration(
                                            //                 milliseconds:
                                            //                     (menuOpen)
                                            //                         ? 200
                                            //                         : 0),
                                            //             width:
                                            //                 (menuOpen) ? 60 : 0,
                                            //             height:
                                            //                 (menuOpen) ? 15 : 0,
                                            //             child: Text(
                                            //               "Lecturer",
                                            //               style: GoogleFonts.montserrat(
                                            //                   color: (menuItem ==
                                            //                           "lecturer")
                                            //                       ? Colors.deepPurple[
                                            //                           200]
                                            //                       : Colors
                                            //                           .white,
                                            //                   fontSize:
                                            //                       (menuOpen)
                                            //                           ? 13
                                            //                           : 0,
                                            //                   fontWeight:
                                            //                       FontWeight
                                            //                           .w500),
                                            //             ),
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      menuItem = "student";
                                                    });
                                                    settings.newSelect(false);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.school,
                                                        color: (menuItem ==
                                                                "student")
                                                            ? Colors.lightBlue
                                                            : Colors.white,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 400
                                                                    : 100),
                                                        width:
                                                            (menuOpen) ? 12 : 0,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 200
                                                                    : 0),
                                                        width:
                                                            (menuOpen) ? 60 : 0,
                                                        height:
                                                            (menuOpen) ? 15 : 0,
                                                        child: Text(
                                                          "Student",
                                                          style: GoogleFonts.montserrat(
                                                              color: (menuItem ==
                                                                      "student")
                                                                  ? Colors
                                                                      .lightBlue
                                                                  : Colors
                                                                      .white,
                                                              fontSize:
                                                                  (menuOpen)
                                                                      ? 13
                                                                      : 0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            menuOpen = !menuOpen;
                                          });
                                        },
                                        child: AnimatedContainer(
                                          duration: Duration(
                                            milliseconds:
                                                (menuOpen) ? 100 : 200,
                                          ),
                                          width: (menuOpen) ? 130 : 56,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: MouseRegion(
                                                        cursor:
                                                            SystemMouseCursors
                                                                .click,
                                                        child: Icon(
                                                          (menuOpen)
                                                              ? Icons.lock_open
                                                              : Icons
                                                                  .lock_outline_rounded,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2),
                  ),
                  child: Container(
                    height: 300,
                    width: 500,
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: (settings.selectionMade) ? 0.2 : 1.0,
                          child: Image.network(
                            (menuItem == "student")
                                ? "https://images.pexels.com/photos/3808057/pexels-photo-3808057.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                                : (menuItem == "degree")
                                    ? "https://images.pexels.com/photos/3747468/pexels-photo-3747468.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                                    : "https://images.pexels.com/photos/3764163/pexels-photo-3764163.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                            fit: BoxFit.cover,
                            width: 500,
                            height: 300,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  height: (detailOpen) ? 400 : 0,
                  width: 800,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
