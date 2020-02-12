//
//  GameScene.swift
//  kenneyballs


import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    
    override func didMove(to view: SKView) {
        
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first{
            let w = Int.random(in: 10...60)
            let location = touch.location(in: self)
            
            let box = SKSpriteNode(color: .black, size: CGSize(width: w, height: w))
            box.color = UIColor.random
            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: w, height: w))
            box.position = location
            
            let angle = CGFloat.random(in: 0...360) * .pi/180
            let rotateAction = SKAction.rotate(toAngle: angle, duration: 0.3)
            box.run(rotateAction)
            
            
            
            
            let arr = ["ballRed", "ballGreen", "ballYellow", "ballPurple",  "ballCyan", "ballBlue"]
            
            let ball = SKSpriteNode(imageNamed: arr.randomElement()!)
            ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width/2)
            ball.physicsBody?.restitution = 0.8
            ball.position = location
            
            let rand = Int.random(in: 0...2)
            
            if rand == 0{
                addChild(box)
                
            }
            else{
                addChild(ball)
            }
            
            
            
        }
    }
}

extension UIColor {
    static var random: UIColor {
        let colors:[UIColor] = [.red, .yellow, .green, .blue, .purple,.red]
        return colors.randomElement()!
        //        return UIColor(red: .random(in: 0...1),
        //                       green: .random(in: 0...1),
        //                       blue: .random(in: 0...1),
        //                       alpha: 1.0)
    }
}
