#include<stdio.h>
#include<stdlib.h>

struct node
{
	int value;
	struct node* next;
};
struct node* head;

struct node* createNode(int val,struct node* pre)
{
	struct node* m=malloc(sizeof(struct node));
	m->value=val;
	m->next=pre;
	return m;
}

void insertAt(int val,int idx)
{
	if(idx<1)
		return;
	struct node* p=head;
	int i;
	if(idx>1)
	{
		for(i=0;i<idx-2;i++)
		{
			if(p!=NULL)
				p=p->next;
			else
			{
				printf("Index is out of range\n");
				return;
			}
		}
		p->next=createNode(val,p->next);
	}
	else
	{
		head=createNode(val,head);
	}
	printf("Element %d is successfully inserted\n",val);
	return;
}

void display()
{
	struct node* p=head;
	while(p!=NULL)
	{
		printf("%d -> ",p->value);
		p=p->next;
	}
	printf("\n");
}

void main()
{
	int i=0;
	while(i!=3)
	{
		printf("Enter choice\n1. Insert\n2. Display\n3. Exit\ni=");
		scanf("%d",&i);	
		if(i==1)
		{
			int val,idx;
			printf("Enter value and index\n");
			scanf("%d %d",&val,&idx);
			insertAt(val,idx);
		}
		else if(i==2)
			display();
		else
		{	
			printf("Are you sure want to exit?\n1. yes\t2.no\n");
			scanf("%d",&i);
			if(i==1)
				return;
			else
				i=0;
		}
		printf("\n");
	}
}

















