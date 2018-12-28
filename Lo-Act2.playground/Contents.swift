import UIKit

func hexToRGB(colorHex:String)->(UInt8,UInt8,UInt8){
    var new_color_hex = colorHex
    new_color_hex.remove(at:new_color_hex.startIndex)
    var converted = UInt32(new_color_hex, radix: 16)!
    var red = UInt8((converted >> 16) & 0b0000_0000_0000_0000_1111_1111)
    var green = UInt8((converted >> 8) & 0b0000_0000_0000_0000_1111_1111)
    var blue = UInt8(converted & 0b0000_0000_0000_0000_1111_1111)
    return(red,green,blue)
}
print(hexToRGB(colorHex:"#FF0000"))


func rgbToHex(red:UInt8,green:UInt8,blue:UInt8)->String{
    var Red = (UInt32(red) << 16)
    var Green = (UInt32(green) << 8)
    var Blue = (UInt32(blue))
    return("#"+String(Red+Green+Blue, radix:16)).uppercased()
    
    
}


print(rgbToHex(red: 255, green: 255, blue: 255))

func Nekomimi(platforms:Int)->Int{
    var prev = 0
    var next = 0
    var current = 1
    if (platforms <= 0)
    {
        return 0
    }
    else{
    for x in 1...platforms{
        next = current + prev
        prev = current
        current = next
    }
    return next
    }
}

print(Nekomimi(platforms:2))

//1,2,3,5,8,13 -> answer
//1,2,3,4,5,6  -> platforms
