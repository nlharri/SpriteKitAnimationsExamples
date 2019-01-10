//
//  GameScene.swift
//
//
//  Created by user913992 on 1/9/19.
//  Copyright © 2019 nlharri. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            // set alpha channel to 0 (invisible)
            // label.alpha = 0.0
            // set alpha channel to 1 (fully visible)
            label.alpha = 1.0
            // create fade in action
            // let fadeInAction = SKAction.fadeIn(withDuration: 2.0)
            // create move down action
            let moveDownAction = SKAction.moveBy(x: 0, y: -100, duration: 3.0)
            // run fade in action on the label
            // label.run(fadeInAction)
            label.run(moveDownAction)
        }
    }
}
