//c
//  Created by adong666666 on 2018/5/13.  Copyright © 2018年 adong666666. All rights reserved.
import UIKit

class SecondViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "12.jpg"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect(x: 160.fitScreen, y: 25.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "我的"
        label.textColor = UIColor.orange
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        return label
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.clear
        bt1.setTitle("协会", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.cyan.cgColor
        bt1.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt1
    }()
    var btn1: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 180.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.clear
        bt1.setTitle("活动经历", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.cyan.cgColor
        bt1.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt1
    }()
    var btn2: PowerButton = {
        let bt2 = PowerButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect (x: 0.fitScreen, y: 280.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt2.backgroundColor = UIColor.clear
        bt2.setTitle("成就", for: UIControlState())
        bt2.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt2.addTarget(self, action: #selector(ViewController.buttonTap2(_:)), for: UIControlEvents.touchUpInside)
        bt2.layer.masksToBounds = true
        bt2.layer.cornerRadius = 16
        bt2.layer.borderWidth = 2
        bt2.layer.borderColor = UIColor.cyan.cgColor
        bt2.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt2
    }()
    var btn3: PowerButton = {
        let bt3 = PowerButton(type: UIButtonType.roundedRect)
        bt3.frame = CGRect (x: 0.fitScreen, y: 380.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt3.backgroundColor = UIColor.clear
        bt3.setTitle("活动明细", for: UIControlState())
        bt3.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt3.addTarget(self, action: #selector(ViewController.buttonTap3(_:)), for: UIControlEvents.touchUpInside)
        bt3.layer.masksToBounds = true
        bt3.layer.cornerRadius = 16
        bt3.layer.borderWidth = 2
        bt3.layer.borderColor = UIColor.cyan.cgColor
        bt3.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt3
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 0.fitScreen, y: 480.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("帮助", for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.cyan.cgColor
        bt4.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt4
    }()
    var btn5: PowerButton = {
        let bt5 = PowerButton(type: UIButtonType.roundedRect)
        bt5.frame = CGRect (x: 0.fitScreen, y: 580.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt5.backgroundColor = UIColor.clear
        bt5.setTitle("问题与反馈", for: UIControlState())
        bt5.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt5.addTarget(self, action: #selector(ViewController.buttonTap5(_:)), for: UIControlEvents.touchUpInside)
        bt5.layer.masksToBounds = true
        bt5.layer.cornerRadius = 16
        bt5.layer.borderWidth = 2
        bt5.layer.borderColor = UIColor.cyan.cgColor
        bt5.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt5
    }()
    var btn6: PowerButton = {
        let bt6 = PowerButton(type: UIButtonType.roundedRect)
        bt6.frame = CGRect (x: 0.fitScreen, y: 680.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt6.backgroundColor = UIColor.clear
        bt6.setTitle("反馈", for: UIControlState())
        bt6.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt6.addTarget(self, action: #selector(ViewController.buttonTap6(_:)), for: UIControlEvents.touchUpInside)
        bt6.layer.masksToBounds = true
        bt6.layer.cornerRadius = 16
        bt6.layer.borderWidth = 2
        bt6.layer.borderColor = UIColor.cyan.cgColor
        bt6.setTitleColor(UIColor.lightGray, for: UIControlState())
        return bt6
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
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
    }
    @objc func buttonTap(_ button: UIButton) {
        self.present(NinteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap1(_ button: UIButton) {
        self.present(NinthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap2(_ button: UIButton) {
        self.present(TwentyfirstViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap3(_ button: UIButton) {
        self.present(TenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.present(TwelvethViewController(), animated: true, completion: nil)

    }
    @objc func buttonTap5(_ button: UIButton) {
        self.present(ThirteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap6(_ button: UIButton) {
        self.present(EleventhViewController(), animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
