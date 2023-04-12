//
//  SingleLinkViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class SingleLinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        singleLinkedListTest()
    }
    

    func singleLinkedListTest(){
        
        //        let node1: Node = Node.init(item: ["id":1,"name": "秦始皇", "country": "大秦帝国"])
        //        let node2: Node = Node.init(item: ["id":2,"name": "汉武大帝", "country": "大汉帝国"])
        //        let node3: Node = Node.init(item: ["id":3,"name": "隋炀帝", "country": "大隋帝国"])
        //        let node4: Node = Node.init(item: ["id":4,"name": "唐太宗", "country": "大唐帝国"])
        //        let node33: Node = Node.init(item: ["id":3,"name": "隋文帝", "country": "大隋帝国"])
        //
        //        let link: SingleLinkedList = SingleLinkedList()
        //
        //        link.addSequenceNode(node: node1)
        //        link.addSequenceNode(node: node4)
        //        link.addSequenceNode(node: node2)
        //        link.addSequenceNode(node: node3)
        //        link.showList()
        //        print(SingleLinkedList.nodeLength(head: link.getHead()))
        //
        //        print("deleteNode:")
        //        link.deleteNode(node: node2)
        //        link.showList()
        //        print("updateNode:")
        //        link.updateNode(node: node33)
        //        link.showList()
        //
        //        print(SingleLinkHelp.nodeLength(head: link.getHead()))
        //        print(SingleLinkHelp.getNodeToInverseIndex(head: link.getHead(), inverseIndex: 0))

        //         print("inverseSingleLinkList:")
        //         SingleLinkHelp.inverseSingleLinkList(head: link.getHead())
        //         link.showList()
        //           print("inverseSingleLinkList:")
        //         SingleLinkHelp.inversePrintLogLinkedListToStack(headNode: link.getHead())

                //合并两个有序的单链表，合并之后链表的依然有序
                print("合并两个有序的单链表，合并之后链表的依然有序")
                
                
                let node1: Node = Node.init(item: ["id":1,"name": "秦始皇", "country": "大秦帝国"])
                let node2: Node = Node.init(item: ["id":5,"name": "汉武大帝", "country": "大汉帝国"])
                let node3: Node = Node.init(item: ["id":7,"name": "隋炀帝", "country": "大隋帝国"])
                let node4: Node = Node.init(item: ["id":9,"name": "唐太宗", "country": "大唐帝国"])
                let node5: Node = Node.init(item: ["id":12,"name": "隋文帝", "country": "大隋帝国"])

                let link: SingleLinkedList = SingleLinkedList()

                link.addSequenceNode(node: node1)
                link.addSequenceNode(node: node2)
                link.addSequenceNode(node: node3)
                link.addSequenceNode(node: node4)
                link.addSequenceNode(node: node5)
                print("第一个单链表")
                link.showList()
                
                
                let node11: Node = Node.init(item: ["id":1,"name": "秦始皇", "country": "大秦帝国"])
                let node22: Node = Node.init(item: ["id":2,"name": "汉武大帝", "country": "大汉帝国"])
                let node33: Node = Node.init(item: ["id":4,"name": "隋炀帝", "country": "大隋帝国"])
                let node44: Node = Node.init(item: ["id":9,"name": "唐太宗", "country": "大唐帝国"])
                let node55: Node = Node.init(item: ["id":15,"name": "隋文帝", "country": "大隋帝国"])
                let node66: Node = Node.init(item: ["id":20,"name": "隋文帝", "country": "大隋帝国"])

                let link2: SingleLinkedList = SingleLinkedList()
                link2.addSequenceNode(node: node11)
                link2.addSequenceNode(node: node22)
                link2.addSequenceNode(node: node33)
                link2.addSequenceNode(node: node44)
                link2.addSequenceNode(node: node55)
                link2.addSequenceNode(node: node66)
                print("第二个单链表")
                link2.showList()
                
                let link3: SingleLinkedList = SingleLinkedList()

                SingleLinkHelp.mergeTwoOrderedLinkedList(headOneNode: link.getHead() , headTwoNode: link2.getHead(), headThreeNode: link3.getHead())
                
                print("第三个单链表")
                link3.showList()
                
            }



}
