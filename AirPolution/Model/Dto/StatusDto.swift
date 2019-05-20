//
//  StatusDto.swift
//  AirPolution
//
//  Created by RMS2018 on 10/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public struct StatusDto  : Codable {
    public let status: String!
    public let data: DataDto!
}
