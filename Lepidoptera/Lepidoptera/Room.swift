//
//  Room.swift
//  Lepidoptera
//
//  Created by Liam on 11/10/20.
//  Copyright © 2020 Feedback Engineering. All rights reserved.
//

import Foundation

class Room {
    var roomType : String
    var isHybrid : Bool
    var shape : String
    var fuzziness : Float
    var tiles : Array2D<Tile>
    /*Create a room.
      Rooms should be generated according to heurestic rules:
      - Rooms should fall into a number of "types", with hybrids possible between some types.
        -> eg. Mechanical, or mechanical/waterlogged.
        -> for singly typed rooms, this means a distribution of related resources and enemies with minimums and maximums placed upon this.
        -> for hybrid rooms, this means a mix of both assets, with a ratio of maximum disparity at 30:70.
        -> If rooms are adjacent to any room, the chances of an adjacent room being of a similar type is increased.
        -> Some groups of rooms are fixed to be a set type (this may include setting rooms to be fixed as a hybrid type
      - Rooms should have a shape, and this shape should be selected from a list of possible types, however all shapes should be "fuzzed" by a random value to produce variations in shape.
        -> eg. Square, elliptical, long
        -> Fuzz value range from 0 to 0.5, dictates the chance of an edge tile generating an additional tile on any empty space. Capped at 50% to avoid unreasonable fuzziness.
    */
    init(rtype : String, hybrid : Bool, roomShape : String, fuzzFactor : Float) {
        roomType = rtype
        isHybrid = hybrid
        shape = roomShape
        fuzziness = fuzzFactor
        tiles = Array2D(columns:0,rows:0)
    }
    
    func populate() {
        //Firstly, redefine the dimensions of the tile array based on the shape of the room.
        switch(self.shape) {
            case ("Square"):
                tiles = Array2D(columns: 30, rows: 30)
            case("Long"):
                tiles = Array2D(columns: 8, rows: 40)
            case("Elliptical"):
                tiles = Array2D(columns: 30, rows: 20)
            default:
                return
        }
    }
    
}
