//
//  PollutionDto.swift
//  AirPolution
//
//  Created by RMS2018 on 03/04/2019.
//  Copyright © 2019 example. All rights reserved.
//

import Foundation

public struct PollutionDto  : Codable {
    public let ts: String!
    public let aqius: Int!
    public let mainus: String!
    public let p2: ConcetrationInfoDto!
    public let p1: ConcetrationInfoDto!
    public let o3: ConcetrationInfoDto!
    public let n2: ConcetrationInfoDto!
    public let s2: ConcetrationInfoDto!
    public let co: ConcetrationInfoDto!
}
