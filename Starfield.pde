Particle[] particles;
int j=0;
PImage b;
void setup()
{
	size(500,500);
	 b=loadImage("sun.png");
	smooth();
	noStroke();
	particles = new Particle[100];
	for(int i=0; i<particles.length;i++){
		particles[i]= new NormalParticle();
		particles[0]=new Jumbo();
		for(int j=1; j<20; j++){
		particles[j]=new Oddball();
		}
		
	}

}
void draw()
{	
	
	fill(0,0,0,50);
	rect(0,0,500,500);
		for(int i=0; i<particles.length;i++){
	particles[i].show();
	particles[i].move();
	image(b,175,175,150,150);

}
	

}
class NormalParticle implements Particle
{
	double myX, myY;
	double myA, myS;

	NormalParticle()
	{

  
		myX=250;//(double)(Math.random()*300)+100;x
		myY=250;//(double)(Math.random()*300)+100;
		myS=(double)Math.random()*3+4;
		myA=(double)Math.PI*2*Math.random();
	}

	public void move()
	{
	myA=myA+0.05;
	myX=myX+(double)Math.cos(myA)*myS;
	myY=myY+(double)Math.sin(myA)*myS;
	}

	public void show()
	{
	fill(255,0,255);
	ellipse((float)myX,(float)myY,10,10);
	}
}




interface Particle
{
	public void show();
	public void move();
	
}

class Oddball implements Particle
{
	double myX, myY;
	double myA, myS;
	Oddball()
	{
		myX=250;//(double)(Math.random()*300)+100;
		myY=250;//(double)(Math.random()*300)+100;
		myS=5;//(double)Math.random()*10;
		myA=(double)Math.PI*2*Math.random();
	}
	public void show(){
	fill(0,0,255);
	ellipse((float)myX, (float)myY, 30, 30);
	}
	public void move()
{	
	myA=myA-0.05;
	myX=myX+(double)Math.cos(myA)*myS;
	myY=myY+(double)Math.sin(myA)*myS;

}
}

class Jumbo extends NormalParticle
{
		void show()
		{
		fill(255,0,0);
		ellipse((float)myX, (float)myY, 50, 50);
		}
}

//http://stackoverflow.com/questions/9215231/making-a-fading-trail-in-processing