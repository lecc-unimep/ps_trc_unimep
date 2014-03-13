#include <SPI.h>
#include <Ethernet.h>

const int analogChannel = 0;
float Celsius, Fahrenheit, Kelvin;

byte mac[] = { 
  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
  
  IPAddress dnServer(177,125,183,19);
  IPAddress gateway(192, 168, 5, 1);
  IPAddress subnet(255, 255, 255, 0);  
  IPAddress ip(192,168,5,88);

EthernetServer server(8800);

void setup() {

  Serial.begin(9600);
   while (!Serial) {
    ;
  }

  Ethernet.begin(mac, ip);
  server.begin();
  Serial.print("Servidor no endereco ");
  Serial.println(Ethernet.localIP());
}


void loop() {
  EthernetClient client = server.available();
  if (client) {
    Serial.println("novo cliente");
    boolean currentLineIsBlank = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        Serial.write(c);
        if (c == '\n' && currentLineIsBlank) {
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println("Connection: close");  // the connection will be closed after completion of the response
	  client.println("Refresh: 5");  // refresh the page automatically every 5 sec
          client.println();
          client.println("<!DOCTYPE HTML>");
          client.println("<html>");
          client.println("<h1>Arduino<br><hr></h1>");
      
          int sensorReading = analogRead(analogChannel);
          double Temp;
          Temp = log(((10240000/sensorReading) - 10000));
          Kelvin = 1 / (0.001129148 + (0.000234125 * Temp) + (0.0000000876741 * Temp * Temp * Temp));
          Celsius = Kelvin - 273.15;                // Convert Kelvin to Celcius
          Fahrenheit = (Celsius * 9.0)/ 5.0 + 32.0;          
          client.print("Temperatura: ");
          //client.print(analogChannel);
          client.print(Celsius);
          client.print(" Celsius.");          
          client.println("<br />");       

          client.println("<hr>");          
          client.println("</html>");
          break;
        }
        if (c == '\n') {
          // you're starting a new line
          currentLineIsBlank = true;
        } 
        else if (c != '\r') {
          // you've gotten a character on the current line
          currentLineIsBlank = false;
        }
      }
    }
    // give the web browser time to receive the data
    delay(1);
    // close the connection:
    client.stop();
    Serial.println("Cliente desconectado");
  }
}

