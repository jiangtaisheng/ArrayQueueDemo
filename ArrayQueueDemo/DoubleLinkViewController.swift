//
//  DoubleLinkViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class DoubleLinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        doubleLinkedListTest()
    }
    
    
    func doubleLinkedListTest(){
        
        let node1: DoubleNode = DoubleNode.init(item: ["id":1,"name": "秦始皇", "country": "大秦帝国"])
        let node2: DoubleNode = DoubleNode.init(item: ["id":2,"name": "汉武大帝", "country": "大汉帝国"])
        let node3: DoubleNode = DoubleNode.init(item: ["id":3,"name": "隋炀帝", "country": "大隋帝国"])
        let node4: DoubleNode = DoubleNode.init(item: ["id":4,"name": "唐太宗", "country": "大唐帝国"])
        let node33: DoubleNode = DoubleNode.init(item: ["id":3,"name": "隋文帝", "country": "大隋帝国"])
       let doubleLink: DoubleLinkedList = DoubleLinkedList()
       doubleLink.addSequenceNode(node: node1)
       doubleLink.addSequenceNode(node: node4)
       doubleLink.addSequenceNode(node: node2)
       doubleLink.addSequenceNode(node: node3)
       doubleLink.showList()
    
        print("删除：")
        doubleLink.deleteNode(node: node2)
        doubleLink.showList()
     
        print("更新：")
        doubleLink.updateNode(node: node33)
        doubleLink.showList()
    }
}
