//i
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import Toaster
import PasswordTextField

class PPowerTextField: PasswordTextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alpha=1
        self.font = UIFont(name: "Arial", size: 24)
        self.textColor = UIColor.white
        self.autocorrectionType = UITextAutocorrectionType.no
        self.returnKeyType = UIReturnKeyType.done
        self.clearButtonMode = UITextFieldViewMode.whileEditing
        self.keyboardType = UIKeyboardType.numberPad
        self.keyboardAppearance = UIKeyboardAppearance.light
        self.delegate = self as? UITextFieldDelegate
        self.textAlignment = NSTextAlignment.center
        self.backgroundColor = UIColor.clear
        self.showButtonWhile = .Always
        self.customShowSecureTextImage = UIImage(named: "27")
        self.customHideSecureTextImage = UIImage(named: "28")
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class EighthViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "24.jpg"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        let image3 = UIImage(named: "24.jpg")
        bt1.setBackgroundImage(image3, for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.alpha = 0.2
        bt1.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var btn1: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 20.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "14"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect (x: 105.fitScreen, y: 25.fitHeight, width: 200.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "修改密码"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.green
        return label
    }()
    var ttextField: PPowerTextField = {
        let frame1 = CGRect (x: 60.fitScreen, y: 240.fitHeight, width: 300.fitScreen, height: 60.fitHeight)
        let textField = PPowerTextField(frame: frame1)
        textField.attributedPlaceholder = NSAttributedString.init(string: "请输入初始密码", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField.attributedPlaceholder = NSAttributedString.init(string: "请输入初始密码", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.darkText])
        textField.setValue(UIColor.darkText, forKeyPath: "_placeholderLabel.textColor")
        let frame2 = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 10.fitScreen, height: 31.fitHeight)
        textField.rightView = UIView(frame: frame2)
        textField.rightViewMode = .always
        textField.textColor = UIColor.darkText
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.backgroundColor = UIColor.lightText
        textField.showButtonWhile = .Always
        textField.customShowSecureTextImage = UIImage(named: "27")
        textField.customHideSecureTextImage = UIImage(named: "28")
        textField.keyboardType = UIKeyboardType.default
        textField.alpha = 0.6
        return textField
    }()
    var ttextField1: PPowerTextField = {
        let frame1 = CGRect (x: 60.fitScreen, y: 300.fitHeight, width: 300.fitScreen, height: 60.fitHeight)
        let textField1 = PPowerTextField(frame: frame1)
        textField1.attributedPlaceholder = NSAttributedString.init(string: "请输入6～16位新密码", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField1.attributedPlaceholder = NSAttributedString.init(string: "请输入6～16位新密码", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.darkText])
        textField1.setValue(UIColor.darkText, forKeyPath: "_placeholderLabel.textColor")
        let frame2 = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 10.fitScreen, height: 31.fitHeight)
        textField1.rightView = UIView(frame: frame2)
        textField1.rightViewMode = .always
        textField1.textColor = UIColor.darkText
        textField1.borderStyle = UITextBorderStyle.roundedRect
        textField1.backgroundColor = UIColor.lightText
        textField1.keyboardType = UIKeyboardType.default
        textField1.alpha = 0.6
        return textField1
    }()
    var ttextField2: PPowerTextField = {
        let frame1 = CGRect (x: 60.fitScreen, y: 360.fitHeight, width: 300.fitScreen, height: 60.fitHeight)
        let textField1 = PPowerTextField(frame: frame1)
        textField1.attributedPlaceholder = NSAttributedString.init(string: "请确认6～16位新密码", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField1.attributedPlaceholder = NSAttributedString.init(string: "请确认6～16位新密码", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.darkText])
        textField1.setValue(UIColor.darkText, forKeyPath: "_placeholderLabel.textColor")
        let frame2 = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 10.fitScreen, height: 31.fitHeight)
        textField1.rightView = UIView(frame: frame2)
        textField1.rightViewMode = .always
        textField1.textColor = UIColor.darkText
        textField1.borderStyle = UITextBorderStyle.roundedRect
        textField1.backgroundColor = UIColor.lightText
        textField1.keyboardType = UIKeyboardType.default
        textField1.alpha = 0.6
        return textField1
    }()

    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 95.fitScreen, y: 460.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        bt4.backgroundColor = UIColor.lightText
        bt4.setTitle("确认", for: UIControlState())
        bt4.setTitleColor(UIColor.gray, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.lightText.cgColor
        return bt4
    }()
    var aalert: UIAlertController = {
        let alert = UIAlertController(title: "恭喜", message: "密码修改成功了哦", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "确认", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(OKAction)
        return alert
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn)
        self.view.addSubview(btn1)
        self.view.addSubview(btn4)
        self.view.addSubview(llabel)
        self.view.addSubview(ttextField)
        self.view.addSubview(ttextField1)
        self.view.addSubview(ttextField2)
        ToastView.appearance().backgroundColor = UIColor.white
        ToastView.appearance().textColor = UIColor.magenta
        ToastView.appearance().font = UIFont(name: "Arial", size: 24)
        ToastView.appearance().textInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        ToastView.appearance().cornerRadius = 30
        ToastView.appearance().bottomOffsetPortrait = 580
        Toast(text: "温馨提示，请慎重修改密码哦！").show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func buttonTap(_ button: UIButton) {
        self.dismiss( animated: true, completion: nil)
    }
    @objc func buttonTap1(_ button: UIButton) {
        self.present(aalert, animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.view.endEditing(true)
    }
}
