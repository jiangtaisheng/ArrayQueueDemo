//
//  SingleLinkHeip.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/7.
//

import UIKit

class SingleLinkHelp: NSObject {

    
    //获取单链表的长度
    static  func nodeLength(head: Node) -> Int{
        var tempNode = head.next
        var length = 0
        while(true) {
            if tempNode == nil {
                break
            }
            length += 1
            tempNode = tempNode?.next
        }
        return length
    }
    
    // 新浪面试题  查找链表中的倒数第k个节点
    // n-k   n: 是链表的有效长度  n-k 代表遍历 n-k 次 就得到了 倒数第k个节点
   static  func getNodeToInverseIndex(head: Node, inverseIndex: Int ) ->Node? {
        
        let length: Int = SingleLinkHelp.nodeLength(head: head)
        if length  == 0 {
            print("空链表")
            return nil
        }
        if length < inverseIndex  || inverseIndex <= 0{
            print("inverseIndex 超出链表长度")
            return nil
        }
        var index = 0 //代表遍历次数
        var tempNode = head.next
        while(index < length-inverseIndex) {
            tempNode = tempNode?.next
            index += 1
        }
       
        return tempNode
    }
    // 腾讯面试题 单链表反转
    static func inverseSingleLinkList(head: Node) {
        if head.next == nil || head.next?.next == nil {
            // 当链表为空链表或者 只有一个节点是不用处理
            return
        }
        let inverseHead: Node = Node.init(item: nil)
        var tempNode: Node? = head.next
        var nextNode: Node? = nil
        while(tempNode != nil) {
            nextNode = tempNode?.next
            tempNode?.next =  inverseHead.next
            inverseHead.next = tempNode
            tempNode = nextNode // 遍历时后移
        }
        head.next = inverseHead.next
    }
    
    // 百度面试题 从尾到头打印单链表  要求方式1: 反向遍历 方式2：Stack栈
    static func inversePrintLogLinkedListToStack(headNode: Node){
        if headNode.next == nil  {
            print("链表为空")
            return
        }
        var tempNode: Node = headNode
        let stack: Stack = Stack()
        while(tempNode.next != nil ) {
            tempNode = tempNode.next!
            stack.push(tempNode)
        }
        
        while(stack.count > 0) {
            print(stack.pop())
        }
//        for index in 0..<stack.count {
//            print(stack.pop())
//        }
    }
    
    //合并两个有序的单链表，合并之后链表的依然有序
    // 想法：
    // 1.新建第三个头结点 指向第一个链表
    // 2.遍历第二个链表 插入到第三个链表中
    //
   static  func mergeTwoOrderedLinkedList(headOneNode: Node, headTwoNode: Node, headThreeNode: Node) {
        
        // 如果 headOneNode 和 headTwoNode 都是空链表
        if headOneNode.next == nil && headTwoNode.next == nil {
            return
        }
        if headOneNode.next == nil {
            headThreeNode.next = headTwoNode.next
        }else if headTwoNode.next == nil {
            headThreeNode.next = headOneNode.next
        }else {  //  headOneNode 和 headTwoNode 都不是空链表
            headThreeNode.next = headOneNode.next
            var  tempNode = headTwoNode.next! //记录 headTwoNode 遍历时的节点
            var  tempThreeNode = headThreeNode.next! //记录 headThreeNode 遍历时的节点
            var nextNode: Node? = nil //遍历headTwoNode 找到合适位置后 记录 tempNode 下一个节点的位置，相当于tempNode做了后移
            
            while(tempNode.next != nil){
                if tempThreeNode.next == nil {
                    // 把headTwoNode未遍历的节点接到 headThreeNode 后边
                    tempThreeNode.next = tempNode
                    break
                }
                let tempId =  (tempNode.data as![String: Any])["id"] as! Int
                let tempThreeId =  (tempThreeNode.next!.data as![String: Any])["id"] as! Int
                if tempId <= tempThreeId {  //此时找到合适的位置
                    nextNode = tempNode.next
                    tempNode.next = tempThreeNode.next
                    tempThreeNode.next = tempNode
                    tempNode = nextNode!
                }
                tempThreeNode = tempThreeNode.next!
            }
           
            
        }
    }
    
}
