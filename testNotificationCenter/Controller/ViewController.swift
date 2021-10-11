//
//  ViewController.swift
//  testNotificationCenter
//
//  Created by HiroakiSaito on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var counterView: CounterView!
    private(set) lazy var counterModel = CounterModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        counterModel.notificationCenter.addObserver(self, selector: #selector(self.handleCountChange(_:)), name: .init(NSNotification.Name(rawValue: CounterModel.notificationName)), object: nil)
    }

    @objc func handleCountChange(_ notification: Notification){
        if let count = notification.object as? Int {
            counterView.render(count: count)
        }
    }
    
    @IBAction func plusbutton(_ sender: Any){
        counterModel.countUp()
    }
    
    @IBAction func minusbutton(_ sender: Any){
        counterModel.countDown()
    }
    

}

