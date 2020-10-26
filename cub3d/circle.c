#include "mlx.h"
#include <math.h>
int main()
{
	int a = 100;
	void *test = mlx_init();
	char *title = "null";
	int r = 255;
	int g = 0;
	int b = 0;
	int x = 960;
	int y = 540;
	int color = (r * 256 * 256) + ( g * 256) + b;
	void *win = mlx_new_window(test, 1920, 1080, title);
	/*mlx_pixel_put(test, win, x, y, color);
	mlx_pixel_put(test, win, x+50, y-50, color);*/
	x =960;
	//y = 960;
	int radius  = 100;
	float xpos,ypos,radsqr,xsqr;
	xpos = x - radius;
   while(xpos<=x+radius)
    {
	//	xpos = x - radius;
        radsqr = pow(radius, 2);
        xsqr = pow(xpos - x, 2);
        ypos = sqrt(fabs(radsqr - xsqr));
		mlx_pixel_put(test,win,xpos,ypos + y, color);
		mlx_pixel_put(test,win,xpos,-ypos + y, color);
		xpos +=0.01;
	}

	mlx_loop(test);
}
