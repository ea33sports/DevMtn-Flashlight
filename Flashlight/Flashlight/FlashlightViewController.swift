//
//  FlashlightViewController.swift
//  Flashlight
//
//  Created by Eric Andersen on 8/20/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit
import AVFoundation

class FlashlightViewController: UIViewController {
    
    var isOn = false
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
    var statusBarStyle = UIStatusBarStyle.lightContent
    
    var torchMode = AVCaptureDevice.TorchMode.off
    
    @IBOutlet weak var onButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func toggleLight() {
        if isOn == false {
            isOn = true
            onButton.setTitle("OFF", for: .normal)
            onButton.setTitleColor(.black, for: .normal)
            view.backgroundColor = .white
            statusBarStyle = .default
        } else if isOn == true {
            isOn = false
            onButton.setTitle("ON", for: .normal)
            onButton.setTitleColor(.white, for: .normal)
            view.backgroundColor = .black
            statusBarStyle = .lightContent
        }
        setNeedsStatusBarAppearanceUpdate()
    }
    
//    func toggleTorch() {
//        if let device = AVCaptureDevice.isTorchModeSupported(<#T##AVCaptureDevice#>)
//            if isOn == true {
//                torchMode = .on
//            } else if isOn == false {
//                torchMode = .off
//            }
//        }
//    }

    @IBAction func buttonTapped(_ sender: Any) {
        toggleLight()
//        toggleTorch()
    }
    
    
    @IBAction func onButtonGestureRecognized(_ sender: UITapGestureRecognizer) {
        sender.numberOfTapsRequired = 2
        toggleLight()
//        toggleTorch()
    }
}

