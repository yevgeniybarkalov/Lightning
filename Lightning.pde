int X,Y;
boolean clear = true;

void setup()
{
  size(750,750);
  background(0);
  noLoop();
}
void draw()
{
	int deviation = 0;
	strokeWeight(5);
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	if (clear)
	{
		background(0);
		clear = false;
		return;
	}

	int currentX = X;
	int currentY = 0;
	while (currentY < Y-10)
	{
		int deviateX;
		int newX;
		do
		{
			deviateX = (int)(Math.random()*500)-250;
		}
		while (deviation+deviateX>250 || deviation+deviateX<-250);
		newX = currentX+deviateX;
		deviation+=deviateX;
		line(currentX,currentY,newX,currentY+10);
		currentY+=10;
		currentX = newX;
	}
	line(currentX, currentY, mouseX, mouseY);
}
void mousePressed()
{
	X = mouseX;
	Y = mouseY;
	redraw();
}

void keyPressed()
{
	if (key == 32)
	{
		clear = true;
		redraw();
	}
}