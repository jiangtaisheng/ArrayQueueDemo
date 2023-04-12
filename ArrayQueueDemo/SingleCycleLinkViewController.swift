//
//  SingleCycleLinkViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class SingleCycleLinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        singleCycleLinkedListTest()
        // Do any additional setup after loading the view.
    }
    

    
    func singleCycleLinkedListTest(){
        
//        let node1: Node = Node.init(item: ["id":1,"name": "秦始皇", "country": "大秦帝国"])
//        let node2: Node = Node.init(item: ["id":2,"name": "汉武大帝", "country": "大汉帝国"])
//        let node3: Node = Node.init(item: ["id":3,"name": "隋炀帝", "country": "大隋帝国"])
//        let node4: Node = Node.init(item: ["id":4,"name": "唐太宗", "country": "大唐帝国"])
//        let node33: Node = Node.init(item: ["id":3,"name": "隋文帝", "country": "大隋帝国"])
//
//        let link: SingleCycleLinkedList = SingleCycleLinkedList.init(nodeList: [node1,node2,node3,node4])
//        link.showNodeList()
//        let link: SingleCycleLinkedList = SingleCycleLinkedList()
//
//        link.addNode(node: node1)
//        link.addNode(node: node4)
//        link.addNode(node: node2)
//        link.addNode(node: node3)
//        link.showNodeList()

//        print("delete:")
//        link.deleteNode(node: node2)
//        link.showNodeList()

//        print("deleteNode:")
//        link.deleteNode(node: node2)
//        link.showList()
//        print("updateNode:")
//        link.updateNode(node: node33)
//        link.showList()
        
        SingleLinkHelp.getBoyIndex(startIndex: 2, spaceCount: 3, num: 10)

    }
}
//4 7 10 3
