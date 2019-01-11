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
        guard let data = accelerometerData else { return }
        
        //create object for format the minimum and maximum digit fraction
        let formater = NumberFormatter()
        formater.minimumFractionDigits = 1
        formater.maximumFractionDigits = 1
        
        //grab x,y,z value
        let x = formater.string(for: data.acceleration.x)!
        let y = formater.string(for: data.acceleration.y)!
        let z = formater.string(for: data.acceleration.z)!
        
        //update the labels
        X.text = "X: \(x)"
        Y.text = "Y: \(y)"
        Z.text = "Z: \(z)"
    }

}

