# Elevator Algorithm 
An elevator operates in a certain floor range (between 0 and 10). Initially, the elevator is at floor 0. The elevator moves to the corresponding floor by taking the number of floors the user wants to go to.

- If the user wants to go to a floor higher than the current floor, the elevator ascends sequentially from the current floor to the destination floor.
- If the user wants to go to a floor lower than the floor where the elevator is located, the elevator descends sequentially from the current floor to the destination floor.
- If the user enters an invalid floor (a number not between 0 and 10), an error message is displayed and the user is asked to enter the floor again.

    Write an algorithm that realizes the scenario described above.
  ## Example
  Sample Desired Floors:
   - The elevator is initially on floor 0.
   - When the user wants to go to the 5th floor, the elevator moves as 0, 1, 2, 3, 4, 5.
   - Then when the user wants to go to the 3rd floor, the elevator moves 5, 4, 3.
      ## Note
     The number of multiples entered by the user must be between 0 and 10.

    # Solution
  This algorithm simulates the movement of an elevator through a range of floors. It takes the number of floors the user wants to go to and the elevator moves to that floor. It simulates floors one by one by going forward or backward. In this example, the elevator starts at floor 0 and travels to the target floor received from the user.
     ## Algorithm Steps
1) Initial Conditions: The elevator is initially located on floor 0 (var currentFloor = 0). The user is continuously prompted for the target floor (with a while true loop).
2) User Login: The number of floors the user wants to go to is retrieved with the readLine() function and converted to an integer (Int).
3) Control and Validity: It is checked whether the entered floor number is valid. If the floor entered by the user is not in the range 0-10, an error message is displayed (if targetKat >= 0 && targetKat <= 10).
4) Asansör Hareketi:
   - Going Up Status: If the floor the user enters is greater than the current floor, the elevator goes up sequentially from the current floor to the destination floor (for kat in currentFloor...destinationFloor).
   - Going Down Status: If the floor the user enters is smaller than the current floor, the elevator goes down in order from the current floor to the destination floor (for kat in (destinationFloor...currentFloor).reversed()).
5) Updating the Current Floor:
When the target floor is reached, the current floor of the elevator is updated (currentFloor = targetFloor).

```swift
import Foundation

print("Asansör Algoritması")

var mevcutKat = 0

while true {
    print("Lütfen gitmek istediğiniz kat sayısını giriniz (1-10)")
    if let katSayisi = readLine(), let hedefKat = Int(katSayisi) {
        if hedefKat >= 0 && hedefKat <= 10 {
            if hedefKat > mevcutKat {
                for kat in mevcutKat...hedefKat {
                    print(kat)
                }
            } else if hedefKat < mevcutKat {
                for kat in (hedefKat...mevcutKat).reversed() {
                    print(kat)
                }
            }
            mevcutKat = hedefKat
        } else {
            print("Lütfen (1-10) aralığında bir sayı giriniz!")
        }
    } else {
        print("Geçersiz giriş, lütfen tekrar deneyin.")
    }
}
```
# Example Usage
The elevator moves according to the inputs from the user:
- In the first case, when the user wants to go to floor 5, the elevator goes from 0 to 5 in sequence and prints each floor on the screen.
- Then, if the user wants to go to floor 3, the elevator goes from 5 to 3 and back.
