//
//  tile.swift
//  Lepidoptera
//
//  Created by Liam on 7/10/20.
//  Copyright © 2020 Feedback Engineering. All rights reserved.
//

import Foundation


class Tile {
    var type: String = ""
    var position: Array<Int> = Array(repeating: 0, count:2)
    
    init(x: Int, y: Int) {
        type = ""
        position[0] = x
        position[1] = y
    }
    func setType(newType: String) {
        type = newType
    }
    func setPosition(newPosition: Array<Int>) {
        position = newPosition
    }
    func getType() -> String {
        return type
    }
    func getPosition() -> Array<Int> {
        return position
    }
    
}
