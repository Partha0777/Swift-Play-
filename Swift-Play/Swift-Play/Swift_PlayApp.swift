//
//  Swift_PlayApp.swift
//  Swift-Play
//
//  Created by Partha on 12/05/25.
//

import SwiftUI

@main
struct Swift_PlayApp: App {
    
    init() {
        
    
        variables()
        nullableVar()
        listExamplet()
        dictionary()
        forLoops()
        whileLoops()
        functionWithTupleReturnType()
        
        higherOrder(operation: calculation)
        closeureExample()
        
        enumsExample()
        
        let setdata :Set = ["a", "b", "c", "d" ,"a", "b"]
        let setdataV2 :Set = ["f", "g", "c", "d" ,"a", "b"]
        print(setdata.intersection(setdataV2))
        print(setdata.union(setdataV2))
        print(setdataV2.subtracting(setdata))
        
        var (dlo,age) = ("Partha",30)
        print("\(dlo) - \(age)")

        var dataS:String? = "Woowww"
        var booldata:Bool? = true
        
        if let hello = dataS, let boold = booldata{
            print("\(hello) - \(boold)")
        }
        
        let isActive: Bool = true
        let isUserExist: Bool = true
        
        if isActive {
            print("Active")
        } else if isUserExist{
            print("User is exist but InActive")
        } else{
            print("InActive")
        }
        
        
        var country:String?
        
        if let countryName = country{
            print(countryName)
        }
    
    }
    
    
    func variables(){
        var name, email, city:String
        
        let age:Int = 30

        name = "Partha"
        email = "partha@gmail.com"
        city = "Chennai"
        
        print("App started! "+name+" "+email+" "+city)
        
        print("Hey Eeveryone! My age is \(age)")
        print("\(name.uppercased()) \(city.lowercased())")
    }
    
    func nullableVar(){
        var lastname:String?
        
        print("App started! " + (lastname ?? ""))
        
        if let lastname = lastname {
            print("App started! " + lastname)
        }
        
        var count:Int?
        
        if let count = count{
            print("Count started! \(count)")
        }
        
    }
    
    func listExamplet(){
        var list: [String] = ["a", "b", "c"]
        list.reverse()
        print(list)
    
        var listA: [Int] = [1, 2, 3]
        var data = Array(listA.reversed())
        print(data)
        print(listA)
    }

    
    func dictionary(){
        let dictionary: [String: Int] = ["a":1, "b":2, "c":3]
        print(String(dictionary["b"] ?? 0))
    }
    
    func forLoops(){
        
        for i in 1...5 {
            
            if i <= 2 {
                print("It's less than 2")
            }else if i == 3 {
                print("It's equal to 3")
            } else{
                print("It's greater than 2")
            }
        }
    }
    
    func whileLoops(){
        var i = 1
        while( i <= 5){
            print("Number is \(i)")
            i += 1
        }
    }
    
    
    func calculation(num1:Int, num2: Int, operation:String) -> Int {
        switch operation{
            case "add": return num1 + num2
            case "subtract" : return num1 - num2
            case "divide" : return num1 / num2
            case "multiply" : return num1 * num2
        default : return 0
        }
    }
    
    func functionWithTupleReturnType(){
        let (value, operationName) = calculationWithName(num1: 5, num2: 2, operation: "multiply")
        print("Calculation value is \(value) and operation name is \(operationName)")
    }
    
    func calculationWithName(num1:Int, num2: Int, operation:String) -> (Int,String) {
        switch operation{
        case "add": return (num1 + num2, operation)
            case "subtract" : return (num1 - num2, operation)
            case "divide" : return (num1 / num2, operation)
            case "multiply" : return (num1 * num2, operation)
        default : return (0,"Nothing")
        }
    }
    
    
    func higherOrder(operation: (Int, Int, String) -> Int){
        let value = operation(2,5, "add")
        print("Higher Order -> \(value)")
    }
    
    func closeureExample(){
        
        let closureExample = { (data:String) -> String in
            return "Hello \(data)"
        }
        
        print(closureExample("Kan"))
        
        
        let nameList = ["Kan", "Rock", "Green", "Steve", "Elon"]
        
        let soretedName = nameList.sorted{(name1:String, name2:String) -> Bool in
            return name1 < name2
        }
        
        print(soretedName)
        
        printNumbers(result: print("Three"))
        
    }
    
    //AutoClosure
    func printNumbers(result:@autoclosure () -> Void){
        print("One")
        print("Two")
        result()
        print("Four")

    }
    
    func dataTask(with url:URL, completion: @escaping(Data?, URLResponse?, Error?) -> Void ) -> Void{
        
    }
    
    
    func enumsExample(){
        
        let hero = Marvel.IronMan
        
        if(hero == .IronMan){
            print("Yes!! it's Ironman")
        }else{
            print("No! it's Ironman")
        }
    }
    
    
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

enum Marvel{
    case CaptainAmerica
    case IronMan
    case SpriderMan
}

indirect enum ArithmeticOperation{
    case Num(Int)
    case Add(ArithmeticOperation,ArithmeticOperation)
}
