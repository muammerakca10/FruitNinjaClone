//
//  GameScene.swift
//  FruitNinjaClone
//
//  Created by MAC on 30.09.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameScore : SKLabelNode!
    
    var score = 0{
        didSet{
            gameScore.text = "Score: \(score)"
        }
    }
    
    var livesImages = [SKSpriteNode]()
    var lives = 3
    
    var activeSliceBG : SKShapeNode!
    var activeSliceFG : SKShapeNode!
    
    override func didMove(to view: SKView) {
     
        let background = SKSpriteNode(imageNamed: "sliceBackground")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        
        physicsWorld.speed = 0.85
        physicsWorld.gravity = CGVector(dx: 0, dy: -6)
        
        
        createScore()
        createLives()
        createSlices()
    }
    
    
    func createScore(){
        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
        
        gameScore.position = CGPoint(x: 8, y: 8)
        score = 0
    }
    
    func createLives(){
        for i in 0...3 {
            let spriteNode = SKSpriteNode(imageNamed: "sliceLife")
            spriteNode.position = CGPoint(x: CGFloat(834 + (i*70)), y: 720)
            addChild(spriteNode)
            livesImages.append(spriteNode)
            
            
        }
    }
    
    func createSlices(){
        
    }
}
