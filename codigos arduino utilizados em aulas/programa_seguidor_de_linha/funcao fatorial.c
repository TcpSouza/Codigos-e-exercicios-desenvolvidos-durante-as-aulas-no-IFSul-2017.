#include<stdio.h>
int main()
{
	int fat,i,n;
	printf("Digite um numero inteiro: \n");
	scanf("%d",&n);
	fat=1;
	
	
		for(i=1;i<=n;i++){
		fat*=i;
	}
	
		 printf("O fatorial de %d e %d\n",n,fat);
		 
		 return 0;
		 
	}

