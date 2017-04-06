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
        return tableView
    }()
    
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
    
    
    func configView(){
        translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(mytableView)
        /*
 NSLayoutConstraint.activate([
            mytableView.widthAnchor.constraint(equalToConstant: 200),
            mytableView.heightAnchor.constraint(equalToConstant: 300)
            ])
        */

        let tabelviewHeigh = 40.0 * CGFloat(mytitleArr.count)
        
        NSLayoutConstraint.activate([
            mytableView.topAnchor.constraint(equalTo: self.topAnchor),
            mytableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            mytableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mytableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
         mytableView.widthAnchor.constraint(equalToConstant: 200),
         mytableView.heightAnchor.constraint(equalToConstant: tabelviewHeigh)
         ])
        
    }
    //MARK : - tableview delegate and datasource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mytitleArr.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor.gray
        cell.textLabel?.text = mytitleArr[indexPath.row] as String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
