//
//  Countries.swift
//  Covid Tracker App (SwiftUI)
//
//  Created by sejal khanna on 14/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import SwiftUI

struct CountriesView: View {
    
    var body: some View {
        
        List(countries){ con in
            NavigationLink(
            destination: Stats(CountryName: con.title)){
                Color(.systemTeal)
                Text("\(con.id)")
                Text("\(con.title)")
                Color(.systemTeal).edgesIgnoringSafeArea(.all)
            } .navigationBarTitle("COUNTRIES")
        }
    }
}

struct Countries_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}

struct Country: Identifiable {
    let id: String
    let title: String
}

let countries = [
    Country(id: "1", title: "India"),
    Country(id: "2", title: "USA"),
    Country(id: "3", title: "Italy"),
    Country(id: "4", title: "China"),
    Country(id: "5", title: "Pakistan"),
    Country(id: "6", title: "Brazil"),
    Country(id: "7", title: "Russia"),
]
