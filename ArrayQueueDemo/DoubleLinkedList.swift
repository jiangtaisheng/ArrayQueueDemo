//
//  DoubleLinkedList.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//



import UIKit
class DoubleLinkedList: NSObject {
    
    private var head: DoubleNode = DoubleNode.init(item: nil)
    // 获取头节点
    func getHead() -> DoubleNode{
        return head
    }
    //添加节点
    func addNode(node: DoubleNode){
        var tempNode: DoubleNode = head
        while(tempNode.next != nil) {
            tempNode = tempNode.next!
        }
        node.pre = tempNode
        tempNode.next = node
    }
    
    //顺序添加节点
    func addSequenceNode(node: DoubleNode){
        var tempNode: DoubleNode = head
        var  flag = false  //标识找到一样的节点
        // 思路是找到合适的位置，即 tempNode 指向合适的节点
        while(true) {
            if tempNode.next == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let nextId =  (tempNode.next!.data as![String: Any])["id"] as! Int
            if nextId > id {
                break
            }else if (nextId == id) {
                flag = true
                break
            }else {
                tempNode =  tempNode.next!
            }
        }
        if flag == true {
            print("找到一样的节点")
        }else {
            node.pre = tempNode
            node.next = tempNode.next
            tempNode.next?.pre = node
            tempNode.next = node
        }
    }

    //删除节点
    func deleteNode(node: DoubleNode){
        var  tempNode: DoubleNode? = head.next
        var  flag = false  //标识找到一样的节点
        // 思路找到要删除的节点
        while(true) {
            if tempNode == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let curId =  (tempNode!.data as![String: Any])["id"] as! Int
            if id == curId {
                flag = true
                break
            }else {
                tempNode = tempNode!.next
            }
        }
        if flag == true {
            tempNode?.pre?.next =  tempNode?.next
            //如果删除的节点不是最后一个节点
            if tempNode!.next != nil {
                tempNode?.next?.pre = tempNode?.pre
            }
        }else {
            print("没找到应该删除的节点")
        }
        
    }
    
    //更新节点
    func updateNode(node: DoubleNode){
        var  tempNode: DoubleNode? = head.next
        var  flag = false  //标识找到一样的节点
        // 思路找到要更新的节点
        while(true) {
            if tempNode == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let nextId =  (tempNode!.data as![String: Any])["id"] as! Int
            if id == nextId {
                flag = true
                break
            }else {
                tempNode = tempNode!.next
            }
        }
        
        if flag == true {
            tempNode?.data =  node.data
        }else {
            print("没找到应该更新的节点")
        }
    }
   
    // 显示链表
    
    func showList() {
        var tempNode: DoubleNode = head
        while( tempNode.next != nil ) {
            tempNode = tempNode.next!
            print(tempNode)
        }
    }
    
   
}

