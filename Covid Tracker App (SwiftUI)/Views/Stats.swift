//
//  Stats.swift
//  Covid Tracker App (SwiftUI)
//
//  Created by sejal khanna on 15/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import SwiftUI


struct Stats: View {
    @ObservedObject var network = NetworkManager()
    
    @State var CountryName:String
    
    var body: some View {
        
        ZStack{
            Color(.systemTeal).edgesIgnoringSafeArea(.all)
            VStack (alignment: .center){
                Image("CT2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Country -\(network.countryName)") .font(.system(size: 40)).bold()
                Text("Deaths -\(network.deaths)").font(.system(size: 30)).bold()
                Text("Total Cases - \(network.totalCases)").font(.system(size: 30)).bold()
                Text("Total Deaths - \(network.TodayDeaths)").font(.system(size: 30)).bold()
            }
        }
        .onAppear{
            self.network.fetchData(cName:self.CountryName)
        }
        
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats(CountryName: "India")
    }
}
