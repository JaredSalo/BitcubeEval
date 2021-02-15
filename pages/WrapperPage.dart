import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_salo/misc/classes.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool menuOpen = true;
  bool detailOpen = false;
  String menuItem = "student";

  @override
  Widget build(BuildContext context) {
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
                              child: (menuItem == "degree")
                                  ? ListView.builder(
                                      itemCount: degrees.length,
                                      itemBuilder: (context, index) {
                                        String lecturer;

                                        return Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Container(
                                                color: Colors.black,
                                                width: 400,
                                                height: 40,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      degrees[index]["name"],
                                                      style: GoogleFonts.montserrat(
                                                          color: (menuItem ==
                                                                  "student")
                                                              ? Colors.deepPurple[
                                                                  200]
                                                              : Colors.white,
                                                          fontSize: (menuOpen)
                                                              ? 13
                                                              : 0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      "Sam Colt",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        );
                                      },
                                    )
                                  : ListView.builder(
                                      itemCount: lecturers.length,
                                      itemBuilder: (context, index) {
                                        String lecturer;

                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              detailOpen = !detailOpen;
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  color: Colors.black,
                                                  width:
                                                      (menuItem == "lecturer")
                                                          ? 400
                                                          : 0,
                                                  height:
                                                      (menuItem == "lecturer")
                                                          ? 40
                                                          : 0,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        lecturers[index]
                                                            ["firstName"],
                                                        style: GoogleFonts.montserrat(
                                                            color: (menuItem ==
                                                                    "student")
                                                                ? Colors.deepPurple[
                                                                    200]
                                                                : Colors.white,
                                                            fontSize: (menuOpen)
                                                                ? 13
                                                                : 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Sam Colt",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        );
                                      },
                                    ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
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
                                                      menuItem = "student";
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.school,
                                                        color: (menuItem ==
                                                                "student")
                                                            ? Colors
                                                                .deepPurple[200]
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
                                                                  ? Colors.deepPurple[
                                                                      200]
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
                                                      menuItem = "course";
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.bookmark,
                                                        color: (menuItem ==
                                                                "course")
                                                            ? Colors
                                                                .deepPurple[200]
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
                                                                  ? Colors.deepPurple[
                                                                      200]
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
                                                      menuItem = "lecturer";
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.person,
                                                        color: (menuItem ==
                                                                "lecturer")
                                                            ? Colors
                                                                .deepPurple[200]
                                                            : Colors.white,
                                                      ),
                                                      AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds:
                                                                (menuOpen)
                                                                    ? 200
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
                                                          "Lecturer",
                                                          style: GoogleFonts.montserrat(
                                                              color: (menuItem ==
                                                                      "lecturer")
                                                                  ? Colors.deepPurple[
                                                                      200]
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
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_outlined,
                                                        color: (menuItem ==
                                                                "degree")
                                                            ? Colors
                                                                .deepPurple[200]
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
                                                                  ? Colors.deepPurple[
                                                                      200]
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
