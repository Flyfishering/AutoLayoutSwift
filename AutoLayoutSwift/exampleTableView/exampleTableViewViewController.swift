//
//  exampleTableViewViewController.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class exampleTableViewViewController: UIViewController {

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let titles = ["昵称：啦啦啦啦啦",
                      "性别：男",
                      "地址：中国广东省深圳市",
                      "天气：阴转多云",
                      "气候：亚热带海洋气候",
                      "温度：24摄氏度"]
        
        let tableviewDemo = ExampleTableview.init(titleArr: titles)
        tableviewDemo.add(to: self.view)

        
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
