//
//  CounterView.swift
//  testNotificationCenter
//
//  Created by HiroakiSaito on 2021/10/11.
//

import Foundation
import UIKit

class CounterView: UIView{
    
    @IBOutlet weak var countLabel: UILabel!
    
    public func render(count: Int){
        countLabel.text = String(count)
    }
}

