// a) Abstract class Vehicle
abstract class Vehicle {
  // Protected-like variable (private to the library)
  int _speed = 0;

  // Abstract method
  void move();

  // Setter method for speed
  void setSpeed(int speed) {
    _speed = speed;
  }

  // Getter for speed (for encapsulation)
  int getSpeed() {
    return _speed;
  }
}

// b) Subclass Car that extends Vehicle
class Car extends Vehicle {
  // Implement move() method
  @override
  void move() {
    print("The car is moving at ${getSpeed()} km/h");
  }
}

// d) Main function
void main() {
  Car myCar = Car();       // Create object of Car
  myCar.setSpeed(80);      // Set speed
  myCar.move();            // Call move method
}