//
//  WeatherManager.swift
//  Clima
//
//  Created by Francis Yang on 11/09/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?&appid=cfd49b26c7c6f452453aeeb64c7eb2fc&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
    func performRequest(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: . default)
            let task = session.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
            task.resume()
        }
    }
    

}
