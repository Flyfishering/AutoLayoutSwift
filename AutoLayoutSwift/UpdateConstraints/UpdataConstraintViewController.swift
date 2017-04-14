//
//  UpdataConstraintViewController.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/13.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class UpdataConstraintViewController: UIViewController {

    let updateConstraintView : UpdataConstraintView = UpdataConstraintView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        updateConstraintView.translatesAutoresizingMaskIntoConstraints = false
        updateConstraintView.addToSuperview(Superview: self.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
