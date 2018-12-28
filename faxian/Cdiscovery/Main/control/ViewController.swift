//b
//  Created by adong666666 on 2018/5/13.  Copyright © 2018年 adong666666. All rights reserved.
import UIKit

class PowerLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.shadowColor = UIColor.lightGray
        self.shadowOffset = CGSize(width: 1, height: 1)
        self.textAlignment = NSTextAlignment.center
        self.textColor = UIColor.white
        self.backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class PowerButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitleColor(UIColor.black, for: UIControlState())
        self.titleLabel?.font = UIFont(name: "Arial", size: 24)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public extension Double {
    var fitScreen: Double {
        return self/414.0 * Double(UIScreen.main.bounds.size.width)
    }
}
public extension Double {
    var fitHeight: Double {
        return self/737.0 * Double(UIScreen.main.bounds.size.height)
    }
}

class ViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "1.jpg"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect (x: 160.fitScreen, y: 25.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "发现"
        label.alpha = 0.7
        label.textColor = UIColor.red
        label.font = UIFont (name: "Arial", size: 24)
        return label
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.lightText
        bt1.setTitle("发起活动", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)),
                     for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.green.cgColor
        bt1.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt1
    }()
    var btn1: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 180.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.lightText
        bt1.setTitle("消息中心", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.green.cgColor
        bt1.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt1
    }()
    var btn2: PowerButton = {
        let bt2 = PowerButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect (x: 0.fitScreen, y: 280.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt2.backgroundColor = UIColor.lightText
        bt2.setTitle("未来计划", for: UIControlState())
        bt2.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt2.addTarget(self, action: #selector(ViewController.buttonTap2(_:)), for: UIControlEvents.touchUpInside)
        bt2.layer.masksToBounds = true
        bt2.layer.cornerRadius = 16
        bt2.layer.borderWidth = 2
        bt2.layer.borderColor = UIColor.green.cgColor
        bt2.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt2
    }()
    var btn3: PowerButton = {
        let bt3 = PowerButton(type: UIButtonType.roundedRect)
        bt3.frame = CGRect (x: 0.fitScreen, y: 380.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt3.backgroundColor = UIColor.lightText
        bt3.setTitle("修改密码", for: UIControlState())
        bt3.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt3.addTarget(self, action: #selector(ViewController.buttonTap3(_:)), for: UIControlEvents.touchUpInside)
        bt3.layer.masksToBounds = true
        bt3.layer.cornerRadius = 16
        bt3.layer.borderWidth = 2
        bt3.layer.borderColor = UIColor.green.cgColor
        bt3.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt3
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 0.fitScreen, y: 480.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt4.backgroundColor = UIColor.lightText
        bt4.setTitle("修改绑定手机", for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.green.cgColor
        bt4.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt4
    }()
    var btn5: PowerButton = {
        let bt5 = PowerButton(type: UIButtonType.roundedRect)
        bt5.frame = CGRect (x: 0.fitScreen, y: 580.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt5.backgroundColor = UIColor.lightText
        bt5.setTitle("网页助手", for: UIControlState())
        bt5.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt5.addTarget(self, action: #selector(ViewController.buttonTap5(_:)), for: UIControlEvents.touchUpInside)
        bt5.layer.masksToBounds = true
        bt5.layer.cornerRadius = 16
        bt5.layer.borderWidth = 2
        bt5.layer.borderColor = UIColor.green.cgColor
        bt5.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt5
    }()
    var btn6: PowerButton = {
        let bt6 = PowerButton(type: UIButtonType.roundedRect)
        bt6.frame = CGRect (x: 0.fitScreen, y: 680.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt6.backgroundColor = UIColor.lightText
        bt6.setTitle("扫一扫", for: UIControlState())
        bt6.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt6.addTarget(self, action: #selector(ViewController.buttonTap6(_:)), for: UIControlEvents.touchUpInside)
        bt6.layer.masksToBounds = true
        bt6.layer.cornerRadius = 16
        bt6.layer.borderWidth = 2
        bt6.layer.borderColor = UIColor.green.cgColor
        bt6.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt6
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(llabel)
        self.view.addSubview(btn)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        self.view.addSubview(btn4)
        self.view.addSubview(btn5)
        //self.view.addSubview(btn6)
        self.title = "发现"
        self.tabBarItem.image = UIImage(named: "3")
        self.view.backgroundColor = UIColor.white
        ViewController().tabBarController?.hidesBottomBarWhenPushed = false
        ViewController().tabBarController?.tabBar.isHidden = false
        ViewController().tabBarItem.accessibilityElementsHidden = false
        self.tabBarController?.hidesBottomBarWhenPushed = false
        self.tabBarController?.tabBar.isHidden = false
        self.tabBarItem.accessibilityElementsHidden = false
        
    }

    @objc func buttonTap(_ button: UIButton) {
        self.present(SixteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap1(_ button: UIButton) {
        self.present(SeventhViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap2(_ button: UIButton) {

        self.present(EighteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap3(_ button: UIButton) {

         self.present(EighthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.present(FourteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap5(_ button: UIButton) {
        let website = "http://www.huthelper.cn"
        let url = URL(string: website)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    @objc func buttonTap6(_ button: UIButton) {

    }
    @objc func buttonTap7(_ button: UIButton) {
        self.present(ViewController(), animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
