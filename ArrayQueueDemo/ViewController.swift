//
//  ViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        arrayQueueTest()
//        arrayCycleQueueTest()
//        singleLinkedListTest()
          stackTest()
    }
    
    func stackTest(){
        
        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
        let  data5 = ["name": "元世祖", "country": "大元帝国"]
        
        let stack =  Stack()
        stack.push(data1)
        stack.push(data2)
        stack.push(data3)
        stack.push(data4)
        stack.push(data5)
        print("stack-peek:")
        print(stack.peek)
        
        print("stack-pop:")

        print(stack.pop())
        print(stack.pop())
        print(stack.pop())
        print("stack-peek:")
        print(stack.peek)
        print("stack-count:")
        print(stack.count)

    }
    
//    func singleLinkedListTest(){
//
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
////        print(SingleLinkedList.nodeLength(head: link.getHead()))
////
////        print("deleteNode:")
////        link.deleteNode(node: node2)
////        link.showList()
////        print("updateNode:")
////        link.updateNode(node: node33)
////        link.showList()
////
////        print(SingleLinkHelp.nodeLength(head: link.getHead()))
////        print(SingleLinkHelp.getNodeToInverseIndex(head: link.getHead(), inverseIndex: 0))
//
//         print("inverseSingleLinkList:")
//         SingleLinkHelp.inverseSingleLinkList(head: link.getHead())
//         link.showList()
//    }

//    func arrayQueueTest() {
//
//        let queue = ArrayQueue<Any>(maxCount: 6)
//        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
//        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
//        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
//        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
//        let  data5 = ["name": "元世祖", "country": "大元帝国"]
//
//        let _ = queue.push(item: data1)
//        let _ = queue.push(item: data2)
//        let _ = queue.push(item: data3)
//        let _ = queue.push(item: data4)
//        let _ = queue.push(item: data5)
////
//        print("size:")
//        print(queue.size)
//        print("list:")
//        print(queue.showQueue())
//
//        print("pop:\(String(describing: queue.pop()))")
//        print("pop:\(String(describing: queue.pop()))")
//        print("pop:\(String(describing: queue.pop()))")
//        print("pop:\(String(describing: queue.pop()))")
//        let _ = queue.push(item: data1)
//        let _ = queue.push(item: data2)
//
//        print(queue.showQueue())
//
//    }
//

    
//    func arrayCycleQueueTest() {
//
//        let queue = ArrayCycleQueue<Any>(maxCount: 6)
//        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
//        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
//        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
//        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
//        let  data5 = ["name": "元世祖", "country": "大元帝国"]
//
//        let _ = queue.push(item: data1)
//        let _ = queue.push(item: data2)
//        let _ = queue.push(item: data3)
//        let _ = queue.push(item: data4)
//        let _ = queue.push(item: data5)
//        let _ = queue.push(item: data5)
//
//        print("size:")
//        print(queue.size)
//        print("list:")
//        print(queue.showQueue())
//
//
//        print("pop:\(String(describing: queue.pop()))")
//        print("pop:\(String(describing: queue.pop()))")
//
//        let _ = queue.push(item: data1)
//        let _ = queue.push(item: data2)
//        let _ = queue.push(item: data2)
//        print("headQueue:")
//        print(queue.headQueue() as Any)
//        print(queue.showQueue())
//
//    }

}

