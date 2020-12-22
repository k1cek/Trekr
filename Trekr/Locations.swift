//
//  Locations.swift
//  Trekr
//
//  Created by Lukasz Zajac on 22/12/2020.
//

import Foundation

class Locations: ObservableObject { // metoda która cały czas obserwuje zmiany
    let places: [Location] // tablica
    
    var primary: Location {
        places[0] // zaczynamy od pierwszej lokacji
    }
    
    init() { // wywołanie klasy Locations
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}


