//j
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import DGElasticPullToRefresh
import Toaster

class NinthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imgView: UIImageView = {
        let v = UIImageView(image: UIImage(named: "32"))
        v.alpha = 0.2
        v.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return v
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
    var Label: PowerLabel = {
        let label = PowerLabel(frame: CGRect(x: 105.fitScreen, y: 25.fitHeight, width: 200.fitScreen, height: 40.fitHeight))
        label.text = "活动经历"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.red
        return label
    }()

    var activities = ["你参加了（计算机学院）“迎新晚会“！", "你参加了（学通社）“微笑祝语献工大”！", "你参加了（青志联）“陶冶爱心祝医”！",
                      "你参加了（羽协）”新生杯“！", "你参加了（护校队）”安全文明伴我行“！", "你参加了（外协）”Smiling day“！",
                      "你参加了（计算机联合会）“电脑义诊”！", "你参加了（校学生会）“走进食堂”！", "你参加了（校心理部）“文艺汇演大会”！",
                      "你参加了（球盟）“挑战杯”！", "你参加了（漫绘社）“绘画比赛”！", "你参加了（魔音社团）“beatbox”！"]
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn1)
        self.view.addSubview(Label)
        let frame1 = CGRect (x: 0.fitScreen, y: 60.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
        tableView = UITableView(frame: frame1)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        tableView.backgroundColor = UIColor.clear
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor.blue
        tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                self?.activities.insert("没有更新的活动了，赶紧去参加吧！", at: 0)
                self?.tableView.reloadData()
                self?.tableView.dg_stopLoading()
            }, loadingView: loadingView)
        //}, loadingView: nil)

        tableView.dg_setPullToRefreshFillColor(.cyan)
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        tableView.alpha = 0.6
        self.view.addSubview(tableView)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt  indexPath: IndexPath) -> CGFloat {
        return 56//单元格长度
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "reusedCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)

        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        }

        let rowNum = (indexPath as NSIndexPath).row
        cell?.textLabel?.text = activities[rowNum]
        //cell?.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        cell?.backgroundColor = UIColor.green
        cell?.imageView?.image = UIImage(named: "25")
        cell?.imageView?.highlightedImage = UIImage(named: "26")
        cell?.backgroundColor = UIColor.clear
        cell?.alpha = 0.1
        return cell!
    }

    deinit {
        tableView.dg_removePullToRefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
