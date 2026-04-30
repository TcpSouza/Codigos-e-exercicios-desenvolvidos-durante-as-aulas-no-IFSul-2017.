#include<stdio.h>
#include<stdlib.h>
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
	 double val[]={5,10,20,46,10};
	int val_len=sizeof(val)/sizeof(val[0]);
	printf("media=%8.3f\n[%d elementos]\n",media(val,val_len),val_len);
	return 0;
	
}
