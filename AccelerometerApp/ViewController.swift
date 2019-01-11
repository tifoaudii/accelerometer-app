//
//  ViewController.swift
//  AccelerometerApp
//
//  Created by Tifo Audi Alif Putra on 11/01/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var X: UILabel!
    @IBOutlet weak var Y: UILabel!
    @IBOutlet weak var Z: UILabel!
    
    //for managing the motion
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        
        //start keeping track accelerometer updates
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabel)
    }
    
    func updateLabel(accelerometerData: CMAccelerometerData?, error: Error?){
        
    }

}

