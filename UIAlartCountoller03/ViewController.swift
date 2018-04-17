//
//  ViewController.swift
//  UIAlartCountoller03
//
//  Created by D7703_15 on 2018. 4. 17..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다!", preferredStyle: .alert)
        //후행 클로져 (Trailing Closure)
        let okAction = UIAlertAction(title: "확인", style: .default)
            { (myAction: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.red
            }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        { (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        }
        //원래 클로져
        let TestAction = UIAlertAction(title: "Delete", style: .destructive, handler:
        { (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(TestAction)
        
        present(myAlert, animated: true, completion: nil)
        
    }
    
}

