import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

int startY = 0;
int startX = 150 + (int)(Math.random() * 100) - 50;
int endY = 0;
int endX = 150;

void setup()
{
	size(300,300);
	background(0);

}
void draw()
{
	strokeWeight((int)(Math.random() * 5));
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
	fill(0, 0, 0, 100);
	rect(0, 0, 300 ,300);
	startX = 150  + (int)(Math.random() * 100) - 50;
	startY = 0;
	endX = 150;
	endY = 0;
}

