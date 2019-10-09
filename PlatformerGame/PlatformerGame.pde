
PImage[][] animations = new PImage[8][20];
int counter = 0;
int x = 0,y = 0;

void setup(){
  size(600,600);
  for(int i = 0; i<11; i++){
    animations[0][i]= loadImage("Walk"+(i+1)+".png");
  }
}

void draw(){
  if(keyPressed==true){
  background(255);
  image(animations[0][floor(counter/5)],x,y);
  if(x>=550&&key=='d'){
    x=-50;
  }else if(key=='d'){
    x++;
  }else if(key=='s'&&y>472){
    y=-128;
  }else if(key=='s'){
    y++;
  }
  if(counter<54){
    counter++;
  }else{
    counter=0;
  }
  }
}
