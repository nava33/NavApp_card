import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('NavApp'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ],
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://www.grsoluciones.pe/wp-content/uploads/2019/12/SSD3.jpeg', 'DISCO DURO'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://www.chopinmol.com/13005-large_default/memoria-usb-sandisk-16gb-cruzer-metal.jpg', 'MEMORIA USB'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://www.rafenlinea.com/196-small_default/laptop-hp-14-ck0001la.jpg', 'LAPTOP'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://kpchardware.com/img/p/5/5/9/6/5596-home_default.jpg', 'MONITOR'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://www.rafenlinea.com/28-small_default/the-best-is-yet-to-come-framed-poster.jpg', 'CAMARA'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://www.rafenlinea.com/547-small_default/mug-the-adventure-begins.jpg', 'BOCINA'),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ));
  }

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.indigoAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
