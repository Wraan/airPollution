//
//  ApiCallBuilder.swift
//  AirPolution
//
//  Created by RMS2018 on 20/03/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

class ApiCallBuilder{
    
    var server: String = "https://api.airvisual.com/v2/city?"
    var key: String = "&key=bZYjJr9cgRteuwwB2"
    var country: String = "&country=Poland"
    var state: String = ""
    var city: String = ""
    
    init(state: String, city: String) {
        setState(state: state)
        setCity(city: city)
    }
    
    private func setCity(city: String){
        self.city = city
    }
    
    public func build() -> String{
        return server + "city=" + city.replacingOccurrences(of: " ", with: "%20") + "&state=" + state + country + key
    }
    
    private func setState(state: String){
        switch state {
        case "Wielkopolskie": self.state = "Greater%20Poland"
        case "Kujawsko-Pomorskie": self.state = "Kujawsko-Pomorskie"
        case "Małopolskie": self.state = "Lesser%20Poland%20Voivodeship"
        case "Łódzkie": self.state = "Lodz%20Voivodeship"
        case "Dolnośląskie": self.state = "Lower%20Silesia"
        case "Lubelskie": self.state = "Lublin"
        case "Lubuskie": self.state = "Lubusz"
        case "Mazowieckie": self.state = "Mazovia"
        case "Opolskie": self.state = "Opole%20Voivodeship"
        case "Podlaskie": self.state = "Podlasie"
        case "Pomorskie": self.state = "Pomerania"
        case "Śląskie": self.state = "Silesia"
        case "Podkarpackie": self.state = "Subcarpathian%20Voivodeship"
        case "Świętokrzyskie": self.state = "Swietokrzyskie"
        case "Warmińsko-Mazurskie": self.state = "Warmia-Masuria"
        case "Zachodniopomorskie": self.state = "West%20Pomerania"
        default: self.state = ""
        }
    }
    
}
