import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/providers/bottom_nav_provider.dart';
import 'package:flutter_medical_reminder/screens/screens.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _NavItem(
              iconData: Icons.dashboard,
              index: 0,
            ),
            _NavItem(iconData: Icons.calendar_today, index: 1),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddMedication()));
              },
              elevation: 0,
              highlightElevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              child: Container(
                child: Icon(Icons.add),
                decoration:
                    BoxDecoration(color: Colors.transparent, boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(27, 209, 93, 0.2),
                      blurRadius: 24,
                      spreadRadius: 2,
                      offset: Offset(0, 8))
                ]),
              ),
              backgroundColor: Color.fromRGBO(27, 209, 93, 1),
            ),
            _NavItem(iconData: Icons.chat, index: 3),
            _NavItem(iconData: Icons.person, index: 4)
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData iconData;
  final int index;

  const _NavItem({Key? key, required this.iconData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
        builder: (context, pageIndex, _) => Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                  color: pageIndex.currentPage == index
                      ? Color.fromRGBO(27, 209, 93, 0.07)
                      : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: IconButton(
                icon: Icon(iconData),
                iconSize: 15.0,
                onPressed: () {
                  pageIndex.switchPage = index;
                },
                color: pageIndex.currentPage == index
                    ? Color.fromRGBO(27, 209, 93, 1)
                    : Colors.grey,
                splashRadius: 0.1,
              ),
            ));
  }
}
