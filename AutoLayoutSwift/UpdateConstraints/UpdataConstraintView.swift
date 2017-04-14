//
//  UpdataConstraintView.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/13.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class UpdataConstraintView: UIView {

   
    private let redView : UIView = {
        let view : UIView = UIView.init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    private let button : UIButton = {
        let button : UIButton = UIButton.init(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("更改红色视图高度约束", for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        return button
    }()
    
    private var redViewHeightConstraint : NSLayoutConstraint?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.gray
        self.addSubview(self.redView)
        
        self.addSubview(self.button)
        //这里先用 NSLayoutConstraint 之后用FLV语言试试
        
        //给radView 高度约束赋值
        redViewHeightConstraint = self.redView.heightAnchor.constraint(equalToConstant: 300)
        
        let constrains : [NSLayoutConstraint] = [self.button.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            self.button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            self.button.heightAnchor.constraint(equalToConstant: 40),
            self.button.widthAnchor.constraint(equalToConstant: 190),
            self.redView.topAnchor.constraint(equalTo: self.button.bottomAnchor ,constant: 20),
            self.redView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant:-20),
            
            self.redView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            self.redView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            redViewHeightConstraint!,
            
            self.redView.widthAnchor.constraint(equalToConstant: 200)]
        
        
        self.addConstraints(constrains)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addToSuperview(Superview view:UIView){
        view.addSubview(self)

        NSLayoutConstraint.activate([centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
    }

    func buttonClick(){
//        1.直接更改redView的高度约束 失败
//        self.redView.heightAnchor.constraint(equalToConstant: 100)
        
//        2.获取self 约束数组中的 redVeiw高度约束 更改 成功
//        for constraint in self.constraints {
//            if constraint.firstItem as! NSObject == self.redView {
//                if constraint.firstAttribute == NSLayoutAttribute.height{
//                    constraint.constant = 100
//                }
//            }
//        }
        //3.把要更改的约束设置为属性 加入约束数组  更改成功
        redViewHeightConstraint?.constant = 100;
    }
    
    
    
    
    
    
    
}
