//
//  ContentView.swift
//  Swift-Play
//
//  Created by Partha on 12/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    func mainFuntions(){
        print("Hello")
    }
    
}

#Preview {
    ContentView()
}
