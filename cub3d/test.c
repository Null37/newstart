#include "mlx.h"

int main()
{
    char *title = "null";
    void *test = mlx_init();
	int r= 255;
	int g = 0;
	int b = 0;
	int color = (r *256 *256) + (g * 256) + b; 
	int aa = 200;
	int bb = 200;
	int cc =200;
	int dd = 200;
	int tt = 200;
	char *n = "null";
	int  x,y;
	x= 540;
	y = 540;
    void *win = mlx_new_window(test ,1920, 1080, title);
	while(aa)
	{
		mlx_pixel_put(test,win,x,y,color);
		x +=1;
		aa--;
	}
	int xx = x;
	int yy = y;
	while(bb)
	{
		mlx_pixel_put(test,win,x,y,color);
		y += 1;
		bb--;
	}
	while(cc)
	{
		mlx_pixel_put(test,win,x,y,color);
		x -= 1;
		cc--;
	}
	while(dd)
	{
		mlx_pixel_put(test,win, x, y, color);
		y -=1;
		dd--;
	}
	aa = bb = cc = tt = 200;
	y = 50;
	x = 540;
	while (aa)
	{
		mlx_pixel_put(test,win,x,y,color);
		x += 1;
		y += 1;
		aa--;
	}
	while(cc)
	{
		mlx_pixel_put(test,win,x,y,color);
		x -= 1;
		cc--;
	}
	while(bb)
	{
		mlx_pixel_put(test,win,x,y,color);
		x +=1;
		y -= 1;
		bb--;
	}
	/*while(dd)
	{
		mlx_pixel_put(test,win,x,y,color);
		x -= 1;
		dd--;
	}*/
    mlx_loop(test);
}
