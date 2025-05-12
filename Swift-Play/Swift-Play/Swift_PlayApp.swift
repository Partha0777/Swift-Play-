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

        name = "Partha"
        email = "partha@gmail.com"
        city = "Chennai"
        
        print("App started! "+name+" "+email+" "+city)
        
        
        
    }

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
