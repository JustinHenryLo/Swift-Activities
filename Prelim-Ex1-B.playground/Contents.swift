import UIKit

var num = 15

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

