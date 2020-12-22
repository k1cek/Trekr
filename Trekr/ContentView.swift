//
//  ContentView.swift
//  Trekr
//
//  Created by Lukasz Zajac on 22/12/2020.
//

import SwiftUI

struct ContentView: View {
    let location: Location // odniesienie do pliku Location
    
    var body: some View {
        ScrollView {                // let me scroooolll!
            Image(location.heroPicture) // odniesienia do location
                .resizable()
                .scaledToFit()
            
            Text(location.country)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.advisory)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
                .padding()
            
            Text("Lorem ipsum")
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.top)
            
            Text("Kolejny wiersz")
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location:
                    Location.example)
        }
        
    }
}
