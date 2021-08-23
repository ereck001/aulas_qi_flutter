import 'views.dart';
import 'package:flip_card/flip_card.dart';

class TelaCard extends StatefulWidget {
  @override
  _TelaCardState createState() => _TelaCardState();
}

class _TelaCardState extends State<TelaCard> {
  

  GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();



  _backgroundDraw() {
    return Container(
      height: 300,
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  _cardDraw(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin:
          EdgeInsets.only(left: 32.0, right: 32.0, top: 50.0, bottom: 100.0),
      color: Colors.white,
      child: FlipCard(
        key: _cardKey,
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print('status: $status');
        },
        front: _cardFront(),
        back: _cardBack(),
      ),
    );
  }

  _cardBack() {
    return Container(
      
      child: Center(
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              Container(
                height: 20,
              ),
              Container(
                height: 60,
                color: Colors.black,
              ),
              Container(
                height: 20,
              ),
              Container(  
                margin: EdgeInsets.all(30),
                alignment: Alignment.topLeft,              
                color: Colors.white,
                width: 200,
                height: 60,
                child: Text('\n0011 365894-2 563'),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardFront() {
    return Container(
      
      child: Center(
        child: Container(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '\nbusiness        ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        fontStyle: FontStyle.italic),
                  )),
              Center(
                  child: Container(
                height: 180,
                child: Image.network(
                    "https://gtswiki.gt-beginners.net/decal/png/24/98/98/5044116318198989824_1.png"),
              )),
              Text(
                '5343  4209  7846  5495 ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ERECK SANTOS      valid 09/22 ',
                    style: TextStyle(
                      color: Colors.white,                  
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 60,
                    child: Image.network("https://logospng.org/download/mastercard/logo-mastercard-256.png"),
                  )
                ],
              ),
            ],
          ),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [CustomSwitch()],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _backgroundDraw(),
          Column(
            children: [
              Expanded(
                child: _cardDraw(context),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _cardKey.currentState!.toggleCard();
        },
        tooltip: 'Cartão',
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
