#include<stdio.h>
#include<stdlib.h>

 int
main ()
{

  int i, n;
    double fat = 1.0;

     printf ("Calcular fatorial de qual numero ? : ");
  
  if(scanf("%d", &n) == 0)
  
    {
		printf("\n Digite o valor correto!\n");
		return (0);
	}
	
  for (i = 1; i <= n; i++)
  
    {
        fat = fat * i;
    }

   printf ("\n O fatorial de %d e: %.0f\n", n, fat);

return 0;


}
