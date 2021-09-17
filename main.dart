import "dart:math";

class Card {
  Random random = Random();
  var angka = null;
  int jumlahAngka = 0;
  List<int> semuaAngka = [];
  
  void draw(){
    angka = random.nextInt(13)+1;
    semuaAngka.add(angka);
    jumlahAngka++;
  }
  
  void shuffle(){
    angka = null;
    semuaAngka = [];
    for(int i =0; i<jumlahAngka; i++){
      semuaAngka.add(random.nextInt(13)+1);
    }
  }
  
  void remove() => semuaAngka.removeLast();
  
  void cetakKartu() => print(semuaAngka);
}

void main (){
  Card card = new Card();
  card.draw();
  card.draw();
  card.cetakKartu();
  card.shuffle();
  card.cetakKartu();
  card.remove();
  card.cetakKartu();
}
