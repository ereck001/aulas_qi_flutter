import 'views.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
          value: AppController.instance.darktheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          }),
    );
  }
}
