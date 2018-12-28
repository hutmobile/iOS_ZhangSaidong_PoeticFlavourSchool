//
//  Created by adong666666 on 2018/5/28. Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import DateTimePicker

class EighteenthViewController: UIViewController {
    var imgView: UIImageView = {
        let view1 = UIImageView(image: UIImage(named: "23.jpg"))
        view1.alpha = 0.2
        view1.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view1
    }()
    var btn1: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 20.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "14"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        bt1.alpha = 0.6
        return bt1
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        let image3 = UIImage(named: "23.jpg")
        bt1.setBackgroundImage(image3, for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.alpha = 0.2
        bt1.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 86.fitScreen, y: 336.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        bt4.backgroundColor = UIColor.cyan
        bt4.setTitle("设定活动提示时间", for: UIControlState())
        bt4.setTitleColor(UIColor.blue, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(EighteenthViewController.showDateTimePicker), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.lightText.cgColor
        bt4.alpha = 0.5
        return bt4
    }()
    var ttextField: PowertextField = {
        let frame1 = CGRect (x: 86.fitScreen, y: 280.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        let textField = PowertextField(frame: frame1)
        textField.attributedPlaceholder = NSAttributedString.init(string: "活动名称", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField.attributedPlaceholder = NSAttributedString.init(string: "活动名称", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.blue])
        textField.setValue(UIColor.blue, forKeyPath: "_placeholderLabel.textColor")
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 31))
        textField.rightViewMode = .always
        textField.backgroundColor = UIColor.lightText
        textField.alpha = 0.5
        textField.textColor = UIColor.orange
        textField.keyboardType = UIKeyboardType.default
        return textField
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn)
        self.view.addSubview(btn1)
        self.view.addSubview(btn4)
        self.view.addSubview(ttextField)
    }

    @objc func showDateTimePicker() {
        let min = Date().addingTimeInterval(-60 * 60 * 24 * 4)
        let max = Date().addingTimeInterval(60 * 60 * 24 * 4)
        let picker = DateTimePicker.show(minimumDate: min, maximumDate: max)
        picker.backgroundViewColor = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0, alpha: 0.5)
        picker.highlightColor = UIColor.orange
        picker.doneButtonTitle = "确认设定"
        picker.cancelButtonTitle = "取消"
        picker.todayButtonTitle = "今天"
        picker.completionHandler = { date in
            print(date)
        }
    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss( animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
