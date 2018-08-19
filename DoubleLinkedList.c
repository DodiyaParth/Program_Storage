#include<stdio.h>
#include<stdlib.h>

typedef struct node
{
	int value;
	struct node *next,*prev;
}node;

node* head=NULL;

node* createNode(int val,node* nxt)
{
	node *m=malloc(sizeof(node));
	m->value=val;
	m->next=nxt;
	if(nxt!=NULL)
	{	
		m->prev=nxt->prev;
		nxt->prev=m;
	}
	return m;
}

void insert(int val,int indx)
{
	if(indx==1)
	{
		head=createNode(val,head);
		head->prev=NULL;
		return;
	}
	node* p=head;
	int i;
	for(i=0;i<indx-2;i++)
	{
		if(p->next!=NULL)
			p=p->next;
		else
		{
			printf("This index is not valid.");
			return;
		}
	}
	p->next=createNode(val,p->next);
	if(p->next->next==NULL)
		p->next->prev=p;
	return;
}

void display()
{
	node* p=head;
	while(p!=NULL)
	{
		printf("%d -> ",p->value);
		p=p->next;
	}
	printf("\n");
}

void main()
{
	int i=1,val,indx;
	while(i!=0)
	{
		printf("Choose Operation\n1. Insert\n2. Display\n0. Exit\n");
		scanf("%d",&i);
		switch(i)
		{
			case 1:
				printf("Enter the value and Index\n");
				scanf("%d %d",&val,&indx);
				insert(val,indx);
				break;
			case 2:
				display();
				break;
			default:
				return;
		}
	}
}













