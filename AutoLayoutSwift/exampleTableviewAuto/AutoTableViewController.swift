//
//  AutoTableViewController.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/6.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class AutoTableViewController: UITableViewController {

    //数据源
    private let titleArr = [
                            "自适应高度的cell,自适应高度的cell,自适应高度的cell,自适应高度的cell,自适应高度的cell,自适应高度的cell,自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell自适应高度的cell",
                            "自适应高度的cell自适应高度的cell",
                            "自适应高度的cell",
                            "自适应高度的cell",
                            ]
    private let descripArr = [
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码" ,
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
        "我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码 我们使用tableview的属性tableView.estimatedRowHeight和tableView.rowHeight = UITableViewAutomaticDimension来实现cell的自适应高度，详情请看代码",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "tableview 自适应高度"
        self.view.backgroundColor = UIColor.white

        self.tableView.register(UINib.init(nibName: "AutoTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let index:IndexPath = NSIndexPath.init(row: 1, section: 0) as IndexPath
        self.tableView(self.tableView, didSelectRowAt: index)
        self.tableView.selectRow(at: index , animated: true, scrollPosition: UITableViewScrollPosition.bottom)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

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
        let cell:AutoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AutoTableViewCell
        cell.myTitleLabel.text = titleArr[indexPath.row] as String
        cell.myDescripLabel.text = descripArr[indexPath.row] as String
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
