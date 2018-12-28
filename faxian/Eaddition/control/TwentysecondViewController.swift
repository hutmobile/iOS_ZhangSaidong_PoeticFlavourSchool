//  Created by adong666666 on 2018/5/30.  Copyright © 2018年 adong666666. All rights reserved.
// 张赛东
import UIKit
import Alamofire
import SwiftyJSON

class AnimationController: UIViewController {
    let home_url =  "https://api.cloudfox.ltd/index.php/home/index/home"
    var btn = { () -> UIButton in
        let bt1 = UIButton(frame: CGRect(x: 190.fitScreen, y: 600.fitHeight, width: 60.fitScreen, height: 60.fitHeight))
        bt1.backgroundColor = UIColor.lightText
        bt1.layer.cornerRadius = 30
        bt1.setTitleColor(UIColor.orange, for: .normal)
        bt1.setTitle("X", for: .normal)
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 28)
        bt1.addTarget(self, action: #selector(AnimationController.dismissViewController(_:)), for: .touchUpInside)
        return bt1
    }()
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "50.jpg"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    var btn2: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 140.fitScreen, y: 120.fitHeight, width: 160.fitScreen, height: 250.fitHeight)
        let image3 = UIImage(named: "0.jpg")
        bt1.setBackgroundImage(image3, for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        bt1.alpha = 1
        return bt1
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 95.fitScreen, y: 420.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("享受生活", for: UIControlState())
        bt4.setTitleColor(UIColor.lightGray, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap3(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.clear.cgColor
        return bt4
    }()
    var label: PowerLabel = {
        let frame1 = CGRect (x: 95.fitScreen, y: 460.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "分数 ： 24分"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.darkText
        return label
    }()
    var labelx: PowerLabel = {
        let frame2 = CGRect (x: 95.fitScreen, y: 500.fitHeight, width: 250.fitScreen, height: 30.fitHeight)
        let label = PowerLabel(frame: frame2)
        label.text = "成就数 ： 12"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.darkText
        return label
    }()
    var label1 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 157.fitScreen , y: 300.fitHeight, width: 200.fitScreen, height: 40.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 40)
        label.textColor = UIColor.black
        return label
    }()
    var label2 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 77.fitScreen, y: 325.fitHeight, width: 400.fitScreen, height: 25.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 24)
        return label
    }()
    var label3 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x:157.fitScreen , y: 350.fitHeight, width: 400.fitScreen, height: 25.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 24)
        return label
    }()
    var label4 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x:77.fitScreen , y: 375.fitHeight, width: 400.fitScreen, height: 25.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 24)
        return label
    }()
    var label5 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 157.fitScreen, y: 400.fitHeight, width: 200.fitScreen, height: 40.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 32)
        label.textColor = UIColor.black
        return label
    }()
    var label6 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 77.fitScreen , y: 425.fitHeight, width: 400.fitScreen, height: 25.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 24)
        return label
    }()
    var label7 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 157.fitScreen, y: 450.fitHeight, width: 200.fitScreen, height: 40.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 32)
        label.textColor = UIColor.black
        return label
    }()
    var label8 : UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 92.fitScreen, y: 475.fitHeight, width: 400.fitScreen, height: 25.fitHeight)
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "#404040", size: 24)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(btn2)
        self.view.addSubview(imgView)
        self.view.addSubview(btn4)
        self.view.addSubview(label)
        self.view.addSubview(labelx)
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(btn)
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        self.view.addSubview(label3)
        self.view.addSubview(label4)
        self.view.addSubview(label5)
        self.view.addSubview(label6)
        self.view.addSubview(label7)
        self.view.addSubview(label8)
        //networktool()
    }
    /*func network(){
        let url = home_url
        Alamofire.request(url).responseJSON{(response) in
            guard response.result.isSuccess else{
                print("not successful")
                return
            }
            if let value = response.result.value{
                let json = JSON(value)
                if let Json = json.dictionary{
                    print(json)
                    if let SLBArray = Json["show_list_before"]?.arrayObject{
                        var rows = show_list_before()
                        for item in SLBArray{
                            let m = show_list_before.deserialize(from: item as? NSDictionary)
                            rows = m!
                            self.label7.text = rows.big_title
                            self.label8.text = rows.small_title
                        }
                    }
                    if let SLAArray = Json["show_list_after"]?.arrayObject{
                        var rows = show_list_after()
                        for item in SLAArray{
                            let m = show_list_after.deserialize(from: item as? NSDictionary)
                            rows = m!
                            self.label3.text = rows.big_title
                            self.label4.text = rows.small_title
                        }
                    }
                }
            }
        }
    }*/
    
    func networktool(){
        let url = home_url
        Alamofire.request(url).responseJSON
            { response in
                debugPrint(response)
                
                if let json2 = response.result.value
                {
                    print("JSON: \(json2)")
                    let json = JSON(json2)
                    let aaa = json["show_list_after"][0]["big_title"].rawString()
                    let bbb = json["show_list_after"][0]["small_title"].rawString()
                    let ccc = json["show_list_before"][0]["big_title"].rawString()
                    let ddd = json["show_list_before"][0]["small_title"].rawString()
                    let eee = json["show_list_before"][1]["big_title"].rawString()
                    let fff = json["show_list_before"][1]["small_title"].rawString()
                    let ggg = json["show"]["big_title"].rawString()
                    let hhh = json["show"]["small_title"].rawString()
                    self.label3.text = aaa
                    self.label4.text = bbb
                    self.label1.text = ccc
                    self.label2.text = ddd
                    self.label7.text = eee
                    self.label8.text = fff
                    self.label5.text = ggg
                    self.label6.text = hhh
                }
        }
    }
    
    @objc func dismissViewController(_ btn: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func buttonTap(_ button: UIButton) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
