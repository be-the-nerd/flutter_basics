import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.purple),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/vectors/home_filled.svg'
                    : 'assets/vectors/home_outlined.svg',
                height: 24,
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 1
                    ? 'assets/vectors/science_filled.svg'
                    : 'assets/vectors/science_outlined.svg',
                height: 24,
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 2
                    ? 'assets/vectors/add_filled.svg'
                    : 'assets/vectors/add_outlined.svg',
                height: 24,
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 3
                    ? 'assets/vectors/reel_filled.svg'
                    : 'assets/vectors/reel_outlined.svg',
                height: 24,
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 4
                    ? 'assets/vectors/account_filled.svg'
                    : 'assets/vectors/account_outlined.svg',
                height: 24,
                width: 24,
              ),
              label: ''),
        ],
      ),
    );
  }
}
