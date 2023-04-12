//
//  SingleCycleLinkedList.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit
/**
 构建单向环形链表
 */
class SingleCycleLinkedList: NSObject {
    
   private var firstNode: Node = Node.init(item: nil)
   private var tempNode: Node =  Node.init(item: nil) // 辅助节点，用来添加节点时，得到该添加的位置
    func getFirstNode() -> Node {
        return firstNode
    }
    
    init(nodeList: [Node]){
        super.init()
        var curNode: Node = Node.init(item: nil)
        for (idx, node) in nodeList.enumerated() {
            
            if idx == 0 {
                firstNode = node
                firstNode.next = firstNode
                curNode = firstNode
            }else {
                curNode.next = node
                node.next = firstNode
                curNode = node
            }

        }

        
    }
    
    //添加node
    func addNode(node: Node) {
        
        if firstNode.next == nil {
            firstNode = node
            firstNode.next = firstNode
            tempNode = firstNode
            return
        }
        tempNode.next = node
        node.next = firstNode
        tempNode = node
    }
    
    //删除 node
    func deleteNode(node: Node) {
        
        if firstNode.next == nil {
            print("链表为空")
            return
        }
        var curNode: Node = firstNode
        var flag = false
        while(true){
            if curNode.next == firstNode {
                break
            }
            let curId = (curNode.next!.data! as! [String: Any])["id"] as! Int
            let id = (node.data! as! [String: Any])["id"] as! Int
            if curId == id {
                flag = true
                break
            }
            curNode = curNode.next!
        }
        
        if flag == true {
            curNode.next = curNode.next?.next
        }else {
            print("没找到")
        }
        
    }
    
    //遍历
    func showNodeList() {
        
        if firstNode.next == nil {
            print("链表为空")
            return
        }
        var curNode = firstNode
        print("遍历开始")
        while(true) {
            print(curNode)
            if curNode.next == firstNode { // 遍历结束
                print("遍历结束")
                break
            }
            curNode = curNode.next!
        }
    }
    
    
}
