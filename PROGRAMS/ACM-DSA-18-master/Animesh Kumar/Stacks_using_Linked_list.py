#Animesh Kumar:17CO198
#Stacks Using Linked List
class Stack:
    def __init__(self):
        self.top = ListNode()
    
    def push(self,x):
        if self.top.next == None:
            temp= ListNode(x)
            self.top.next =temp
        else:
            temp = ListNode(x)
            temp.next= self.top.next
            self.top.next=temp
    def pop(self):
        if self.top.next ==None:
            return("Stack Underflow")
        else:
            k= self.top.next.value
            self.top.next=self.top.next.next
            return(k)
    def peek(self):
        if self.top.next ==None:
            return("Stack peek Underflow")
        else:
            return(self.top.next.value)
    
class ListNode:
    def __init__(self, val=None, nxt=None):
        self.value = val
        self.next = nxt
        
def main():
    s =Stack()
    print(s.pop())
    print(s.peek())
    s.push(3)
    s.push(4)
    print(s.peek())
    print(s.pop())
    print(s.peek())
    print(s.pop())
    print(s.pop())
    
if __name__ == '__main__':
    main()    
