//
//  singleLineTextField.swift
//  Xmobile2
//
//  Created by mac on 2017. 12. 20..
//  Copyright © 2017년 Will. All rights reserved.
//

import UIKit

class singleLineTextField: UITextField {
    func setBottomLine(borderColor: UIColor){
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = UIColor.clear
        
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(self.frame.width + 40), height: height)
        
        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
    }
}
