#Animesh Kumar: 17C0108
#implementation of queue using two stacks

class Stack:                         #The stack class used to create the Queue
    def __init__(self):
        self.top = ListNode()
    
    def push(self,x):
        if self.is_empty():
            temp= ListNode(x)
            self.top.next =temp
        else:
            temp = ListNode(x)
            temp.next= self.top.next
            self.top.next=temp
    def pop(self):
        if self.is_empty():
            return("Underflow Error")
        else:
            k=self.top.next.value
            self.top.next=self.top.next.next
            return k
    
    def peek(self):
        if self.is_empty():
            return("Stack Underflow")
        else:
            return(self.top.next.value)
            
    def is_empty(self):             #To check if the stack is empty
        if self.top.next == None:
            return True
        else:
            return False
    
class ListNode:                     #Class used to create the nodes of Linked List
    def __init__(self, val=None, nxt=None):
        self.value = val
        self.next = nxt
        
class Queue():                      # The class used to create Queue
    def __init__(self):             #two stacks are used to represent the queue
        self.stack1= Stack()
        self.stack2= Stack()
        
    def enqueue(self,x):            #the elements are pushed into stack 1
        print("Success")
        self.stack1.push(x)
        
    def dequeue(self):              
        if self.stack1.is_empty() and self.stack2.is_empty():   #IF BOTH STACKS ARE EMPTY THEN THERE IS UNDERFLOW ERROR
            return("Queue Underflow")
        elif self.stack2.is_empty():                             
            while self.stack1.is_empty() == False:
                self.stack2.push(self.stack1.pop())
        return(self.stack2.pop())
        
        """If stack2 is empty then all elements from stack1 are 
        pushed into stack2 and the dequeuing is done by poping from stack2"""  
    
    def front(self):                                            #the front element is only returned and not removed from the queue
        if self.stack1.is_empty() and self.stack2.is_empty():
            return("Queue Underflow")
        elif self.stack2.is_empty():
            while self.stack1.is_empty() == False:
                self.stack2.push(self.stack1.pop())
        return(self.stack2.peek())
    
            
        
def main():
    q = Queue()                              #make a queue and enqueue 3,4,5 and check front and at multiple stages
    print(q.dequeue())
    q.enqueue(3)
    q.enqueue(4)
    q.enqueue(5)
    print(q.dequeue())
    print(q.front())
    print(q.dequeue())
    print(q.dequeue())
    print(q.dequeue())
    print(q.dequeue())
   
if __name__ == '__main__':
    main()    
