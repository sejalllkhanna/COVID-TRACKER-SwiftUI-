//
//  ContentView.swift
//  Covid Tracker App (SwiftUI)
//
//  Created by sejal khanna on 14/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(.yellow)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("COVID TRACKER")
                        .font(Font.custom("RobotoSlab", size: 40))
                        .bold()
                        .foregroundColor(.black)
                    
                    Text("Ensuring Social Distancing")
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.system(size: 20))
                    Spacer()
                    Image("CT3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    NavigationLink(destination: CountriesView()) {
                        Text("START HERE")
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding()
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Prviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
