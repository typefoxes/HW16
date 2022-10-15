import SpriteKit
import GameplayKit

class GameScene2: SKScene, SKPhysicsContactDelegate {
    
    var backgroundNode: SKNode!
    var birdNode : SKSpriteNode!
    var gameOverNode: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        backgroundNode = self.childNode(withName: "background")!
        birdNode = (self.childNode(withName: "Bird") as! SKSpriteNode)
        gameOverNode = (self.childNode(withName: "GameOver") as! SKSpriteNode)
        
        
        gameOverNode.alpha = 0
        self.physicsWorld.contactDelegate = self
        
        let moveBackground = SKAction.move(by: CGVector(dx: -500, dy: 0), duration: 10)
        backgroundNode.run(moveBackground)
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        birdNode.physicsBody!.applyImpulse(CGVector(dx: 0, dy: 3))
    }
    func stopGame(){
        backgroundNode.removeAllActions()
        birdNode.physicsBody!.pinned = true
        gameOverNode.run(SKAction.fadeIn(withDuration: 0.5))
    }
                         
    func didBegin(_ contact: SKPhysicsContact) {
        stopGame()
    }
    
}
