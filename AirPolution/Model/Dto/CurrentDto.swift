//
//  CurrentDto.swift
//  AirPolution
//
//  Created by RMS2018 on 03/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public struct CurrentDto  : Codable {
    public let weather: WeatherDto!
    public let pollution: PollutionDto!
}
