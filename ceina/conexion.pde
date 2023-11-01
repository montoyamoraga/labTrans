import netP5.*;
import oscP5.*;

OscP5 oscp5;
NetAddress miLocacionRemota;

boolean[] pushButtons = new boolean[16];

int puertoRecibir = 8000;
int puertoEnviar = 12000;

String direccionRemota = "192.168.1.85";

void definirLocacionRemota() {
  miLocacionRemota = new NetAddress(direccionRemota, puertoEnviar);
}

void abrirPuertoOSC() {
  oscp5 = new OscP5(this, puertoRecibir);
}

void enviarMensajeOSC() {
  OscMessage miMensaje = new OscMessage("/test");
  
  miMensaje.add(123);
  
  oscp5.send(miMensaje, miLocacionRemota);
  
}

void oscEvent(OscMessage oscNuevoMensaje) {
  
  for (int i = 0; i < pushButtons.length; i++) {
    String pushButton = "/2/push" + str(i + 1);
    pushButtons[i] = false;
    if (oscNuevoMensaje.checkAddrPattern(pushButton)) {
      pushButtons[i] = true;
      if (oscNuevoMensaje.get(0).floatValue() == 0) {
        println("soltado " + str(i + 1));
      } else if (oscNuevoMensaje.get(0).floatValue() == 1) {
        println("presionado " + str(i + 1));
      }
      
    }
  }
    
}
