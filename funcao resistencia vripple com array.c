#include<stdio.h>
#define VRMS 12.0
#define CAP 4700
#define raiz2  1.414213562

double vripple(double vrms,double C,double R)

{
	double vp=VRMS*raiz2- 0.7;
	double vripple=vp*1000000/(CAP*R*120);	
	return(vripple);	

}

int main(void)
{
	int n,res;
	int i=0;
	double vrip[23];
	
	for (res=10;res<=120;res+=5)
	{
	vrip[i] = vripple(VRMS,CAP,res);
	i++;		
	}
	res=10;
	for (i=0;i<23;i++)
	{	
	printf("%u  e %.3f\n",res,vrip[i]);
	res=res+5;
	}
	
	return 0;
	
}

