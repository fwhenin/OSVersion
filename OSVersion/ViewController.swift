//
//  ViewController.swift
//  OSVersion
//
//  Created by Freddy Henin on 1/1/15.
//  Copyright (c) 2015 Freddy Henin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblMajorVersion: UILabel!
    @IBOutlet weak var lblMinorVersion: UILabel!
    @IBOutlet weak var lblPatchVersion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var info = OSVersion.deviceVersion();
        
        lblMajorVersion.text = "Major: \(info.majorVersion)";
        lblMinorVersion.text = "Minor: \(info.minorVersion)";
        lblPatchVersion.text = "Patch: \(info.patchVersion)";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

