//Original code https://forum.processing.org/two/discussion/19360/seriously-struggling-with-creating-a-guessing-game 

int secret_num;
String Number = "";
 String feedback = "";
 
void setup(){
 secret_num = int(random(100));
    size(700,400); //Skærmstørrelse
    textAlign(CENTER); //Skriften er placeret midt på skærmen
    textFont(createFont("Georgia",17));
    background(255);
 
 
  //Random number generation
 println("Secret Number is  " + secret_num);}
  
//Tekst på skærmen
void draw(){
  background(#38AD58);
  fill(255);
  text("Jeg tænker på et tal mellem 1 og 100, kan du gætte hvad det er?",350,50);
  text("Skriv her, hvad du tror tallet er -->",350,350);
  rect (550,320,100,50); //Kasse man tryker sit gæt ind i
  text(feedback, 350,200); //Fortæller om gættet er rigtig eller forkert
  fill(0); //Farven på det tal man gætter på
  text(Number,600,350); //Viser det tal man gætter på
}
 
 
void keyPressed() { 
   println (Number);
 
 
//  Number="";
 if (key == ENTER){
  
 
 if(int(Number) == secret_num){
 
   feedback = "Rigtigt!! Du fik mig den her gang! Godt gået!!";
   Number = "";
 } else if (int(Number) > secret_num) {
   feedback = "Forkert! Du er nødt til at prøve et mindre tal!";
   Number = "";
 } else {
   feedback = "Forkert!! Du er nødt til at prøve et større tal!!";
   Number = "";
 }
 }
//Input
if (key != ENTER && key != 'r'){
  Number += key;
}

if(key == 'r'|| key == 'R'){
   Number = "";
 }
  
  
}