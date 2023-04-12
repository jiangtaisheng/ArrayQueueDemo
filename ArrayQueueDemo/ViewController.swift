//
//  ViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/6.
//

import UIKit

class ViewController: UIViewController {

    var dataList: [[String: Any]] = [[String: Any]]()
    lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: UITableView.Style.plain)
        tableView.delegate = self;
        tableView.dataSource = self;
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        initData()
    }
  

}



// MARK: - 监听/订阅
extension ViewController {
    
    private func initSubcrieBlock () {
        
        
        
    }
    
    // initData
    func initData() {
        
        dataList = [
            [
                "id": 1,
                "name": "Queue"
            ],
            [
                "id": 2,
                "name": "Stack"
            ],
            [
                "id": 3,
                "name": "SingleLink"
            ],
            [
                "id": 4,
                "name": "DoubleLink"
            ],
            [
                "id": 5,
                "name": "SingleCycleLink"
            ]
        
        ]
        
        self.tableView.reloadData()
    }
    
    
}


// MARK: - Event
extension ViewController {
    
    
}


// MARK: - initSubView
extension ViewController {
    
    // initUI
    
    private func setup(){
        self.view.addSubview(tableView)
    }

}


// MARK: - PGDatePickerDelegate
extension   ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "ID")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "ID")
        }
        let dict = self.dataList[indexPath.row]
        cell?.textLabel?.text = dict["name"] as! String
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dict = self.dataList[indexPath.row]
        let id = dict["id"] as! Int
        switch id {
        case 1:
            let VC: QueueViewController = QueueViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        case 2:
            let VC: StackViewController = StackViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        case 3:
            let VC: SingleLinkViewController = SingleLinkViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        case 4:
            let VC: DoubleLinkViewController = DoubleLinkViewController()
            self.navigationController?.pushViewController(VC, animated: true)
            print("40000")
        case 5:
            let VC: SingleCycleLinkViewController = SingleCycleLinkViewController()
            self.navigationController?.pushViewController(VC, animated: true)
            print("50000")
        default:
            print("不存在")
        }
    }
    
    
}

