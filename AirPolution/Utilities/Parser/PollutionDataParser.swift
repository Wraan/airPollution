//
//  PollutionDataParser.swift
//  AirPolution
//
//  Created by RMS2018 on 10/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public class PollutionDataParser {
    func parseMainData(response: StatusDto) -> String {
        let timestamp = response.data.current.weather.ts.components(separatedBy: "T")
        
        var dataString = ""
        dataString.append("Miasto: " + response.data.city + "\n")
        dataString.append("Data: " + timestamp[0] + "\n")
        dataString.append("Godzina: " + timestamp[1].components(separatedBy: ".")[0] + "\n")
        
        return dataString
    }
    
    func parseAdditionalData(pollution: PollutionDto?) -> String {
        var dataString = ""
        if(pollution != nil){
            if(pollution!.p1 != nil){
                dataString.append("PM10: " + String(pollution!.p1.conc) + " uq/m3 \n")
            } else {
                
            }
            if(pollution!.p2 != nil){
                dataString.append("PM2.5: " + String(pollution!.p2.conc) + " uq/m3 \n")
            } else {
                
            }
            if(pollution!.o3 != nil){
                dataString.append("O3: " + String(pollution!.o3.conc) + " ppb \n")
            } else {
                
            }
            if(pollution!.n2 != nil){
                dataString.append("NO2: " + String(pollution!.n2.conc) + " ppb \n")
            } else {
                
            }
            if(pollution!.s2 != nil){
                dataString.append("SO2: " + String(pollution!.s2.conc) + " ppb \n")
            } else {
                
            }
            if(pollution!.co != nil){
                dataString.append("CO: " + String(pollution!.co.conc) + " ppm \n")
            } else {
                
            }
        } else {
            
        }
        
        if(dataString.isEmpty){
            dataString.append("Indeks AQI US: " + String(pollution!.aqius) + " dla pierwiastka " + pollution!.mainus + "\n")
        }
        
        return dataString
    }
}
