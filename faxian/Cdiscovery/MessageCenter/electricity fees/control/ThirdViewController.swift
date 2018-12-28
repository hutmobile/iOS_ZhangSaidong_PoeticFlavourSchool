//d
//  Created by 604 on 2018/4/21. Copyright  2018年 zhangsaidong. All rights reserved.
import UIKit

class PowertextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alpha=1
        self.font = UIFont(name: "Arial", size: 24)
        self.textColor = UIColor.white
        self.autocorrectionType = UITextAutocorrectionType.no
        self.clearButtonMode = UITextFieldViewMode.whileEditing
        self.keyboardAppearance = UIKeyboardAppearance.light
        self.delegate = self as? UITextFieldDelegate
        self.textAlignment = NSTextAlignment.center
        self.backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class PprogressView: UIProgressView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.progressViewStyle = UIProgressViewStyle.bar
        self.progressViewStyle = UIProgressViewStyle.default
        self.progress = 1
        self.progressTintColor = UIColor.white
        self.trackTintColor = UIColor.white
        self.progressImage = UIImage(named: "a10")
        self.trackImage = UIImage(named: "a10")
        self.setProgress(1, animated: true)
        self.contentMode = .scaleAspectFit
        self.transform = CGAffineTransform(scaleX: 1.0, y: 10.0)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 45
        self.alpha = 0.5
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ThirdViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "a7.jpg"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        let image3 = UIImage(named: "a7.jpg")
        bt1.setBackgroundImage(image3, for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var btn1: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 20.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "b11"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var btn2: PowerButton = {
        let bt2 = PowerButton(type: UIButtonType.roundedRect)
        let rect8 = CGRect (x: 333.fitScreen, y: 543.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
        bt2.frame = rect8
        let image1 = UIImage(named: "b9")
        bt2.setBackgroundImage(image1, for: UIControlState())
        bt2.setTitle(" ", for: UIControlState())
        bt2.setTitleColor(UIColor.white, for: UIControlState())
        bt2.titleLabel?.font = UIFont(name: "Arial", size: 22)
        bt2.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        return bt2
    }()
    var btn3: PowerButton = {
        let bt3 = PowerButton(type: UIButtonType.roundedRect)

        bt3.frame = CGRect (x: 333.fitScreen, y: 508.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
        let image2 = UIImage(named: "b9")
        bt3.setBackgroundImage(image2, for: UIControlState())
        bt3.setTitle(" ", for: UIControlState())
        bt3.titleLabel?.font = UIFont(name: "Arial", size: 22)
        bt3.addTarget(self, action: #selector(ViewController.buttonTap2(_:)), for: UIControlEvents.touchUpInside)
        return bt3
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 95.fitScreen, y: 420.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("查询", for: UIControlState())
        bt4.setTitleColor(UIColor.white, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap3(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.lightText.cgColor
        return bt4
    }()

    var llabel: PowerLabel = {
        let frame1 = CGRect (x: 160.fitScreen, y: 25.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "电费查询"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        return label
    }()
    var llabel2: PowerLabel = {
        let frame1 = CGRect (x: 20.fitScreen, y: 500.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label2 = PowerLabel(frame: frame1)
        label2.text = "今天"
        label2.alpha = 0.7
        label2.font = UIFont (name: "Arial", size: 20)
        return label2
    }()
    var llabel3: PowerLabel = {
        let frame1 = CGRect (x: 20.fitScreen, y: 535.fitHeight, width: 200.fitScreen, height: 40.fitHeight)
        let label3 = PowerLabel (frame: frame1)
        label3.text = "宿舍开空调了吗"
        label3.alpha = 0.7
        label3.font = UIFont (name: "Arial", size: 20)
        return label3
    }()
    var llabel4: PowerLabel = {
        let frame1 = CGRect (x: 250.fitScreen, y: 500.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label4 = PowerLabel(frame: frame1)
        label4.text = "开了"
        label4.alpha = 0.8
        label4.font = UIFont(name: "Arial", size: 22)
        return label4
    }()
    var llabel5: PowerLabel = {
        let frame1 = CGRect (x: 250.fitScreen, y: 535.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label5 = PowerLabel(frame: frame1)
        label5.text = "没开"
        label5.alpha = 0.8
        label5.font = UIFont (name: "Arial", size: 22)
        return label5
    }()
    var llabel6: PowerLabel = {
        let frame1 = CGRect (x: 20.fitScreen, y: 600.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label6 = PowerLabel(frame: frame1)
        label6.text = "开了"
        label6.alpha = 0.8
        label6.font = UIFont (name: "Arial", size: 22)
        return label6
    }()
    var llabel7: PowerLabel = {
        let frame1 = CGRect (x: 20.fitScreen, y: 635.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label7 = PowerLabel(frame: frame1)
        label7.text = "没开"
        label7.alpha = 0.8
        label7.font = UIFont (name: "Arial", size: 22)
        return label7
    }()
    var llabel8: PowerLabel = {
        let frame1 = CGRect (x: 95.fitScreen, y: 294.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        let label8 = PowerLabel(frame: frame1)
        label8.text = "______________"
        label8.alpha = 0.7
        label8.font = UIFont (name: "Arial", size: 24)
        label8.shadowColor = UIColor.white
        return label8
    }()
    var llabel9: PowerLabel = {
        let frame1 = CGRect (x: 95.fitScreen, y: 350.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        let label9 = PowerLabel(frame: frame1)
        label9.text = "______________"
        label9.alpha = 0.7
        label9.font = UIFont (name: "Arial", size: 24)
        label9.shadowColor = UIColor.white
        return label9
    }()

    var ttextField: PowertextField = {
        let frame1 = CGRect (x: 120.fitScreen, y: 280.fitHeight, width: 200.fitScreen, height: 30.fitHeight)
        let textField = PowertextField(frame: frame1)
        textField.attributedPlaceholder = NSAttributedString.init(string: "宿舍楼栋", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField.attributedPlaceholder = NSAttributedString.init(string: "宿舍楼栋", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.white])
        textField.setValue(UIColor.white, forKeyPath: "_placeholderLabel.textColor")

        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 31))
        textField.rightViewMode = .always
        return textField
    }()
    var ttextField1: PowertextField = {
        let frame1 = CGRect (x: 120.fitScreen, y: 340.fitHeight, width: 200.fitScreen, height: 30.fitHeight)
        let textField1 = PowertextField(frame: frame1)
        textField1.attributedPlaceholder = NSAttributedString.init(string: "寝室号", attributes:
            [kCTFontAttributeName as NSAttributedStringKey: UIFont.systemFont(ofSize: 15)])
        textField1.attributedPlaceholder = NSAttributedString.init(string: "寝室号", attributes:
            [kCTForegroundColorAttributeName as NSAttributedStringKey: UIColor.white])
        textField1.setValue(UIColor.white, forKeyPath: "_placeholderLabel.textColor")
        textField1.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 31))
        textField1.rightViewMode = .always
        return textField1
    }()

    var pprogressView: PprogressView = {
        let frame1 = CGRect (x: 55.fitScreen, y: 619.fitHeight, width: 260.fitScreen, height: 500.fitHeight)
        let progressView = PprogressView(frame: frame1)
        return progressView
    }()
    var pprogressView1: PprogressView = {
        let frame1 = CGRect (x: 55.fitScreen, y: 654.fitHeight, width: 260.fitScreen, height: 500.fitHeight)
        let progressView1 = PprogressView(frame: frame1)
        return progressView1
    }()

    var aalert3: UIAlertController = {
        let alert = UIAlertController(title: "查询失败", message: "输入的信息有误", preferredStyle: UIAlertControllerStyle.alert)
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
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        self.view.addSubview(btn4)
        self.view.addSubview(llabel)
        self.view.addSubview(llabel2)
        self.view.addSubview(llabel3)
        self.view.addSubview(llabel4)
        self.view.addSubview(llabel5)
        self.view.addSubview(llabel6)
        self.view.addSubview(llabel7)
        self.view.addSubview(llabel8)
        self.view.addSubview(llabel9)
        self.view.addSubview(ttextField)
        self.view.addSubview(ttextField1)
        self.view.addSubview(pprogressView)
        self.view.addSubview(pprogressView1)
        self.title = "电费查询"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @objc func buttonTap(_ button: UIButton) {
         let aalert: UIAlertController = {
         let alert = UIAlertController(title: "信息", message: "您要离开本界面吗?", preferredStyle: UIAlertControllerStyle.alert)
         let yes = UIAlertAction(title: "确认", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print("离开")

         self.present(ViewController(), animated: true, completion: nil)

         })
         let no = UIAlertAction(title: "取消", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print("留下")})

         alert.addAction(yes)
         alert.addAction(no)
         return alert
         }()
         self.present(aalert, animated: true, completion: nil)
    }
    @objc func buttonTap1(_ button: UIButton) {
        let aalert: UIAlertController = {
            let alert = UIAlertController(title: "没开空调(提交后点击屏幕可查看结果)", message: "您确认要提交了吗?", preferredStyle: UIAlertControllerStyle.actionSheet)
            let qqueren: UIAlertAction = {
                let queren = UIAlertAction(title: "确认", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print ("提交")
                    let img = UIImage(named: "b8")
                    let imgV = UIImageView (image: img)
                    imgV.alpha=1
                    imgV.frame = CGRect(x: 333.fitScreen, y: 543.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    imgV.contentMode = .scaleAspectFit
                    self.view.addSubview(imgV)
                    let bt2 = PowerButton(type: UIButtonType.roundedRect)
                    bt2.frame = CGRect (x: 333.fitScreen, y: 508.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    let image = UIImage(named: "b9")
                    bt2.setBackgroundImage(image, for: UIControlState())
                    bt2.alpha = 1
                    self.view.addSubview(bt2)
                    let bt1 = PowerButton(type: UIButtonType.roundedRect)
                    bt1.frame = CGRect (x: 333.fitScreen, y: 543.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    let image1 = UIImage(named: "b9")
                    bt1.setBackgroundImage(image1, for: UIControlState())
                    bt1.alpha = 1
                    self.view.addSubview(bt1)
                })
                return queren
            }()
            let quxiao = UIAlertAction(title: "取消", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print ("不提交")})
            let likai = UIAlertAction(title: "离开", style: UIAlertActionStyle.cancel, handler: {(_: UIAlertAction) -> Void in print("离开")})
            alert.addAction(qqueren)
            alert.addAction(quxiao)
            alert.addAction(likai)
            return alert
        }()
        self.present(aalert, animated: true, completion: nil)
    }
    @objc func buttonTap2(_ button: UIButton) {
        let aalert1: UIAlertController = {
            let alert = UIAlertController(title: "开空调了(提交后点击屏幕可查看结果)", message: "您确认要提交了吗?", preferredStyle: UIAlertControllerStyle.actionSheet)
            let qqueren: UIAlertAction = {
                let queren = UIAlertAction(title: "确认", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print ("提交")
                    let img = UIImage(named: "b8")
                    let imgV = UIImageView (image: img)
                    imgV.alpha=1
                    imgV.frame = CGRect(x: 333.fitScreen, y: 508.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    imgV.contentMode = .scaleAspectFit
                    self.view.addSubview(imgV)
                    let bt2 = PowerButton(type: UIButtonType.roundedRect)
                    bt2.frame = CGRect (x: 333.fitScreen, y: 508.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    let image = UIImage(named: "b9")
                    bt2.setBackgroundImage(image, for: UIControlState())
                    bt2.alpha = 1
                    self.view.addSubview(bt2)
                    let bt1 = PowerButton(type: UIButtonType.roundedRect)
                    bt1.frame = CGRect (x: 333.fitScreen, y: 543.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
                    let image1 = UIImage(named: "b9")
                    bt1.setBackgroundImage(image1, for: UIControlState())
                    bt1.alpha = 1
                    self.view.addSubview(bt1)
                })
                return queren
            }()
            let quxiao = UIAlertAction(title: "取消", style: UIAlertActionStyle.default, handler: {(_: UIAlertAction) -> Void in print ("不提交")})
            let likai = UIAlertAction(title: "离开", style: UIAlertActionStyle.cancel, handler: {(_: UIAlertAction) -> Void in print("离开")})
            alert.addAction(qqueren)
            alert.addAction(quxiao)
            alert.addAction(likai)
            return alert
        }()
        self.present(aalert1, animated: true, completion: nil)
    }
    @objc func buttonTap3(_ button: UIButton) {
        self.present(aalert3, animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
