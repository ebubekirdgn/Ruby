#include <stdio.h>
#include <stdlib.h>

struct point 
{
        int x;
        int y;
};

struct point *point_create(int x, int y)
{
        struct point *this =(struct point *)malloc(sizeof(struct point));
        this->x = x;
        this->y = y;
        return this;
}
void point_print(const struct point *this)
{
        printf("(%d,%d)", this->x, this->y);
}

void point_destroy(struct point *this)
{
        free(this);
}

int main(void)
{
        struct point *p = point_create(3, 5);
        struct point *q = point_create(5, 7);
        int diffx=0,diffy=0;
        
        diffx = p->x - q->x;
        diffy = p->y - q->y;
   
    if(diffx==diffy)
    {
      point_print(p),point_print(q) ,printf(" noktalari kare belirtir ");
    }
    else
    {
     point_print(p),point_print(q) ,printf(" noktalari kare degildir ");
    }
        //point_destroy(p);
        //point_destroy(q);

        return 0;
}