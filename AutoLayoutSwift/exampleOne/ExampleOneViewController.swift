//
//  ExampleOneViewController.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ExampleOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Auto Layout"
        
        let textFeildOne = UITextField()
        textFeildOne.translatesAutoresizingMaskIntoConstraints = false
        textFeildOne.tag = 100
        textFeildOne.borderStyle = UITextBorderStyle.roundedRect
        textFeildOne.placeholder = "请输入第一个label 要显示的内容"

        let textFeildTwo = UITextField()
        textFeildTwo.translatesAutoresizingMaskIntoConstraints = false
        textFeildTwo.tag = 200
        textFeildTwo.borderStyle = UITextBorderStyle.roundedRect
        textFeildTwo.placeholder = "请输入第二个label 要显示的内容"
        
        self.view.addSubview(textFeildOne)
        self.view.addSubview(textFeildTwo)
        
        let vflArr = ["V:|-64-[textFeildOne]-20-[textFeildTwo]",
                      "H:|-[textFeildOne]-|",
                      "H:|-[textFeildTwo]-|"]
        let views:[String:UIView] = ["textFeildOne":textFeildOne,
                                     "textFeildTwo":textFeildTwo]
        for vfl in vflArr {
            self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: vfl, options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: views))
        }
        
        
        
        
        let subView : ExampleOneView = ExampleOneView.init(superView: self.view)
        subView.add(to: self.view)
        textFeildOne.delegate = subView
        textFeildTwo.delegate = subView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
