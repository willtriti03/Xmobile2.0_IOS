//
//  UserDefaultCore.swift
//  Xmobile2
//
//  Created by Will on 2017. 12. 18..
//  Copyright © 2017년 Will. All rights reserved.
//

import Foundation

class UserDefaultCore{
    static let instance = UserDefaultCore();
    let core = UserDefaults.standard;
    let appDefaults:[String:Any] = ["firstKey":true];
    var cnt:Int;
    init(){
        core.register(defaults:appDefaults);
        if(core.bool(forKey:"firstKey")){
            core.set(0,forKey:"cnt");
            for i in 0...9{
                core.set("Empty", forKey: "history"+String(i));
            }
        }
        cnt = core.integer(forKey:"cnt");
    }
    
    func addHistory(fileItem:FileItem ,path:String){
        pushFront(convertString: convertItemToString(historyItem: HistoryItem.init(fileItem: (fileItem.jsonReturn), path: path)));
    }
    
    func convertItemToString(historyItem:HistoryItem) -> String? {
        do{
            let jsonEncoder = JSONEncoder();
            let jsonData = try jsonEncoder.encode(historyItem);
            let json = String(data: jsonData,encoding: String.Encoding.utf8);
            return json;
        }
        catch{
            
        }
        return "empty";
    }
    
    func findSameItem(jsonString:String?) -> Bool {
        for i in 0..<cnt {
            if(core.string(forKey: ("history"+String(i))) == jsonString){
                push(convertString: jsonString, oRc: 1);
                grabageCollect(now: i+1);
                return true;
            }
        }
        return false;
    }
    
    func pushFront(convertString: String?) {
        if(!findSameItem(jsonString: convertString)){
            push(convertString: convertString, oRc: 1);
        }
    }
    
    func push(convertString:String?, oRc:Int) {
        for i in cnt..<0 {
            if(i<10){
                let tmp = core.string(forKey: ("histroy"+String(i-1)));
                if(!(tmp=="empty")){
                    core.set(tmp, forKey: ("histroy"+String(i)));
                }
            }
        }
        cnt+=oRc;
        core.set(convertString, forKey: "history0");
        core.set(cnt, forKey: "cnt");
    }
    
    func grabageCollect(now:Int) {
        for i in now..<cnt{
            core.set(core.string(forKey: ("history"+String(i+1))), forKey: ("history"+String(i)));
        }
        cnt-=1;
        core.set(cnt, forKey: "cnt");
    }
    
}


