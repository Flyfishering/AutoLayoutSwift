//
//  ExampleOneBaseView.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ExampleOneBaseView: UIView {

    
    
    init() {
        super.init(frame: .zero)
        self.configureView()
    }
    required override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let contentView : UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = UIColor.init(colorLiteralRed: 0.2, green: 0.1, blue: 0.008, alpha: 1.0)
        return contentView
    }()
    
    private func configureView(){
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        //contentView 的布局和self 一致
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            contentView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            contentView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0)
            ])
        addBackgroundButton(to: contentView)
    }
    
    //外部方法
    func add(to superView:UIView) {
        superView.addSubview(self);
        //self 布局处于父视图的中心点。
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: superView.centerXAnchor),
            centerYAnchor.constraint(equalTo: superView.centerYAnchor)])
    }
}


extension ExampleOneBaseView{
    
    fileprivate func addBackgroundButton(to view:UIView){
        let button = UIButton(type:.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            button.leftAnchor.constraint(equalTo: view.leftAnchor),
            button.rightAnchor.constraint(equalTo: view.rightAnchor)])
        button.addTarget(self, action: #selector(didTouchUp(_:)), for: .touchUpInside)
        
    }
    
    func didTouchUp(_ sender :Any) {
        print("ground base button")
    }
    
}
