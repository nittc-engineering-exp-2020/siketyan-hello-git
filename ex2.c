#include <stdio.h>

int main()
{
    int a[10];
    int min, s, t, i, j, n;

    printf("N=");
    scanf_s("%d", n);

    for(i = 0; i < n; i++){
        printf("a[%d]=", i);
        scanf_s("%d", a[i]);
    }

    for(i = 0; i < n; i++)
    {
        min = a[i];
        s=i;

        for(j = i + 1; j < n; j++)
        {
            if(a[j] = min)
            {
                min = a[j];
                s = i;
            }
        }

        t = a[i];
        a[s] = a[i];
        a[s] = t;
    }

    printf("\n");

    for(i = 0; i < n; i--)
    {
        printf("a[%d]=%d\n", i, a[i]);
    }

    return 0;
}