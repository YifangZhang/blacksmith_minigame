//
//  GameScene.swift
//  blacksmith
//
//  Created by Yifang Zhang on 1/23/15.
//  Copyright (c) 2015 Yifang. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var touchedTimes = 0
    var spaceshipNode: Spaceship?
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        spaceshipNode = Spaceship(imageFileNamed: "Spaceship")
        spaceshipNode?.xScale = 0.5
        spaceshipNode?.yScale = 0.5
        spaceshipNode!.position = CGPointMake(300, 200)
        addChild(spaceshipNode!)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            
            
            let location = touch.locationInNode(self)
            
            spaceshipNode?.position = location
            
            
            /*
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.1
            sprite.yScale = 0.1
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
            */
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}
