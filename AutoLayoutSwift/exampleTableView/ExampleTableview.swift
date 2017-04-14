//
//  ExampleTableview.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ExampleTableview: ExampleOneBaseView,UITableViewDataSource,UITableViewDelegate {
    
    private var mytableView : UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: UITableViewStyle.plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.clear
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 60;
        tableView.alpha = 0.001
        return tableView
    }()
    
    
    private var heightConstraint : NSLayoutConstraint?
    private var mytitleArr:[String] = []
    
    //MARK: - init
    init(titleArr:Array<String>) {
        super.init()
        mytitleArr = titleArr
        mytableView.delegate = self;
        mytableView.dataSource = self;
        self.configView()
    }
    
    required init(frame:CGRect){
        fatalError("init(frame:) has not been implemented")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func updateConstraintsIfNeeded() {
        super.updateConstraintsIfNeeded()
        
        let rect :CGRect = mytableView.rect(forSection: 0);
        print("rect.size.height = \(rect.size.height)")
        //1.直接更改tableview的高度约束 失败
        mytableView.heightAnchor.constraint(equalToConstant: rect.size.height)
    
        
        //2.把tableview 高度约束设为 属性，更改成功
        heightConstraint?.constant = rect.size.height
        heightConstraint?.isActive = true
        

        //3.遍历tableview的约束，更改它的高度约束  更改成功
//        for constraints in self.mytableView.constraints{
//            if constraints.firstItem as! NSObject == self.mytableView {
//                if constraints.firstAttribute == NSLayoutAttribute.height {
//                    constraints.constant = rect.size.height
//                }
//            }
//        }
        
    }
    
    
    func configView(){
        translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(mytableView)
        //添加约束
        heightConstraint  = self.mytableView.heightAnchor.constraint(equalToConstant: 1000)
        NSLayoutConstraint.activate([
            mytableView.topAnchor.constraint(equalTo: self.topAnchor),
            mytableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            mytableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mytableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
         mytableView.widthAnchor.constraint(equalToConstant: 200),
         heightConstraint!
         ])
        
        let indexPath : IndexPath = IndexPath.init(row: 0, section: 0)
        self.tableView(self.mytableView, didSelectRowAt: indexPath)
//        self.tableView(self.mytableView , didDeselectRowAt: indexPath)
    }
    
    //MARK : - tableview delegate and datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mytitleArr.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor.gray
        cell.textLabel?.text = mytitleArr[indexPath.row] as String
        cell.textLabel?.numberOfLines = 0;
        if indexPath.row == mytitleArr.count - 1{
            
        }
        print("cell.height = \(cell.frame.size.height)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.alpha = 1.0
        let rect :CGRect = mytableView.rect(forSection: 0);
        print("rect.size.height = \(rect.size.height)")
        self.setNeedsUpdateConstraints()
        self.updateConstraintsIfNeeded()
    }
}
