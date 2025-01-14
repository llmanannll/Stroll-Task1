import 'package:flutter/material.dart';
import 'package:stroll_task_1/common/badge_count.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<String> icons = [
    "assets/button1.png",
    'assets/button5.png',
    'assets/button6.png',
    'assets/button4.png',
  ];
  final List<int> badgeCounts = [0, 0, 10, 0]; // Default to 0 for no badge

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: icons
            .asMap()
            .entries
            .map((entry) => BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          color: const Color.fromARGB(255, 111, 110, 124),
                          icons[entry.key],
                          height: 44,
                          width: 44,
                          fit: BoxFit.cover,
                        ),
                        if (badgeCounts[entry.key] > 0)
                          Positioned(
                            right: 0,
                            top: 0,
                            child: NotificationBadge(badgeCounts[entry.key]),
                          ),
                      ],
                    ),
                  ),
                  label: '',
                ))
            .toList(),
        backgroundColor: const Color.fromARGB(255, 29, 32, 38),
        selectedItemColor: const Color.fromARGB(255, 111, 110, 124),
        unselectedItemColor: const Color.fromARGB(255, 111, 110, 124),
        iconSize: 35,
        selectedLabelStyle: TextStyle(color: Colors.transparent),
        unselectedLabelStyle: TextStyle(color: Colors.transparent),
      ),
    );
  }
}



// final List<BottomNavigationBarItem> bottomNavigationBarItem = [
//   BottomNavigationBarItem(
//     icon: Icon(Icons.abc_outlined),
//     label: "",
//   ),
//   BottomNavigationBarItem(
//     icon: Image.asset('assets/buttons/button1.png'),
//     label: "",
//   ),
//   BottomNavigationBarItem(
//     icon: Image.asset('_inactive.png'),
//     label: "",
//   ),
//   BottomNavigationBarItem(
//     icon: Image.asset('_inactive.png'),
//     label: "",
//   ),
// ];

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({super.key});

//   @override
//   State<CustomBottomNavigationBar> createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//         child: BottomNavigationBar(
//       iconSize: 40,
//       unselectedItemColor: const Color.fromARGB(255, 111, 110, 124),
//       selectedItemColor: const Color.fromARGB(255, 111, 110, 124),
//       backgroundColor: Color.fromARGB(255, 15, 17, 21),
//       items: bottomNavigationBarItem,
//       onTap: (int index) {},
//       selectedLabelStyle: const TextStyle(color: Color(0xFFDB3022)),
//       type: BottomNavigationBarType.fixed,
//     ));
//   }
// }
