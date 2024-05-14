//
//  Room.swift
//  Rooms
//
//  Created by 川口美咲 on 2024/05/14.
//

import Foundation
import SwiftData
import UIKit

@Model
class Room {
    var name: String
    @Attribute(.transformable(by: UIColorValueTransformer.self)) var color: UIColor
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
    }
}
