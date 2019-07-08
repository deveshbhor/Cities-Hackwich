//
//  City.swift
//  Cities Hackwich
//
//  Created by Devesh Bhor on 7/8/19.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class City: Codable {

    var name : String
    var state : String
    var population : Int
    var image : Data
  
    init(name: String, state: String, population: Int, image: Data) {
        self.name = name
        self.state = state
        self.population = population
        self.image = image
    
    }
}
