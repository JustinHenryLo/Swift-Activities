import Foundation
let temp=70
switch temp{
case 65..75:
    print("temp is just right")
case Int.min..<65:
    print("its too cold")
default:
    print("its too hot")
}
