//
//  Spaceship.swift
//  blacksmith
//
//  Created by Yifang Zhang on 1/23/15.
//  Copyright (c) 2015 Yifang. All rights reserved.
//

import Foundation
import SpriteKit

class Spaceship: SKSpriteNode {
    
    init(imageFileNamed: String) {
        let imageTexture = SKTexture(imageNamed: imageFileNamed)
        super.init(texture: imageTexture, color: nil, size: imageTexture.size())
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}