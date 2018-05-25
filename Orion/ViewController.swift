//
//  ViewController.swift
//  Orion
//
//  Created by Banuchander Janarthan on 21/05/18.
//  Copyright © 2018 Thapovan-inc. All rights reserved.
//

import UIKit
import SwiftGRPC
class ViewController: UIViewController {

    var channel: Channel!
    var server: Server!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let serviceManager = ORWebserviceManager.shared
//        serviceManager.postSpanDetails { (spanResponse) in
//            //Response Recieved
//        }
        
        
        //Step by step process
        //1) Create a service
        let url = "http://54.83.197.74:20691/UploadSpan"
        //let client = Com_Thapovan_Orion_Proto_TracerServiceClient(address: url)
        
        
        let address = "54.83.197.74" + ":" + "20691"
        //self.channel = gRPC.Channel(address: address, secure: false)
        
        channel = Channel(address: address, secure: false)
        let client = Com_Thapovan_Orion_Proto_TracerServiceClient(channel: channel)
        
        // NONSTREAMING
        var requestMessageData = Com_Thapovan_Orion_Proto_Span()
        
        var spanStartEvent = Com_Thapovan_Orion_Proto_StartEvent()
        spanStartEvent.eventID = UInt64(Date().timeIntervalSince1970 * 1000)
        spanStartEvent.jsonString = "{}"
        
        var traceContext = Com_Thapovan_Orion_Proto_Trace()
        traceContext.traceID = UUID().uuidString
        
        var spanContext = Com_Thapovan_Orion_Proto_Span()
        spanContext.spanID = "adsfadsfssdfsdfsdf" // UUID().uuidString
        spanContext.eventLocation = "IOS"
        spanContext.serviceName = "IOS Test - will replace later"
        spanContext.timestamp = UInt64(Date().timeIntervalSince1970 * 1000)
        spanContext.traceContext = traceContext
        spanContext.startEvent = spanStartEvent
        
        var request = Com_Thapovan_Orion_Proto_UnaryRequest()
        request.spanData = spanContext
        
        do {
            let response = try client.uploadSpan(request, completion: { (response, result) in
                //check here
                print(result.statusMessage ?? "Default")
                print(result.resultData?.base64EncodedString())
            })
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
        
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

