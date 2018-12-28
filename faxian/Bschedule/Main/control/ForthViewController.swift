//e
//  Created by adong666666 on 2018/5/24. Copyright © 2018年 adong666666. All rights reserved.
//这里写了五个页面
import UIKit
import TwicketSegmentedControl
import DGElasticPullToRefresh
import Toaster

class ForthViewController: UIViewController, TwicketSegmentedControlDelegate, UITableViewDelegate, UITableViewDataSource {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "11.jpg"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        return view
    }()
    var imageView: UIImageView!
    var activities = ["（计算机学院）“迎新晚会“！", "（学通社）“微笑祝语献工大”！", "（青志联）“陶冶爱心祝医”！",
                      "（羽协）”新生杯“！", "（护校队）”安全文明伴我行“！", "（外协）”Smiling day“！",
                      "（计算机联合会）“电脑义诊”！", "（校学生会）“走进食堂”！", "（校心理部）“文艺汇演大会”！",
                      "（球盟）“挑战杯”！", "（漫绘社）“绘画比赛”！", "（魔音社团）“beatbox”！"]
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "日程"
        self.tabBarItem.image = UIImage(named: "4")
        self.view.backgroundColor = UIColor.white
        //self.view.addSubview(imgView)
        let frame1 = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        self.imageView = UIImageView(frame: frame1)
        self.imageView.image = UIImage(named: "11")
        self.imageView.alpha = 0.2
        self.view.addSubview(self.imageView)

        let titles = ["发布的", "签到的", "报名的", "关注的", "管理的"]
        //let frame = CGRect(x: 5, y: 40, width: view.frame.width - 10, height: 40)
        let frame = CGRect(x: 5.fitScreen, y:30.fitHeight, width:404.fitScreen, height: 40.fitHeight)
        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        segmentedControl.defaultTextColor = .gray
        segmentedControl.highlightTextColor = .white
        segmentedControl.sliderBackgroundColor = .orange
        segmentedControl.move(to: 2)
        //segmentedControl.delegate = self as? TwicketSegmentedControlDelegate
        segmentedControl.delegate = self
        self.view.addSubview(segmentedControl)
        self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        self.view.addSubview(self.imageView)
        let frame2 = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
        tableView = UITableView(frame: frame2)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        tableView.backgroundColor = UIColor.lightText
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor.purple
        tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                self?.activities.insert("没有最近报名活动，赶紧去报名吧！", at: 0)
                self?.tableView.reloadData()
                self?.tableView.dg_stopLoading()
            }, loadingView: loadingView)
        //}, loadingView: nil)

        tableView.dg_setPullToRefreshFillColor(.cyan)
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        tableView.alpha = 0.7
        self.view.addSubview(tableView)
        ToastView.appearance().backgroundColor = UIColor.white
        ToastView.appearance().textColor = UIColor.blue
        ToastView.appearance().font = UIFont(name: "Arial", size: 24)
        ToastView.appearance().textInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        ToastView.appearance().cornerRadius = 30
        ToastView.appearance().bottomOffsetPortrait = 296
        Toast(text: "下拉可以刷新哟，相信不会丢失任何一个你所报名的活动哦！").show()
    }
    func didSelect(_ segmentIndex: Int) {
        if segmentIndex == 0 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "45")
            self.view.addSubview(self.imageView)
            self.view.addSubview(tableView)
        } else if segmentIndex == 1 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "40")
            self.view.addSubview(self.imageView)
            self.view.addSubview(tableView)
        } else if segmentIndex == 2 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "11")
            self.imageView.alpha = 0.2
            self.view.addSubview(self.imageView)
            let frame1 = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
            tableView = UITableView(frame: frame1)
            tableView.delegate = self
            tableView.dataSource = self
            //tableView.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
            tableView.backgroundColor = UIColor.lightText
            let loadingView = DGElasticPullToRefreshLoadingViewCircle()
            loadingView.tintColor = UIColor.purple
            tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                    self?.activities.insert("没有最新报名活动，赶紧去参加吧！", at: 0)
                    self?.tableView.reloadData()
                    self?.tableView.dg_stopLoading()
                }, loadingView: loadingView)
            //}, loadingView: nil)

            tableView.dg_setPullToRefreshFillColor(.cyan)
            tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
            tableView.alpha = 0.7
            self.view.addSubview(tableView)
        } else if segmentIndex == 3 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "43")
            self.view.addSubview(self.imageView)
            self.view.addSubview(tableView)

        } else if segmentIndex == 4 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "48")
            self.view.addSubview(self.imageView)
            self.view.addSubview(tableView)
        }
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
        cell?.imageView?.image = UIImage(named: "46")
        cell?.imageView?.highlightedImage = UIImage(named: "47")
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

}
