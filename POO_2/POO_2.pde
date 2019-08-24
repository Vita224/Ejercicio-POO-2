Pelota sp1, sp2, sp3, sp4, sp5;
Pelotas sd1, sd2, sd3, sd4, sd5;

class Pelota { //----------------------------------Clase Pelotas Horizontales
  float x, y, posicion, velocidad, diametro, v;

  Pelota(float xpos, float ypos, float d, float v) { 
    // Constructor
    diametro = d;
    velocidad = v;
    x = xpos;
    y = ypos;
    posicion = 25 ;
    velocidad = .1;
  }

  void move() {
    x+= posicion*velocidad;
    if ( x > 580) {
      velocidad =-.103;
    } 
    if ( x < 20) {
      velocidad=.1;
    }
  }

  void display() {
    fill(#DE8F19);
    ellipse(x, y, diametro, diametro);
  }
}

class Pelotas { //----------------------------------Clase Pelotas Verticales
  float x, y, diametro, velocidad;
  float v, d;
  int direccion = 1;

  Pelotas(float xpos, float ypos, float d, float v) { 
    // Constructor
    x = xpos;
    y = ypos;
    diametro =  d;
    velocidad = v;
  }

  void move() {
    y += (velocidad * direccion);
    if ((y > 580) || (y < 20)) {
      direccion *= -1;
    }
  }

  void display() {
    fill(#00C970);
    ellipse(x, y, diametro, diametro);
  }
}
////////////////////////////////////////////////////////////////////////////////////
void setup() {
  size(600, 600);
  smooth();
  noStroke();
  //-----------------------------------Pelotas Horizontales
  sp1 = new Pelota(20, 20, 40, 1);    
  sp2 = new Pelota(20, 160, 40, 1);      
  sp3 = new Pelota(20, 300, 40, 1);      
  sp4 = new Pelota(20, 440, 40, 1); 
  sp5 = new Pelota(20, 560, 40, 1);  

  //-----------------------------------Pelotas Verticales
  sd1 = new Pelotas(103, 580, 40, 2.55);    
  sd2 = new Pelotas(230, 580, 40, 2.55);      
  sd3 = new Pelotas(370, 580, 40, 2.55);      
  sd4 = new Pelotas(510, 580, 40, 2.55);
}
////////////////////////////////////////////////////////////////////////////////////
void draw() {
  background (200);
  sp1.move();
  sp2.move();
  sp3.move();
  sp4.move();
  sp5.move();

  sd1.move();
  sd2.move();
  sd3.move();
  sd4.move();

  sp1.display();
  sp2.display();
  sp3.display();
  sp4.display();
  sp5.display();

  sd1.display();
  sd2.display();
  sd3.display();
  sd4.display();
}
