import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/providers/bottom_nav_provider.dart';
import 'package:flutter_medical_reminder/screens/dashboard.dart';
import 'package:flutter_medical_reminder/screens/screens.dart';
import 'package:flutter_medical_reminder/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Map screenMap = {
      0: Dashboard(),
      1: Dashboard(), //'Calendar()',
      3: Dashboard(), //'Chats',
      4: ProfileScreen()
    };
    final Map appBars = {
      0: null,
      1: null,
      2: null,
      3: null,
      4: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
    };
    final pageIndex = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: screenMap[pageIndex.currentPage],
      appBar: appBars[pageIndex.currentPage],
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
