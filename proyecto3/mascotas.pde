class   Mascotas {
PImage meme2,loba2,yuki2,kenji2,bichi2;
int x,y,w,h,p;

Mascotas(int x_, int y_, int w_, int h_,int p_){

x = x_;
y = y_;
w = w_;
h = h_;
p = p_;
}

void Draw (){

switch(p){
 
 case 0:
 meme2 = loadImage("meme2.png"); 
 image (meme2, x,y,w,h);
 break;
 
 case 1:
 loba2 = loadImage("loba2.png"); 
 image (loba2, x,y,w,h);
 break;
 
 case 2:
 yuki2 = loadImage("yuki2.png"); 
 image (yuki2, x,y,w,h);
 break;
 
 case 3:
 kenji2 = loadImage("kenji2.png"); 
 image (kenji2, x,y,w,h);
 break;
 
 case 4:
 bichi2 = loadImage("bichi2.png"); 
 image(bichi2,x,y,w,h);
 break;
 }
 }
 
 void Translate(){
 
 for(int i=0;i<=10;i++){
 x=x+80;
 x=x-80;
 }
 }
}

void Selection()
{
  if (pantalla==3)
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
}
