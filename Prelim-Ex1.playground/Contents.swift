import UIKit

var numberInt = 28//input

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

//----------------------------------------------

var num = 15 //input

var mult3 = 0

var mult5 = 0

var mult35 = 0

for x in 1...num{
    if x % 3 == 0 && x % 5 == 0{
        mult35 += 1
        print("\(x) FooBar")
    }
    else if x % 3 == 0{
        mult3 += 1
        print("\(x) Foo")
    }
    else if x % 5 == 0{
        mult5 += 1
        print("\(x) Bar")
    }
}

print ("Total Foo =\(mult3)")
print ("Total Bar =\(mult5)")
print ("Total FooBar =\(mult35)")
//----------------------------------------------


let width = 5 //input



    for x in 1...width{
        for _ in 1...x{
            print("*",terminator:"")
        }
        print("")
    }

    var line = 0
    for x in 1...width{
        line = x
        for y in 1...line{
            if(y==line){
                print("*",terminator:"")
            }
            else{
                print(" ",terminator:"")
                }
            }
        print("")
        
        }
    for x in 1...width-1{
        for y in 1...width-x{
            if(width-x == y){
                print("*",terminator:"")
            }else{
                print(" ",terminator:"")
            }
        }
        print("")
    }


    line = 0
    for x in 1...width-1{
        for y in 0...width-x{
            if(width-x == y){
                print("*",terminator:"")
            }else{
                print(" ",terminator:"")
            }
        }
        print("")
    }
    for x in 1...width{
        line = x
        for y in 1...line{
            if(y==line){
                print("*",terminator:"")
            }
            else{
                print(" ",terminator:"")
            }
        }
        print("")
        
    }
    





