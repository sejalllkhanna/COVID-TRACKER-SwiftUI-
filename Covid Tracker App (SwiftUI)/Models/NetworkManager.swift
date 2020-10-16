//
//  NetworkManager.swift
//  Covid Tracker App (SwiftUI)
//
//  Created by sejal khanna on 15/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var countryName:String = ""
    @Published var totalCases:Int = 0
    @Published var TodayDeaths:Int = 0
    @Published var deaths:Int = 0
    
    func fetchData(cName: String) {
        
      if let url = URL(string: "https://disease.sh/v3/covid-19/countries/\(cName)?yesterday=false&twoDaysAgo=false&strict=true") {
    
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        
                        do {
                            let result =  try  decoder.decode(Result.self,from: safeData)
                            DispatchQueue.main.async {
                                self.countryName = result.country
                                self.TodayDeaths = result.todayDeaths
                                self.totalCases = result.todayCases
                                self.deaths = result.deaths
                                print(result.country)
                                print(result.cases)
                                print(result.todayDeaths)
                                print(result.todayCases)
                            }
                            
                        } catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
    }
}
