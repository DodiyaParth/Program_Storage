
import stacks_queues

class Q_as_S:
    def __init__(self):
        self.s=stacks_queues.Stack()

    def enqueue(self,value):
        temp=stacks_queues.Stack()
        while(self.s.peek()!='Stack is Empty!'):
            temp.push(self.s.pop())
        self.s.push(value)
        while(temp.peek()!='Stack is Empty!'):
            self.s.push(temp.pop())
        

    def dequeue(self):
        if self.s.LL.head.next!=None:
            return self.s.pop()
        return 'Queue is empty!'

    def Front(self):
        if self.s.LL.head.next!=None:
            return self.s.peek()
        return 'Queue is empty!'



def main():
    
    print('Queue implemented as stack:')
   
    q=Q_as_S()

    q.enqueue(3)
    q.enqueue(5)
    q.enqueue(0)

    print('Queue is: ',end='')
    q.s.LL.display()

    print('Front Value is: ',end='')
    print(q.Front())
  
    print('Dequeued: ',end='') 
    print(q.dequeue())

    print('Queue is: ',end='')
    q.s.LL.display()

    print('Dequeued: ',end='')
    print(q.dequeue())

    print('Front Value is: ',end='')
    print(q.Front())
 
    print('Queue is: ',end='')
    q.s.LL.display()

    print('Dequeued: ',end='') 
    print(q.dequeue())

    print('Front Value is: ',end='')
    print(q.Front())

    print('Dequeued: ',end='')
    print(q.dequeue())

    q.enqueue(10)
    q.enqueue(2)

    print('Queue is: ',end='')
    q.s.LL.display()
    


if __name__ == '__main__':
    main()
