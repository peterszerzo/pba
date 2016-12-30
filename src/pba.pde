// Hungarian variables have been preserved

int stage = 0;

int i = 30, k = 1;
int szog = 0;
float v, vx, vy, ge, t;
int dx, dy;

void setup() 
{
  size(640, 480, P2D);
}

void draw()
{
  background(0);
  ter();
  ember(50, 430);
  labda(50, 300);
  palank(550, 200, 0);
  noFill();
  line(195-180, 205-100, 195-180, 110-100);
  line(195-180, 205-100, 290-180, 205-100);
  arc(195-180, 205-100, 95*2, 95*2, -90*PI/180, 0*PI/180);
  text("0ø", 300-180, 205-100);
  text("90ø", 10, 4);

  if (stage==0) // get angle
  {
    i+=k;
    recht(20, 100, 80, 0, i);           
    if (i<=10 || i>70) 
    { 
      k=-k;
    }
  }
  
  if (stage==1) // get velocity
  {
    frameRate=10;
    i=i+k;
    recht(20, 100, i, 0, szog);
    if (i>80 || i<0) { 
      k=-k;
    }
  }

  if (stage==2) // ball movement
  {
    frameRate=5000;
    vx=v*cos(szog*PI/180);
    vy=v*sin(szog*PI/180);
    t=i/vx;
    dx=int(i+50);
    dy=int(vy*t-5*t*t+105);

    i+=4;

    labda(20+dx, 400-dy-5);

    if ((20+dx>640) || (400-dy-5>480)) //miss
    {
      stage+=2;
    }

    if ((20+dx>536) && (20+dx<570)) // hit
    {
      if ( (395-dy<220) && (395-dy>180) )
      {
        stage++;
      }
    }
  }

  if (stage==3) // hit
  {            
    labda(550, 400-dy-5);
    palank(550, 200, 1);
    dy-=2;
    if (400-dy-5>480)
    {
      stage++;
    }
  }

  if (stage==4) // miss
  {      
    stage++;
  }

  if (stage==5) // reset
  {
    stage=0;
    i=30;
    k=1;
  }
}

void mousePressed()
{

  if (stage==0) // get angle
  {    
    stage++;
    szog = i;
    i = 80;
    k = 1;
  }
  else if (stage==1) // get velocity
  {
    stage++;
    v = i * 1.6;
    i = 5;
    k = 1;
  }
}

