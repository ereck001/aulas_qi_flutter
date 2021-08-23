import 'views.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';
  String passWord = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 // height: 100,
                  margin: EdgeInsets.all(10),
                  child: Image.network("https://gtswiki.gt-beginners.net/decal/png/24/98/98/5044116318198989824_1.png"),
                ),
                TextField(
                  onChanged: (texto) {
                    user = texto;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Usuário', border: OutlineInputBorder()),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  onChanged: (texto) {
                    passWord = texto;
                  },
                  obscureText: true,
                  decoration: InputDecoration(                      
                      labelText: 'Password', border: OutlineInputBorder()
                       ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        //teste de usuário e senha
                        if (user == 'ereck' && passWord == '1234') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        }
                      },
                      child: Row(
                        children: [
                          Icon(Icons.login),
                          Text('Login'),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
