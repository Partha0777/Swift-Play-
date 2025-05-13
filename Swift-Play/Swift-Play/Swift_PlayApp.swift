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
        
        var name, email, city:String
        
        let age:Int = 30

        name = "Partha"
        email = "partha@gmail.com"
        city = "Chennai"
        
        print("App started! "+name+" "+email+" "+city)
        
        print("Hey Eeveryone! My age is \(age)")
        print("\(name.uppercased()) \(city.lowercased())")
        
        var lastname:String?
        
        print("App started! " + (lastname ?? ""))

    }

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
