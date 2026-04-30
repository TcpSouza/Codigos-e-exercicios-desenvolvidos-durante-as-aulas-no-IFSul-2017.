#include<stdio.h>
#include<stdlib.h>
double maximo(double valores[],int n)
{
		double max=valores[0];
	int i;
	for (i=1;i<n;i++)
	{
		if(valores[i]>max)
		 
        max = valores[i];
        	
     }
	return (max);
}

double minimo(double valores[],int n)
{
	double min=valores[0];
	int i;
	for (i=1;i<n;i++)
	{
		if(valores[i]<min)
		 
        min = valores[i];
        	 
     }
	return (min);
}

double media(double valores[],int n)
{
	double soma=0;
	int i;
	for (i=0;i<n;i++)
	 soma=soma+valores[i];

	return (soma/n);
}

int main(void)
{
	
	//double val[5]={5,10,20,30,10};
	
	 double val[]={7,10,20,45,10};
	int val_len=sizeof(val)/sizeof(val[0]);
	printf("media=%8.3f[%d elementos]\n",media(val,val_len),val_len);
	printf("maior e =%8.2f\n",maximo(val,val_len));
	printf("menor e =%8.2f",minimo(val,val_len));
	return 0;
	
}

