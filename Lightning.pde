

int startY = 0;
int startX = 150;
int endY = 0;
int endX = 150;

void setup()
{
	noLoop();
	size(300,300);
	strokeWeight(1);
	background(0);


}
void draw()
{
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	while(endY < 300)

	{
		endY = startY + (int)(Math.random() * 9);
		endX = startX + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
		redraw();
}

