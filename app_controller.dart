import 'views.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool darktheme = false;
  changeTheme() {
    darktheme = !darktheme;
    notifyListeners();
  }
}
