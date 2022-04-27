import 'package:flutter/foundation.dart';

class BottomNavProvider with ChangeNotifier {
  int _selectedPage = 0;

  set switchPage(int pageIndex) {
    _selectedPage = pageIndex;
    notifyListeners();
  }

  int get currentPage => _selectedPage;
}
