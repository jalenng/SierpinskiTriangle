public void setup()
{
	size(600, 600);
	background(0);
	stroke(69, 255, 20);
	noFill();
	sierpinski(0, height * 0.93301270189, width);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}

//takes coords of bottom left vertex, base, and height and draws a triangle
public void trianglebh(double x, double y, double b, double h)
{
	triangle((int)x, (int)y, (int)(x + b), (int)y, (int)(x + (b / 2)), (int)(y - h));
}

public void sierpinski(double x, double y, double len) 
{
	double width = len;
	double height = len * 0.86602540378;
	trianglebh(x, y, width, height);
	if (len > 10)
	{
		sierpinski(x, y, len / 2); //bottom left
		sierpinski(x + (width / 2), y, len / 2); //bottom right
		sierpinski(x + (width / 4), y - (height / 2), len / 2); //top
	}
}