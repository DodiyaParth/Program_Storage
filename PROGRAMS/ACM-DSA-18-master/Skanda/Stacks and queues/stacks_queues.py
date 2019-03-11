
class Node:
    def __init__(self,value=None,next=None):
        self.value=value
        self.next=next


    
class LinkedList:
    def __init__(self):
        self.head=Node()

    def insert(self,value,p):
        temp=Node(value,p.next)
        p.next=temp

    def delete(self,p):
        if p.next==None:
            print('Nothing to delete.')
            return  
        p.next=p.next.next
        
    def display(self):
        it=self.head.next
        while it!=None:
            print(it.value,end=' , ')
            it=it.next
        print()
     
    def length(self):
        c=0
        it=self.head.next
        while it!=None:
            c+=1
            it=it.next
        return c  
       
  
class Stack:
    def __init__(self):
        self.LL=LinkedList()

    def push(self,value):
        self.LL.insert(value,self.LL.head) 

    def pop(self):
        if self.LL.head.next!=None:
            val=self.LL.head.next.value 
            self.LL.delete(self.LL.head)
            return val
        return 'Stack is Empty!'
   
    def peek(self):
        if self.LL.head.next!=None:
            return self.LL.head.next.value
        return 'Stack is Empty!'



class Queue:
    def __init__(self):
        self.LL=LinkedList()        
        self.front=self.LL.head
        self.end=Node(None,self.front)

    def enqueue(self,value):
        self.LL.insert(value,self.end.next)
        self.end.next=self.end.next.next

    def dequeue(self):
        if self.front.next==None:
            return 'Queue is empty!'        
        val=self.front.next.value
        self.LL.delete(self.front)
        if self.front.next==None:
            self.end.next=self.front
        return val

    def Front(self):
        if self.front.next!=None:        
            return self.front.next.value
        return 'Queue is empty!'  



def main():

    ''' stack implementation ''' 
    print('Stack Implementation: ')

    s=Stack()

    s.push(3)
    s.push(1)
    s.push(-1)

    print('Stack is: ',end='')
    s.LL.display()

    s.push(9)
    s.push(0)

    print('Stack is: ',end='')
    s.LL.display()
  
    print('Popped: ',end='')
    print(s.pop())
    print('Stack is: ',end='')
    s.LL.display()

    print('Top value is: ',end='')
    print(s.peek())

    print('Popped: ',end='')
    print(s.pop())
    print('Stack is: ',end='')
    s.LL.display()


    print('Popped: ',end='')
    print(s.pop())
    print('Stack is: ',end='')
    s.LL.display()


    print('Top value is: ',end='')
    print(s.peek())

    print('Popped: ',end='')
    print(s.pop())
    print('Stack is: ',end='')
    s.LL.display()


    print('Top value is: ',end='')
    print(s.peek())

    print('Popped: ',end='')
    print(s.pop())

    print('Popped: ',end='')
    print(s.pop())

    s.push(4)
    s.push(2)

    print('Top value is: ',end='')
    print(s.peek())
    print('Stack is: ',end='')
    s.LL.display()


    ''' Queue implementation '''

    print('\n\n')
 
    print('Queue Implementation: ')
    q=Queue()

    q.enqueue(3)
    q.enqueue(1)
    q.enqueue(0)

    print('Front value is: ',end='')
    print(q.Front())

    print('Queue is: ',end='')
    q.LL.display()

    print('Dequeued: ',end='') 
    print(q.dequeue())
    print('Dequeued: ',end='')
    print(q.dequeue())

    print('Queue is: ',end='')
    q.LL.display()

    print('Front value is: ',end='')
    print(q.Front())

    print('Dequeued: ',end='')
    print(q.dequeue())
    print('Dequeued: ',end='') 
    print(q.dequeue())
   
    print('Front value is: ',end='')
    print(q.Front())

    q.enqueue(3)
    q.enqueue(7)

    print('Front value is: ',end='')
    print(q.Front())
   
    print('Queue is: ',end='')
    q.LL.display()  
         

if __name__ == '__main__':
    main()
