//
//  OSVersion.swift
//  OSVersion
//
//  Created by Freddy Henin on 1/1/15.
//  Copyright (c) 2015 Freddy Henin. All rights reserved.
//

import Foundation
import UIKit


class OSVersion{
    class func deviceVersion() -> OSVersionInfo{
        let version = UIDevice.currentDevice().systemVersion;
        
        
        
        return parseVersionString(version);
    }
    
    class func parseVersionString(version: String) -> OSVersionInfo{
        var info = OSVersionInfo();
        
        
        var versionArray = split(version) {$0 == "."}
        
        if (versionArray.count > 0){
            info.majorVersion = versionArray[0].toInt()!;
        }
        
        if (versionArray.count > 1){
            info.minorVersion = versionArray[1].toInt()!;
        }
        
        if (versionArray.count > 2){
            info.patchVersion = versionArray[2].toInt()!;
        }
        
        
        return info;
    }
    
}