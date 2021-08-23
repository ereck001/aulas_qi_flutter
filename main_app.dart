import 'views.dart';

class TelaApp extends StatelessWidget {
  const TelaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Exercício avaliativo 2 parte 1',
            theme: ThemeData(
                primarySwatch: Colors.teal,
                brightness: AppController.instance.darktheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: "/",
            routes: {
              "/": (context) => LoginPage(),
              '/home':(context) => TelaHomePage(),
              '/card':(context)=> TelaCard()

              },
          );
        });
  }
}
