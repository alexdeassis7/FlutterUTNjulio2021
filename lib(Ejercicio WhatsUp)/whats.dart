import 'package:flutter/material.dart';

class WhatsChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Whats Chat'),
        ),
        body: Column(
          children: [
            //Realizar un constructor que me permita parametrizar los campos del Widget "ChatItem" los parametros serian  :
            //UrlDEImagen , mensajeRecibido , numeroDeCeloContactoAgendado , HoraUltimoMensajeRecibido , CantidadDeMensajesAleer ,
            // ChatItem("http:ashdkajsld" , "hola vas a la ofi " , "+5478871585 " , "11:00" , 5),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
            ChatItem(),
          ],
        ));
  }
}

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url =
        'https://image.pngaaa.com/152/880152-small.png'; //url de la imagen de perfil a mostrar

    return Padding(
      //padding lo utilizamos para dejar iun pequeño espacio en blando de 16px
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          //seccion Izquierda
          CircleAvatar(
            //imagen cicular de foto de perfil
            backgroundImage: NetworkImage(url),
          ),

          //seccion Central
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                //utilizamos una columna para que el mensaje y el nombre esten alineado verticalmente
                //utilizamos la propiedad MainAxisSize.min par aque la columna ocupe solo el espacio necesario verticalmente
                mainAxisSize: MainAxisSize.min,
                //utilizamos la propiedad CrossAxisAlignment.start : para alinear los textos a la izquierda de la columna
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '+54 011 155374788',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    //atajo de teclado windows + . (punto ) podemos ver la lista de emojis
                    'hola venis a la oficina ? 🤦‍♀️',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),

          //Seccion Derecha
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '11:00',
                style: TextStyle(
                  color: Colors.blue[700],
                ),
              ),
              CircleAvatar(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 12.0),
                ),
                radius: 11.0,
                backgroundColor: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
