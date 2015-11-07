//
//  SecondViewController.swift
//  Screen_sample
//
//  Created by Ooguchi Taiga on 2015/11/07.
//  Copyright © 2015年 Ooguchi Taiga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Controllerのタイトルを設定する.
        self.title = "My 2nd View"
        
        // Viewの背景色を定義する.
        self.view.backgroundColor = UIColor.greenColor()
        
        // ボタンの定義をおこなう.
        let myButton = UIButton(frame: CGRectMake(0,0,200,50))
        myButton.backgroundColor = UIColor.orangeColor()
        myButton.layer.masksToBounds = true
        myButton.setTitle("1st View へ移動", forState: .Normal)
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:300)
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(myButton);
        
    }
   
    
    /*
    ボタンイベント
    */
    internal func onClickMyButton(sender: UIButton){
        
        // 移動先のViewを定義する.
        let secondViewController = FirstViewController()
        
        // SecondViewに移動する.
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
