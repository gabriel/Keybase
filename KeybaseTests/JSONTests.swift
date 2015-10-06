//
//  Tests.swift
//  Tests
//
//  Created by Gabriel on 10/5/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import XCTest
import SwiftyJSON

@testable import Keybase

class Tests: XCTestCase {
    
  func testJSON() {
    let testStr = "{\"type\": \"test\", \"name\": \"testname\", \"cTime\": 1}"
    let json = JSON(data: testStr.dataUsingEncoding(NSUTF8StringEncoding)!)

    let device = Device(type: json["type"].string, name: json["name"].string, deviceID: json["deviceID"].string, cTime: json["cTime"].int64 as Time?, mTime: json["mTime"].int64 as Time?)
    print(device)
  }
  
}
