import UIKit

let pattern = 3
let width = 5



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
    





