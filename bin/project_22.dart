
import 'dart:io';

class trips{
  String id;
   String location;
   int passengerLimit;
   DateTime date;
   double price;

  trips(this.id,this.location,this.passengerLimit,this.date,this.price){
      
  }

  String getStudent(){
    return 'id: $id, location: $location, passengerLimit: $passengerLimit,date :$date, price: $price,';
    
  }
}

main(){
  try {
    bool z = true;
    List trips = [];
    

    add() {
      print('id:');
      var id = stdin.readLineSync();
      print('location:');
      var location = int.parse(stdin.readLineSync());
      print('passengerLimit:');
      var passengerLimit = int.parse(stdin.readLineSync());
      print('date:');
      var date = int.parse(stdin.readLineSync());
      print('price:');
      var price = int.parse(stdin.readLineSync());
      trips.add(id);
    trips.add(location);
    trips.add(date);
    trips.add(price);
    trips.add(passengerLimit);
    print(trips);
      print('Added!');
    }

    view() {
      print(trips);
    }

     void delete (){
     print("delete id");
     var id =int.parse(stdin.readLineSync());
     trips.removeAt(0);
     print("delete place");
     var place =int.parse(stdin.readLineSync());
     trips.removeAt(1);
     print("delete date");
     var date =int.parse(stdin.readLineSync());
     trips.removeAt(2);
     print("delete price");
    var price =int.parse(stdin.readLineSync());
     trips.removeAt(3);
     print("delete limit");
     var limit =int.parse(stdin.readLineSync());
     trips.removeAt(4);
     print(trips);
   } 
   void edit (){
      print("edit id");
     var edit =int.parse(stdin.readLineSync());
     trips.reversed;
   }
   void search(){

   }
   void reverse(){

   }

    while (z) {
      print('1- Add trips   2-View trips  3-delete trips    4- edit trips  5-search trips   6- reverse  00-Exit');
          
      int input = int.parse(stdin.readLineSync());
      switch (input) {
        case 1:
          add();
          break;
        case 2:
          view();
          break;
        case 3:
          delete();
          break;
          case 4:
          edit();
          break;
          case 5:
          search();
          break;
          case 6:
          reverse();
          break;
        case 00:
          z = false;
          break;
        default:
          print('no value');
          break;
      }
    }
  }catch(e){
    main();
  }
}