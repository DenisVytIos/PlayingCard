//
//  ViewController.swift
//  PlayingCard
//
//  Created by Denis on 31.01.2019.
//  Copyright © 2019 Denis Vitrishko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10{
            if let card = deck.draw(){
                print("\(card)")
            }
        }
    }
 

   


}

