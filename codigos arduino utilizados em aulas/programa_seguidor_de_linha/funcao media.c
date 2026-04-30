#include<stdio.h>

double media(double valores[],int n)
{
	double soma=0;
	int i;
	for (i=0;i<n;i++)
	 soma=soma+valores[i];

	return (soma/n);
}

int main()
{
	int nota;
	double val[nota]={};
	printf("media = %8.3f\n",media(val,nota));
	return 0;
	
}

