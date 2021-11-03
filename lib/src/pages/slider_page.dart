import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }


  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.redAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: ( _bloquearCheck ) ? null : ( valor ){

        setState(() {
          _valorSlider = valor;
        });

      },
    );

  }

  Widget _checkBox() {

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){ 
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      activeColor: Colors.redAccent,
      value: _bloquearCheck,
      onChanged: (valor){ 
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );


  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      activeColor: Colors.redAccent,
      value: _bloquearCheck,
      onChanged: (valor){ 
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }


  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://scontent.faqp2-3.fna.fbcdn.net/v/t1.6435-9/212329845_513879133176077_3032652229441326638_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHBUgkzpFGof3OFBvBivv5NGXfM6GwJx_cZd8zobAnH94KTEkjBN4Q4hGFskcgHAk96RMHt4S0EA4XbAj_9AcG5&_nc_ohc=CD2DsBhzItUAX_X7uYK&_nc_ht=scontent.faqp2-3.fna&oh=42c0ec642e85c9de64c360a6ec3d23fb&oe=61A712BC'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

}