//
//  NetworkConnection.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
// This class create a call to a the REST API
//
// TO-DO: This class will be created in a future implementation for the
// moment the ui only will show moks and hardcode data

import Foundation

class NetworkConnection {
    var baseURL: String!
    var request: NSMutableURLRequest!
    var endPoint: String!
    
    // TO-DO: avoid the creaction of a NEtworKConnection object with
    // calling the same endpointcontrol
    init() {
        self.baseURL = " "
        self.request = NSMutableURLRequest()
        self.endPoint = " "
    }
    
    func callEndpoint(endPoint: String) {
        
    }
}

