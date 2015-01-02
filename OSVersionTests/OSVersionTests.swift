//
//  OSVersionTests.swift
//  OSVersionTests
//
//  Created by Freddy Henin on 1/1/15.
//  Copyright (c) 2015 Freddy Henin. All rights reserved.
//

import UIKit
import XCTest

class OSVersionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testVersion() {
        
        var info = OSVersion.parseVersionString("3.1.2");
        
        XCTAssertEqual(3,info.majorVersion);
        XCTAssertEqual(1,info.minorVersion);
        XCTAssertEqual(2,info.patchVersion);
        
    }
    
    
}
