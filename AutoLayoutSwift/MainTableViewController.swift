//
//  MainTableViewController.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "class")
        self.tableView.tableFooterView = UIView()
    }

    private let titleArr : NSArray = ["auto layout 示例",
                                      "auto layout tableview 示例",
                                      "auto layout crollview 示例",
                                      "auto layout tableview 自适应cell 高度",
                                      "auto layout 更新约束",
                                      "HuggingAndCompressViewController属性"]
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = titleArr[indexPath.row] as? String
       
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(ExampleOneViewController(), animated: true)
            break
        case 1:
            self.navigationController?.pushViewController(exampleTableViewViewController(), animated: true)
            break
        case 2:
            let mainStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
            
            
            let scrollVC:UIViewController = mainStoryBoard.instantiateViewController(withIdentifier: "scrollViewID")
            self.navigationController?.pushViewController(scrollVC, animated: true)
            break
        case 3:
            self.navigationController?.pushViewController(AutoTableViewController(), animated: true)
            break
        case 4:
            self.navigationController?.pushViewController(UpdataConstraintViewController(), animated: true)
            break
        case 5:
            self.navigationController?.pushViewController(HuggingAndCompressViewController(), animated: true)
            
        default: break
            
        }
    }
}
