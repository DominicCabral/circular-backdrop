int y = 0;
float spaceAmountX, spaceAmountY = 25;
static final int SPACE_AMOUNT_MAX = 50;
static final float SPACE_AMOUNT_MIN = SPACE_AMOUNT_MAX*.1;

void setup(){
	background(0);
	pixelDensity(2);
	size(500,500);
	surface.setResizable(true);
}

void draw(){
	for(int x = 0; x < width; x+=spaceAmountX){
		float size = 10;

		fill(0, random(0,255), random(0,255));
		ellipse(x, y, size, size);

	}

	if(frameCount%2 == 1){
		spaceAmountX = SPACE_AMOUNT_MAX;
	}else{
		spaceAmountX = SPACE_AMOUNT_MIN;
	}

	y+=spaceAmountY;

	if(keyPressed){
		saveFrame("circleBackdrop.jpg");
	}
}