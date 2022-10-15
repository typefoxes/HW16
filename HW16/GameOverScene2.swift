import SceneKit
import GameplayKit

class GameOverScene2: SKScene {
    let header = SKLabelNode(fontNamed: "Arial")
    let hint = SKLabelNode(fontNamed: "Arial")
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        header.text = "Вот и всё, приплыли..."
        header.position = CGPoint(x: frame.midX, y: frame.midY+header.fontSize)
        header.fontSize = 32
        self.addChild(header)
        
        hint.text = "Нажми на экран чтобы начать сначала"
        hint.position = CGPoint(x: header.frame.midX, y: frame.midY-header.frame.height)
        hint.fontSize = 20
        hint.numberOfLines = 0
        
        hint.verticalAlignmentMode = .center
        hint.horizontalAlignmentMode = .center
        self.addChild(hint)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        let scene = GameScene2(size: frame.size)
        let transition = SKTransition.flipHorizontal(withDuration: 0.5)
        view?.presentScene(scene, transition: transition)
        self.removeFromParent()
    }
}
