import processing.sound.*;
PFont texto;
int pantalla=0,l1,l2,t=1,con=0,con2=0;
float vida1=100,vida2=100;


Pantalla inicio,historia,instrucciones,seleccion,pelea,ganador,ganadorr;
Mascotas meme2,loba2,bichi2,yuki2,kenji2;

void setup(){

fill(255);
size(600,400);




inicio = new Pantalla (0,0,width,height,0);
historia = new Pantalla (0,0,width,height,1);
instrucciones = new Pantalla (0,0,width,height,2);
seleccion = new Pantalla (0,0,width,height,3);
pelea = new Pantalla (0,0,width,height,4);
ganador = new Pantalla (0,0,width,height,5);
ganadorr = new Pantalla (0,0,width,height,6);

meme2 = new Mascotas (0,0,width,height,0);
loba2 = new Mascotas (0,0,width,height,1);
yuki2 = new Mascotas (0,0,width,height,2);
kenji2 =new Mascotas (0,0,width,height,3);
bichi2 =new Mascotas (0,0,width,height,4);




}

void draw()
{
 
  background (255);
  if (pantalla==0)
  {
    println ("inicio");
    inicio.Draw();
    noFill();
    
    if (mousePressed && (mouseX>200) && (mouseX<=200+230) && (mouseY>300) && (mouseY<=300+100))
    {
      pantalla=1;
    }
  }
  
if (pantalla==1)
  {
    println ("historia");
    historia.Draw();
    noFill();
    
    if (mousePressed && (mouseX>500) && (mouseX<=500+230) && (mouseY>300) && (mouseY<=300+100))
    {
      pantalla=2;
    }
  }
  
  
if (pantalla==2)
  {
    println ("instrucciones");
    instrucciones.Draw();
    noFill();
    
    if (mousePressed && (mouseX>50) && (mouseX<=50+230) && (mouseY>320) && (mouseY<=320+100))
    {
      pantalla=3;
    }
  }
  
  
  if (pantalla==3)
  {
    println ("seleccion");
    seleccion.Draw();
    SS();
    
    if (l1==0 && l2==0)
    {
      Selection();
    }
    if (l1!=0 && l2==0)
    {
      keyPressed();
    }
    
    
    if (l1!=0 && l2!=0)
    {
      pantalla=4;
    }
  }
  
  if (pantalla==4)
  {
    pelea.Draw();
    Lucha();
    
    keyPressed();
    
    if (vida1<=0 || vida2<=0)
    {
      pantalla=5;
    }
  }
  
  if (pantalla==5)
  {
   
    if (vida1>vida2)
    {
       ganador.Draw();

    }
    else if(vida2>vida1)
    {
      ganadorr.Draw();
   
    }
    keyPressed();
    
    
    if (mousePressed && (mouseX>130) && (mouseX<=130+150) && (mouseY>270) && (mouseY<=270+50))
    {
      pantalla=3;
      l1=0;
      l2=0;
      t=0;
      vida1=120;
      vida2=120;
    }
    
    if (mousePressed && (mouseX>400) && (mouseX<=400+150) && (mouseY>270) && (mouseY<=270+50))
    {
      exit();
    }
   
  }
  
  
}

void keyPressed()
{
  if (pantalla<=3)
  {

  switch (key)
  {
    case '1':
    l1=1;
    
    break;
    case '2':
    l1=2;
    
    break;
    case '3':
    l1=3;
    
    break;
    case '4':
    l1=4;
    
    break;
    case '5':
    l1=5;
    
    break;
    case '6':
    l2=1;
    
    break;
    case '7':
    l2=2;
    
    break;
    case '8':
    l2=3;
    
    break;
    case '9':
    l2=4;
    
    break;
    case '0':
    l2=5;
    
    break;
  }
  
  
  }

  if (pantalla==5)
  {
    switch(key)
    {
      case '1':
    pantalla=1;
    t=1;
    con=1;con2=1;
    vida1=100;
    vida2=100;
    break;
    
    case '0':
    exit();
    break;
    }
  }
  
  if (pantalla==4)
 {
  if (t==1 && key=='z'||key=='Z')
 {
   vida2=vida2-3;
   t=2;
   println(vida2);
 }
 if (t==1 && con<=3 && key=='a'||key=='A')
 {
   vida2=vida2-8;
   t=2;
   
   println(vida2);
 }
  
 if (t==2 && key=='m'||key=='M')
 {
   vida1=vida1-3;
   t=1;
   println(vida1);
 }
 
 if (t==2 && con2<=3 && key=='k'||key=='K')
 {
   vida1=vida1-8;
   t=1;
   println(vida1);
 }
 

  stroke (0);
  strokeWeight(1);
  fill (random(255),0,0);
  rect (155,130,40,(vida1)*2);
  rect (380,130,40,(vida2)*2);
  
 }

}
