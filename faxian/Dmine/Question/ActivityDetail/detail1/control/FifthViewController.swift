//k
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import Charts

class FifthViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "36"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
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
    var llabel: PowerLabel = {
        let frame1 = CGRect(x: 133.fitScreen, y: 25.fitHeight, width: 150.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "活动明细一"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.orange
        return label
    }()
    var charts = { () -> LineChartView in
        let values1: [Double] = [30, 21, 30, 16, 40, 25 ]
        let values2: [Double] = [60, 90, 71, 80, 100, 100]
        let values3: [Double] = [5, 7, 14, 8, 15, 10]

        var entries1: [ChartDataEntry] = Array()
        var entries2: [ChartDataEntry] = Array()
        var entries3: [ChartDataEntry] = Array()

        for (iii, value) in values1.enumerated() {
            entries1.append(ChartDataEntry(x: Double(iii), y: value))
        }

        for (iii, value) in values2.enumerated() {
            entries2.append(ChartDataEntry(x: Double(iii), y: value))
        }

        for (iii, value) in values3.enumerated() {
            entries3.append(ChartDataEntry(x: Double(iii), y: value))
        }

        let dataSet = LineChartDataSet(values: entries1, label: "活动报名数")
        dataSet.setColor(NSUIColor(red: 229/255, green: 140/255, blue: 154/255, alpha: 1))

        dataSet.drawCirclesEnabled = false
        dataSet.lineWidth = 3.0

        let dataSet2 = LineChartDataSet(values: entries2, label: "活动出勤率")
        dataSet2.circleRadius = 4.0
        dataSet2.circleColors = [NSUIColor(red: 243/255, green: 209/255, blue: 142/255, alpha: 1)]
        //dataSet2.setColor(NSUIColor(red: 243/255, green: 209/255, blue: 142/255, alpha: 1))
        dataSet2.setColor(NSUIColor(red: 200/255, green: 200/255, blue: 100/255, alpha: 1))

        let dataSet3 = LineChartDataSet(values: entries3, label: "活动发起数")
        dataSet3.lineWidth = 3.0
        dataSet3.setColor(NSUIColor(red: 172/255, green: 234/255, blue: 254/255, alpha: 1))

        let frame1 = CGRect (x: 20.fitScreen, y: 120.fitHeight, width: 360.fitScreen, height: 480.fitHeight)
        let chart = LineChartView(frame: frame1)
        chart.backgroundColor = NSUIColor.clear
        chart.leftAxis.axisMinimum = 0.0
        chart.rightAxis.axisMinimum = 0.0
        chart.data = LineChartData(dataSets: [dataSet, dataSet2, dataSet3])
        return chart
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn1)
        self.view.addSubview(llabel)
        self.view.addSubview(charts)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
