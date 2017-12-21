//
//  loginViewController.swift
//  Xmobile2
//
//  Created by mac on 2017. 12. 19..
//  Copyright © 2017년 Will. All rights reserved.
//

import UIKit
import SwiftHTTP
import JSONJoy

class loginViewController: UIViewController {

    @IBOutlet weak var form_id: singleLineTextField!
    @IBOutlet weak var form_pw: singleLineTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        form_id.setBottomLine(borderColor: UIColor.cyan)
        form_pw.setBottomLine(borderColor: UIColor.cyan)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        let id = form_id.text;
        let pw = form_pw.text;
        loginSystem(id: id!, pw: pw!)
    }
    
    func loginSystem(id : String , pw : String){
        var progress = ProgressDialog(delegate: self);
        print("GET call");
        progress.Show(animate: true, mesaj: "Loading...")
    }
}
