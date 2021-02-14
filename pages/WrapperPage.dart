import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool menuOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              (!menuOpen)
                                  ? Icons.chevron_left_sharp
                                  : Icons.chevron_right_sharp,
                              color: Colors.grey[600],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                (!menuOpen) ? "open" : "close",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey[600],
                                    fontSize: (menuOpen) ? 13 : 0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                          width: (menuOpen) ? 450 : 3,
                          color: Colors.black54,
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
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.school,
                                                color: Colors.white,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 400 : 100),
                                                width: (menuOpen) ? 12 : 0,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 200 : 0),
                                                width: (menuOpen) ? 60 : 0,
                                                height: (menuOpen) ? 15 : 0,
                                                child: Text(
                                                  "Student",
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.white,
                                                      fontSize:
                                                          (menuOpen) ? 13 : 0,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.bookmark,
                                                color: Colors.white,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 300 : 100),
                                                width: (menuOpen) ? 12 : 0,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 200 : 0),
                                                width: (menuOpen) ? 60 : 0,
                                                height: (menuOpen) ? 15 : 0,
                                                child: Text(
                                                  "Course",
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.white,
                                                      fontSize:
                                                          (menuOpen) ? 13 : 0,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color: Colors.white,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 200 : 100),
                                                width: (menuOpen) ? 12 : 0,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 200 : 0),
                                                width: (menuOpen) ? 60 : 0,
                                                height: (menuOpen) ? 15 : 0,
                                                child: Text(
                                                  "Lecturer",
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.white,
                                                      fontSize:
                                                          (menuOpen) ? 13 : 0,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.thermostat_outlined,
                                                color: Colors.white,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 100 : 100),
                                                width: (menuOpen) ? 12 : 0,
                                              ),
                                              AnimatedContainer(
                                                duration: Duration(
                                                    milliseconds:
                                                        (menuOpen) ? 200 : 0),
                                                width: (menuOpen) ? 60 : 0,
                                                height: (menuOpen) ? 15 : 0,
                                                child: Text(
                                                  "Degree",
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.white,
                                                      fontSize:
                                                          (menuOpen) ? 13 : 0,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
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
                                        milliseconds: (menuOpen) ? 100 : 200,
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
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    (menuOpen)
                                                        ? Icons.lock_open
                                                        : Icons
                                                            .lock_outline_rounded,
                                                    color: Colors.white,
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
      ),
    );
  }
}
