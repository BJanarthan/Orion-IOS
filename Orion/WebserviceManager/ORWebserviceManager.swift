//
//  ORWebserviceManager.swift
//  Orion
//
//  Created by Banuchander Janarthan on 25/05/18.
//  Copyright © 2018 Thapovan-inc. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ORWebserviceManager {
    static let shared = ORWebserviceManager() // 1
    let url = "http://54.83.197.74:20691"
    
    private init() { }
    
    func postSpanDetails(_ completion: @escaping (Com_Thapovan_Orion_Proto_Span?) -> ()) { // 2
        let path = "/UploadSpan"
        Alamofire.request("\(url)\(path)").responseData { response in
            if let data = response.result.value { // 3
                let spanDetailsResponse = try? Com_Thapovan_Orion_Proto_Span(serializedData: data) // 4
                completion(spanDetailsResponse)
            }
            completion(nil)
        }
    }
    

}
