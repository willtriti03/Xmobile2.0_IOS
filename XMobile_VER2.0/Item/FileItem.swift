//
//  FileItem.swift
//  Xmobile2
//
//  Created by Will on 2017. 12. 19..
//  Copyright © 2017년 Will. All rights reserved.
//

import Foundation

class FileItem {
    struct s_FileItem :Codable{
        var idx : Int;
        var filename: String;
        var displayName : String;
        var size : CLong;
        var userid:String;
        var ggid:Int,gid:Int;
        var CreateDate:String;
        var LastWriteDate:String;
        var isShortcut:Int;
        var type: Int;
        var state: Int;
        var status: Int;
        var del: String;
        var tag: String;
    }
    
    public var _idx : Int{get{return idx}};
    public var _filename: String{get{return filename}};
    public var _displayName : String{get{return displayName}};
    public var _size : CLong{get{return size}};
    public var _userid:String{get{return userid}};
    public var _ggid:Int{get{return ggid}};
    public var _gid:Int{get{return gid}};
    public var _CreateDate:String{get{return CreateDate}};
    public var _LastWriteDate:String{get{return LastWriteDate}};
    public var _isShortcut:Int{get{return isShortcut}};
    public var _type: Int{get{return type}};
    public var _state: Int{get{return state}};
    public var _status: Int{get{return status}};
    public var _del: String{get{return del}};
    public var _tag: String{get{return tag}};
    
    var idx : Int;
    var filename: String;
    var displayName : String;
    var size : CLong;
    var userid:String;
    var ggid:Int,gid:Int;
    var CreateDate:String;
    var LastWriteDate:String;
    var isShortcut:Int;
    var type: Int;
    var state: Int;
    var status: Int;
    var del: String;
    var tag: String;
    var sp: s_FileItem;
    
    var jsonReturn:String?{
        do{
            let jsonEncoder = JSONEncoder();
            let jsonData = try jsonEncoder.encode(sp);
            let json = String(data: jsonData,encoding: String.Encoding.utf8);
            return json;
            
        }
        catch{}
        return "Empty";
    }
    
    init(){
        self.idx = -1;
        self.filename = "Empty";
        self.displayName = "Empty";
        self.size = 0;
        self.userid = "Empty";
        self.ggid = 0; self.gid = 0;
        self.CreateDate = "Empty";
        self.LastWriteDate = "Empty";
        self.isShortcut = 0;
        self.type = 0;
        self.state = 0;
        self.status = 0;
        self.del = "Empty";
        self.tag = "Empty";
        sp = s_FileItem(idx: idx, filename: filename, displayName: displayName, size: size, userid: userid, ggid: ggid, gid: gid, CreateDate: CreateDate, LastWriteDate: LastWriteDate, isShortcut: isShortcut, type: type, state: state, status: status, del: del, tag: tag);
    }
    
    
    
}
