int X,Y;

void setup()
{
  size(500,500);
  noLoop();

}
void draw()
{
	//random walk from X to Y-10
	//then shoot straight toward X,Y
	strokeWeight(5);
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
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
		//TODO Set clear-screen here
		System.out.println("Hello :)");
	}
}