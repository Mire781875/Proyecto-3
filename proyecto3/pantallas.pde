class Pantalla {
  
  int x, y, w, h, s;
  PImage inicio,historia,instrucciones,seleccion,pelea,ganador,ganadorr;
  
Pantalla (int x_, int y_, int w_, int h_, int s_){
x = x_;
y = y_;
w = w_;
h = h_;
s = s_;

}

   void Draw(){
   
   switch (s){
   
   case 0:
   
   inicio = loadImage ("inicio.jpg");
   image (inicio,x,y,w,h);
   break;
   
   case 1:
   
   historia = loadImage ("historia.jpg");
   image (historia,x,y,w,h);
   break;
   
   case 2:
   
   instrucciones = loadImage ("instrucciones.png");
   image (instrucciones,x,y,w,h);
   break;
   
   case 3:
   
   seleccion = loadImage ("seleccion.jpg");
   image (seleccion,x,y,w,h);
   break;
   
   case 4:
   
   pelea = loadImage ("pelea.jpg");
   image (pelea,x,y,w,h);
   break;
   
   case 5:
   
   ganador = loadImage ("ganador.jpg");
   image (ganador,x,y,w,h);
   break;
   
   case 6:
   
   ganadorr = loadImage ("ganadorr.jpg");
   image (ganadorr,x,y,w,h);
   break;
   
   }
   }

 
   
  
}

void SS (){
  
  pushMatrix();
  scale(0.6,0.6);
  translate(-200,55);
  bichi2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(60,130);
  yuki2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(240,130);
  kenji2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(550,125);
  loba2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(800,145);
  meme2.Draw();
  popMatrix();
  
 
  
  
  pushMatrix();
  scale(0.6,0.6);
  translate(-200,315);
  bichi2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(60,415);
  yuki2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(240,415);
  kenji2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(550,420);
  loba2.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.5,0.5);
  translate(800,415);
  meme2.Draw();
  popMatrix();
  

  
  
}

void Lucha(){
  switch (l1)
  {
  
  case 1:
   pushMatrix();
   scale(0.8,0.8);
   translate(-200,70);
   bichi2.Draw();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.8,0.8);
   translate(-160,100);
   yuki2.Draw();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.8,0.8);
   translate(-160,100);
   kenji2.Draw();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.8,0.8);
   translate(-160,100);
   loba2.Draw();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.8,0.8);
   translate(-160,100);
   meme2.Draw();
   popMatrix();
     break; 
  }
  
  
  switch (l2)
  {
  case 1:
   pushMatrix();
   scale(0.8,0.8);
   translate(324,70);
   bichi2.Draw();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.8,0.8);
   translate(324,100);
   yuki2.Draw();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.8,0.8);
   translate(324,100);
   kenji2.Draw();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.8,0.8);
   translate(324,100);
   loba2.Draw();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.8,0.8);
   translate(324,100);
   meme2.Draw();
   popMatrix();
     break; 
  }
}
