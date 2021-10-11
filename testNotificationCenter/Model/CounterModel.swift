//
//  CounterModel.swift
//  testNotificationCenter
//
//  Created by HiroakiSaito on 2021/10/11.
//

import Foundation

class CounterModel {
    static let  notificationName = "Counter"
    
    let notificationCenter = NotificationCenter()
    
    internal var count: Int = 0{
        didSet{
            notificationCenter.post(name: .init(rawValue: CounterModel.notificationName), object: count)
        }
    }
    
    func countUp(){ count += 1 }
    func countDown(){ count -= 1}
}
