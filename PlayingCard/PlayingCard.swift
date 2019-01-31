//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Denis on 31.01.2019.
//  Copyright © 2019 Denis Vitrishko. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible  {
    
    public var description: String { return"\(rank)\( suit)" }
    
    var suit: Suit
    var rank: Rank

    enum Suit: String{
        
        //public var description: String{return"\(PlayingCard.Suit)"}
        
        case spades   = "♠︎"
        case hearts   = "♥︎"
        case clubs    = "♣︎"
        case diamonds = "♦︎"
        
        static var all = [Suit.spades,.hearts,.clubs,.diamonds]
    }
    enum Rank {
        
        //public var description: String{return "\(PlayingCard.Rank).self"}
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int{
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let king) where king == "J": return 11
            case .face(let king) where king == "Q": return 12
            case .face(let king) where king == "K": return 13
            default: return 0
        }
    }
    static var all: [Rank]{
        var allRanks = [Rank.ace]
        for pips in 2...10{
            allRanks.append(Rank.numeric(pips))
        }
        allRanks += [Rank.face("J"),.face("Q"),.face("K")]
        return allRanks
    }

}
}
