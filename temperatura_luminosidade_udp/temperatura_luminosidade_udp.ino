#include <SPI.h>
#include <Ethernet.h>
#include <EthernetUdp.h>
#include <stdlib.h>

const int analogChannel = 0;
float Celsius, Fahrenheit, Kelvin;
const int LDR = 5;
int ValorLido = 0;

char *ip_remoto = "10.1.9.91";
unsigned int porta_remota = 8888;
unsigned int porta_local = 8888;
char mensagem[30];
char tmp[10];

byte mac[] = { 
  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
  
IPAddress dnServer(177,125,183,19);
IPAddress gateway(192, 168, 5, 1);
IPAddress subnet(255, 255, 255, 0);  
IPAddress ip(192,168,5,88);

EthernetUDP Udp;

void setup() {
Ethernet.begin(mac,ip);
Udp.begin(porta_local);
}


void loop() {
   
    int sensorReading = analogRead(analogChannel);
    double Temp;
    ValorLido = 0;
    Temp = log(((10240000/sensorReading) - 10000));
    Kelvin = 1 / (0.001129148 + (0.000234125 * Temp) + (0.0000000876741 * Temp * Temp * Temp));
    Celsius = Kelvin - 273.15;                // Convert Kelvin to Celcius
    Fahrenheit = (Celsius * 9.0)/ 5.0 + 32.0;          
    ValorLido = analogRead(LDR);
    dtostrf(Celsius,5,2,tmp);
    sprintf(mensagem,"Hello World: %d , ",ValorLido);
    Udp.beginPacket(ip_remoto,porta_remota);
    Udp.write(mensagem);
//    Udp.write("Hello world:");
    Udp.write(tmp);
//    Udp.write(";");
//    Udp.write(ValorLido);
//    Udp.write("\0");
    Udp.endPacket();
    delay(3000);

}

