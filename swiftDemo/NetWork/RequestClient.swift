//
//  RequestClient.swift
//  swiftDemo
//
//  Created by Mona Wen on 2018/8/15.
//  Copyright © 2018年 Mona Wen. All rights reserved.
//

import UIKit

class RequestClient: AFHTTPSessionManager {
    class var sharedInstance :RequestClient {
        struct Static {
            static var onceToken:dispatch_once_t = 0
            static var instance:RequestClient? = nil
        }
        
        dispatch_once(&Static.onceToken, { () -> Void in
            //string填写相应的baseUrl即可
            var url:NSURL = NSURL(string: "")!
            Static.instance = RequestClient(baseURL: url)
        })
        //返回本类的一个实例
        return Static.instance!
        
    }
}

