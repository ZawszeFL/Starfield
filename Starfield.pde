Particle[] particles;
int j=0;
void setup()
{
	size(500,500);
	smooth();
	noStroke();
	particles = new Particle[360];
	for(int i=0; i<particles.length;i++){
		particles[i]= new NormalParticle();
		particles[0]=new Oddball();
		particles[1]=new Jumbo();
	}

}
void draw()
{	
	background(0);
	for(int i=0; i<particles.length;i++){
	particles[i].show();
	particles[i].move();

	}

}
class NormalParticle implements Particle
{
	double myX, myY;
	double myA, myS;

	NormalParticle()
	{
		myX=250;//(double)(Math.random()*300)+100;
		myY=250;//(double)(Math.random()*300)+100;
		myS=5;//(double)Math.random()*10;
		myA=(double)Math.PI*2*Math.random();
	}

	public void move()
	{
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
		myS=2;//(double)Math.random()*10;
		myA=(double)Math.PI*2*Math.random();
	}
	public void show(){
	fill(0,0,255);
	rect((float)myX, (float)myY, 30, 30);
	}
	public void move()
{
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