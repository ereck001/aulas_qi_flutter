import 'package:av_02_pt1/views.dart';

class TelaHomePage extends StatefulWidget {
  const TelaHomePage({Key? key}) : super(key: key);

  @override
  _TelaHomePageState createState() => _TelaHomePageState();
}

class _TelaHomePageState extends State<TelaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(
          child: Image.network(
              "https://gtswiki.gt-beginners.net/decal/png/24/98/98/5044116318198989824_1.png"),
        ),
        actions: [CustomSwitch()],//botão para mudar o tema
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Bem vindo!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text('Clique no botão abaixo para visualizar o cartão'),
          SizedBox(
            height: 30,
          ),
          //botão para chamar a próxima tela
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card');
              },
              child: Icon(Icons.credit_card_sharp))
        ],
      ),
    );
  }
}
