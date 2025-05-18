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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
