#Animesh Kumar:17CO108
#Queue using Linked List

class Queue:
    def __init__(self):
        self.front= ListNode()
        self.rear= ListNode()
        
    def enqueue(self,x):
        if self.front.next == None:
            temp= ListNode(x)
            self.front.next=temp
            self.rear.next=temp
        else:
            temp = ListNode(x)
            self.rear.next.next=temp
            self.rear.next=temp
            
    def dequeue(self):
        if self.front.next == None:
            return("Queue Underflow")
        elif self.front.next != self.rear.next:
            k= self.front.next.value
            self.front.next=self.front.next.next
            return(k)
        else:
            k= self.front.next.value
            self.front.next = None
            return(k)
            
    def peek(self):
        if self.front.next== None:
            return("Queue Underflow")
        else:
            return(self.front.next.value)
    
            
class ListNode:
    def __init__(self, val=None, nxt=None):
        self.value=val
        self.next=nxt
        
def main():
    q= Queue()
    print(q.dequeue())
    print(q.peek())
    q.enqueue(3)
    q.enqueue(4)
    q.enqueue(5)
    print(q.peek())
    print(q.dequeue())
    print(q.dequeue())
    print(q.peek())
    print(q.dequeue())
    print(q.peek())
    
if __name__== '__main__':
    main()
