//
//  ExampleOneView.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/5.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ExampleOneView: ExampleOneBaseView,UITextFieldDelegate{
    
    private var titleLabel : UILabel = {
       let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.orange
        label.numberOfLines = 0
        label.textAlignment = NSTextAlignment.center
        label.font = .preferredFont(forTextStyle: .callout)
        return label
    }()
    
    private var subtitleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.purple
        label.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.callout)
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    private var detailsButton : UIButton = {
        let button = UIButton(type:UIButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("复原", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = UIColor.lightGray
        button.layer.cornerRadius = 3
        return button
    }()
    
    init(superView : UIView) {
        super.init()
        configure()
        updateContents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Should not call init(coder:)")
    }
    
    required init(frame: CGRect) {
        fatalError("init(frame:) has not been implemented")
    }
    
    private func updateContents(){
        titleLabel.text = "中国 电子批发市场中国 龙岗区 横岗街道"
        subtitleLabel.text = "广东省深圳市"
    }
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(detailsButton)
        detailsButton.addTarget(self, action: #selector(didTapDetailsButton(_:)), for: UIControlEvents.touchUpInside)
        
        //这里添加约束
        //三个控件从底部到顶部 依次是button - titleLabel - subtitleLabel
        //
        let views:[String:UIView] = [
            "titleLabel": titleLabel,
            "subtitleLabel": subtitleLabel,
            "detailsButton" : detailsButton
        ]
        
        let vflStrings = [
            "V:|[titleLabel][subtitleLabel][detailsButton]|",
            "H:|[titleLabel(<=300@750)]|",
            "H:|[subtitleLabel]|",
            "H:|[detailsButton]|"
        ]
        
        for vfl in vflStrings {
            contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: vfl, options: NSLayoutFormatOptions.alignAllCenterX, metrics: nil, views: views))
        }
        
    }
    
    
    
    
    func didTapDetailsButton(_ sender: UIButton) {
        self.updateContents()
        print("didTapDetailsButton")
    }
    
    
    //uitextfeild delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField.tag {
        case 100:
            titleLabel.text = textField.text
            break
        case 200:
            subtitleLabel.text = textField.text
            break
        default: break
            
        }
        print("\(textField.text)")
    }
    
}
