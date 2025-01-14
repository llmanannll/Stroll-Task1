import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:stroll_task_1/common/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/task_1background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 92.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedText(
                        text: Text(
                          "Stroll Bonfire",
                          style: GoogleFonts.figtree(
                            shadows: [
                              const Shadow(
                                blurRadius: 2.0,
                                color: Color.fromARGB(158, 36, 35, 47),
                                offset: Offset(0, 1.0),
                              ),
                              const Shadow(
                                blurRadius: 7.9,
                                color: Color.fromARGB(50, 0, 0, 0),
                                offset: Offset(0, 0),
                              ),
                              const Shadow(
                                blurRadius: 2.0,
                                color: Color.fromARGB(255, 190, 190, 190),
                                offset: Offset(0, 0),
                              ),
                            ],
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 204, 200, 255),
                          ),
                        ),
                        strokes: [
                          OutlinedTextStroke(
                              width: 0.32,
                              color: const Color.fromARGB(255, 179, 173, 246))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Color.fromARGB(158, 36, 35, 47),
                              offset: Offset(0, 1.0),
                            ),
                            Shadow(
                              blurRadius: 7.9,
                              color: Color.fromARGB(50, 0, 0, 0),
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 2.0,
                              color: Color.fromARGB(255, 190, 190, 190),
                              offset: Offset(0, 0),
                            ),
                          ],
                          size: 40,
                          color: Color.fromARGB(255, 204, 200, 255),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.alarm_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    OutlinedText(
                      text: Text(
                        "22h 00m",
                        style: GoogleFonts.figtree(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      strokes: [
                        OutlinedTextStroke(
                          color: Color.fromARGB(255, 216, 216, 216),
                          width: 0.2,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    OutlinedText(
                      text: Text(
                        "103",
                        style: GoogleFonts.figtree(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      strokes: [
                        OutlinedTextStroke(
                          color: Color.fromARGB(255, 216, 216, 216),
                          width: 0.2,
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Flexible(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        left: 66,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 21, 23),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 40.0, right: 8),
                              child: Text(
                                "Angelina, 28",
                                style: GoogleFonts.figtree(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor:
                              const Color.fromARGB(255, 18, 21, 23),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/person.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 130,
                        child: Container(
                          width: 0.65 * MediaQuery.of(context).size.width,
                          child: Text(
                            "What is your favorite time of the day?",
                            style: GoogleFonts.figtree(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '"Mine is definitely the peace in the morning."',
                      style: GoogleFonts.figtree(
                          fontSize: 12,
                          color: Color.fromARGB(197, 203, 201, 255)),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
