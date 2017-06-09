//
//  MapScene.swift
//  FantasyMap
//
//  Created by Bob Spryn on 6/8/17.
//  Copyright © 2017 Thumbworks. All rights reserved.
//

import Foundation
import SceneKit

class MapScene: SCNScene {
    let mapNode = SCNNode()
    var castleNode = SCNNode()
    
    override init() {
        super.init()
        mapNode.geometry = SCNPlane(width: 1, height: 1)
        mapNode.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Magic-Kingdom-Map-2.jpg")
        mapNode.geometry?.firstMaterial?.isDoubleSided = true
        mapNode.geometry?.firstMaterial?.lightingModel = .physicallyBased
        mapNode.transform = SCNMatrix4MakeRotation(-Float.pi / 2.0, 1, 0, 0)
        rootNode.addChildNode(mapNode)
        
        let scene = SCNScene(named: "art.scnassets/Cinderella Castle.dae")!
        self.castleNode = scene.rootNode.childNodes.first!
        self.castleNode.transform = SCNMatrix4MakeRotation(-Float.pi / 2.0, 1, 0, 0)
        self.castleNode.position = SCNVector3Make(0.061, 0, -0.124)
        self.castleNode.scale = SCNVector3Make(0.013, 0.013, 0.013)
        
        rootNode.addChildNode(self.castleNode)
        
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
