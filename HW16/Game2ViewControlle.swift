
import UIKit
import SpriteKit
import GameplayKit

class Game2ViewControlle: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let view = self.view as! SKView? {
            if let scene = SKScene(fileNamed: "GameScene2") {
                scene.scaleMode = .aspectFit
                view.presentScene(scene)
            }
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    
    

}
