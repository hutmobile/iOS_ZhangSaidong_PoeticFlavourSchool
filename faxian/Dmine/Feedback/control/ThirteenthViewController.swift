//n
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.
//35
import UIKit
import Toaster

class ThirteenthViewController: UIViewController {
    var webView: UIWebView!
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "39"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view
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
    var btn: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 95.fitScreen, y: 270.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("提交问题", for: UIControlState())
        bt4.setTitleColor(UIColor.black, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
       // bt4.addTarget(self, action: #selector(ThirteenthViewController.saveNote), for: .touchUpInside)
        bt4.addTarget(self, action: #selector(ThirteenthViewController.sucessAlert(_:)), for: .touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.alpha = 0.6
        bt4.layer.borderColor = UIColor.lightText.cgColor
        return bt4
    }()
    var ttextField: PowertextField = {
        let frame1 = CGRect(x: 120.fitScreen, y: 220.fitHeight, width: 200.fitScreen, height: 30.fitHeight)
        let textField = PowertextField(frame: frame1)
        textField.attributedPlaceholder = NSAttributedString.init(string: "您的联系方式", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField.attributedPlaceholder = NSAttributedString.init(string: "您的联系方式", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.black])
        textField.setValue(UIColor.black, forKeyPath: "_placeholderLabel.textColor")
        let frame2 = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 10.fitScreen, height: 31.fitHeight)
        textField.rightView = UIView(frame: frame2)
        textField.rightViewMode = .always
        textField.alpha = 0.6
        textField.textColor = UIColor.darkText
        textField.keyboardType = UIKeyboardType.numbersAndPunctuation
        return textField
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect(x: 136.fitScreen, y: 25.fitHeight, width: 150.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "问题与反馈"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.green
        return label
    }()
    var llabel2: PowerLabel = {
        let frame1 = CGRect(x: 20.fitScreen, y: 220.fitHeight, width: 400.fitScreen, height: 30.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "________________"
        label.alpha = 0.7
        label.font = UIFont (name: "Arial", size: 24)
        label.shadowColor = UIColor.white
        return label
    }()
    var btn2: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        let image3 = UIImage(named: "39.jpg")
        bt1.setBackgroundImage(image3, for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.alpha = 0.2
        bt1.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn2)
        self.view.addSubview(btn1)
        self.view.addSubview(llabel)
        //let bounds = UIScreen.main.bounds
        //webView = UIWebView(frame: CGRect(x: 0, y: 300, width: bounds.width, height: bounds.height-300))
        let frame3 = CGRect (x: 0.fitScreen, y: 300.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        webView = UIWebView(frame: frame3)
        webView.scrollView.showsVerticalScrollIndicator = true
        webView.alpha = 0.4
        self.view.addSubview(webView)
        let path = Bundle.main.path(forResource: "NoteBook", ofType: "html")
        let url = URL(string: path!)
        webView.loadRequest(NSURLRequest(url: url!) as URLRequest)
        self.view.addSubview(btn)
        self.view.addSubview(ttextField)
        self.view.addSubview(llabel2)
        ToastView.appearance().backgroundColor = UIColor.clear
        ToastView.appearance().textColor = UIColor.magenta
        ToastView.appearance().font = UIFont(name: "Arial", size: 24)
        ToastView.appearance().textInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        ToastView.appearance().cornerRadius = 30
        ToastView.appearance().bottomOffsetPortrait = 366
        ToastView.appearance().alpha = 0.1
        Toast(text: "这里可以书写您的问题、反馈或意见哦！感谢您对我们工作的支持").show()
    }
    @objc func saveNote() {
        let note = webView.stringByEvaluatingJavaScript(from: "getNote()")
        print(note ?? true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss( animated: true, completion: nil)
    }
    @objc func sucessAlert(_ sender: AnyObject) {
        _ = SweetAlert().showAlert("谢谢您", subTitle: "已成功提交", style: AlertStyle.success)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.view.endEditing(true)
    }
}
