//
//  WeatherDto.swift
//  AirPolution
//
//  Created by RMS2018 on 03/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public struct WeatherDto  : Codable {
    public let ts: String!
    public let tp: Int64!
    public let pr: Int64!
    public let hu: Int64!
}
