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
          body: Column(
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
                      top: MediaQuery.of(context).size.height * 0.12,
                      left: 66,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
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
                                const EdgeInsets.only(left: 50.0, right: 8),
                            child: Text(
                              "Angelina, 28",
                              style: GoogleFonts.figtree(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.11,
                      left: 16,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: const Color.fromARGB(255, 18, 21, 23),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/person.jpg"),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.15,
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
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.25 * MediaQuery.of(context).size.height - 50,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.6,
                  children: [
                    _buildItem(
                        'A',
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        Colors.white,
                        2,
                        20,
                        'The Peace in the early mornings'),
                    _buildItem(
                        'B',
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        Colors.white,
                        2,
                        20,
                        'The magical golden hours'),
                    _buildItem(
                        'C',
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 35, 43, 46),
                        Colors.white,
                        2,
                        20,
                        'Wind-down time after dinners'),
                    _buildItem(
                        'D',
                        const Color.fromARGB(255, 35, 43, 46),
                        const Color.fromARGB(255, 139, 136, 239),
                        const Color.fromARGB(255, 139, 136, 239),
                        const Color.fromARGB(255, 139, 136, 239),
                        2,
                        20,
                        'The serenity past midnight'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Pick your option.\nSee who has a similar mind.",
                      style: GoogleFonts.figtree(
                          fontSize: 12, color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                      width: 45,
                      height: 45,
                      child: Center(
                          child: Icon(
                        Icons.mic_rounded,
                        size: 28,
                        color: const Color.fromARGB(255, 139, 136, 239),
                      )),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.2,
                          color: const Color.fromARGB(255, 139, 136, 239),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      child: Center(
                          child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                        size: 26,
                      )),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 136, 239),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 139, 136, 239),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget _buildItem(
    String letter,
    Color backgroundColor,
    Color fillColor,
    Color borderColor,
    Color textBorderColor,
    double borderWidth,
    double iconSize,
    String description) {
  return Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      border: Border.all(color: borderColor, width: borderWidth),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    child: Container(
      height: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Container(
              width: iconSize,
              height: iconSize,
              child: Center(
                  child: Text(
                letter,
                style: GoogleFonts.figtree(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 196, 196, 196)),
              )),
              decoration: BoxDecoration(
                color: fillColor,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: textBorderColor),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(description,
                    style:
                        GoogleFonts.figtree(color: Colors.white, fontSize: 14),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
