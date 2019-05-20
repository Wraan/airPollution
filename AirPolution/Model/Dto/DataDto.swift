//
//  DataDto.swift
//  AirPolution
//
//  Created by RMS2018 on 03/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public struct DataDto  : Codable {
    public let state: String!
    public let city: String!
    public let current: CurrentDto!
}
