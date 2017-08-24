//
//  ViewController.swift
//  ARCLTest
//
//  Created by Atsuo Yonehara on 2017/08/24.
//  Copyright © 2017年 Atsuo Yonehara. All rights reserved.
//

import CoreLocation
import ARCL

class ViewController: UIViewController {
    
    var sceneLocationView = SceneLocationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sceneLocationView.run()
        //五反田駅
        let coordinate = CLLocationCoordinate2D(latitude: 35.626179, longitude: 139.723925)
        
        let location = CLLocation(coordinate: coordinate, altitude: 30)
        let image = UIImage(named: "aichan_aikon")!
        let annotationNode = LocationAnnotationNode(location: location, image: image)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        view.addSubview(sceneLocationView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        sceneLocationView.frame = view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

