//
//  ApiClient.swift
//  XMobile_VER2.0
//
//  Created by mac on 2017. 12. 21..
//  Copyright © 2017년 Will. All rights reserved.
//

import Foundation
import SwiftHTTP
import JSONJoy

public class ApiClient{
    private static let instance: ApiClient = ApiClient();
    private let apiUrl = "https://10.1.21.85:11001";
    private let fileUrl = "https://10.1.21.85:1100";
    
    public static func getInstance() -> ApiClient{
        return instance;
    }
    
    public func loginProtocol(id: String, pw: String) -> Bool{
        var isLogin : Bool = false;
        do{
            let opt = try HTTP.POST(apiUrl, parameters: ["userid":id,"password":pw,"deviceid":id])
            
            opt?.onFinish = {
                response in
                if(response.statusCode == 200){
                    isLogin = true;
                }else{
                    isLogin = false;
                }
            }
        }catch let error{
            isLogin = false;
        }
        return isLogin;
    }
}

let baseUrl = "Xmobile.xstream";
