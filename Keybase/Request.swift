//
//  Request.swift
//  Keybase
//
//  Created by Gabriel on 10/5/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import Foundation

public typealias RequestCompletion = (NSError!, AnyObject!) -> Void

protocol Service {
  func sendRequestWithMethod(method: String, params: [AnyObject]?, messageId: Int, completion: RequestCompletion)
}

public class Request: NSObject {

  var service: Service
  var messageId: UInt

  init(service: Service) {
    self.requestor = requestor
    self.messageId = Request.nextMessageId()
  }

  static gMessageId: UInt = 1
  class func nextMessageId() -> UInt {
    return gMessageId++
  }

  public func sendRequest(method: String, args: Dictionary<String, AnyObject>, completion: RequestCompletion) {
    self.service.sendRequestWithMethod(method, params: [args], messageId: self.messageId, completion:completion)
  }

}
