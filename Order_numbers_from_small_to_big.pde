int[] saved= new int[6];
int[] movent= new int [6];
int k=1;
int a = 0;
void setup(){
  size(600, 600);
  background(255,255,255);
  fill(0);
  textSize(25);
  text("Enter five numbers",180,100);
}
void draw(){
  if(k==6){
  fill(0,0,0);
  rect(200,200,200,100,25);
  fill(255,255,255);
  text("ORDER",260,260);
  if(mouseX> 200 && mouseX <400 && mouseY > 200 && mouseY < 300){
    fill(200,200,200);
    stroke(255,255,255);
    rect(200,200,200,100,25);
    fill(0,0,0);
  text("ORDER",260,260);
    if(mousePressed==true) {
    ordenar();
    
  }
  }
}
}
void keyPressed(){
  
  if(k<6){
        if(keyPressed==true && k<6){
          if(key-48<10){
         saved [k] = key-48; 
        println(key-48);
        fill(25,25,25);
        text(key-48,k*40+160,145);
        k++;
          }else{
            println("Just numbers please!");
          }
      }

  } 
  
}
void ordenar(){
  for(int i = 0;i<25;i++){
  for(int a=0;a<k;a++){
   
    if( a!=k-1 && saved[a]>saved[a+1]){
      movent[a]= saved[a+1];
      movent[a+1] = saved[a];
      saved[a]=movent[a];
      saved[a+1]=movent[a+1];
    }
  }
  }
  fill(0);
  textSize(25);
  println(saved);
  text("Result = "+saved[1]+" < "+saved[2]+" < "+saved[3]+" < "+saved[4]+" < "+saved[5],140,height-100);

}
  
