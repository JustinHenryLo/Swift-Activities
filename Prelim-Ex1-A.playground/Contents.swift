import UIKit

var numberInt = 28

var firstrun=true

var last = 0

var first = 0

repeat{
    if(firstrun){
        last = numberInt % 10
        firstrun = false
        
    }
    else if(numberInt != 0){
        first = numberInt
        numberInt /= 10
    }
    else{
        break
    }
}while true
print("first digit is \(first)")
print("last digit is \(last)")




