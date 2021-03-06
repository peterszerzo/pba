// draw field [ter = field]
void ter()
{
  fill(224, 156, 27);
  rect(1, 420, 640, 480);
  stroke(255);
  noFill();
  arc(620, 450, 340*2, 21*2, 80*PI/180, 280*PI/180);
}

// draw rectangle at arbitrary angle
void recht(int x, int y, int a, int b, int alfa)
{
  int n, m;
  int  asin, bsin, acos, bcos;
  int i;

  stroke(255, 255, 255);
  asin=round(a*sin(alfa*PI/180));
  acos=round(a*cos(alfa*PI/180));
  bsin=round(b*sin(alfa*PI/180));
  bcos=round(b*cos(alfa*PI/180));

  line(x, y, x+acos, y-asin);
  line(x, y, x-bsin, y-bcos);

  n=x-bsin;
  m=y-bcos;
  line(n, m, n+acos, m-asin);
  line(n+acos, m-asin, x+acos, y-asin);

  stroke(0);
}

void labda(int a, int b)
{
  stroke(0, 0, 0);
  fill(224, 156, 27);
  ellipse(a, b, 2*15, 2*15);
  line(a, b-15, a, b+15);
  line(a-15, b, a+15, b);
  noFill();

  arc(a-15, b, 2*8, 2*8, -70*PI/180, 70*PI/180);
  arc(a+15, b, 2*8, 2*8, -255*PI/180, -100*PI/180);
}

// draw person [ember = person]
void ember(int a, int b)
{
  stroke(255, 255, 255);
  line(a, b, a+10, b-23);
  line(a+20, b, a+30, b-23);
  line(a+30, b-23, a+14, b-40);
  line(a+10, b-23, a, b-32);

  line(a+20, b+1, a+30, b+11);
  line(a-20, b, a+20, b);
  line(a+8, b+10, a, b+1);
  line(a-20, b+11, a+30, b+11);
  line(a-20, b+10, a-20, b+1);

  line(a-20, b, a-10, b-23);
  line(a-10, b-23, a-26, b-40);

  line(a-26, b-40, a+14, b-40);
  line(a-26, b-40, a-26, b-80);
  line(a+14, b-40, a+14, b-80);

  noFill();
  arc(a-16, b-80, 2*10, 2*10, -180*PI/180, -90*PI/180);
  arc(a+4, b-80, 2*10, 2*10, -90*PI/180, -0*PI/180);
  line(a-20, b-90, a+6, b-90);
  fill(224, 156, 27);
  ellipse(a-6, b-105, 12*2, 16*2);
  noFill();
  arc(a-16, b-80, 2*7, 2*7, -315*PI/180, -135*PI/180);


  line(a-12, b-74, a+14, b-104);
  line(a-23, b-83, a-4, b-106);
  line(a-4, b-106, a-7, b-124);
  line(a+15, b-105, a+8, b-127);
  line(a+22, b-106, a+15, b-127);
  line(a+10, b-90, a+23, b-106);
}

void rombusz(int a, int b)
{
  line(a-4, b, a, b-5);
  line(a+4, b, a, b-5);
  line(a-4, b, a, b+5);
  line(a+4, b, a, b+5);
}

void rombusz2(int a, int b)
{
  line(a, b, a, b-5);
  line(a+4, b, a, b-5);
  line(a, b, a+3, b+5);
  line(a+4, b, a+3, b+5);
}
void rombusz3(int a, int b)
{
  line(a-4, b, a, b-5);
  line(a, b, a, b-5);
  line(a-4, b, a-3, b+5);
  line(a, b, a-3, b+5);
}

void palank(int a, int b, int x)
{
  stroke(255);
  noFill();
  if (x==1)
  {
    arc(a, b, 27*2, 7*2, 0*PI/180, 180*PI/360);
    arc(a, b, 32*2, 10*2, 0*PI/180, 180*PI/180);
    arc(a, b, 30*2, 8*2, 0*PI/180, 180*PI/180);
  }
  else
  {
    ellipse(a, b, 27*2, 7*2);
    ellipse(a, b, 32*2, 10*2);
    ellipse(a, b, 30*2, 8*2);
  }

  rombusz2(a-20, b+30);
  rombusz(a-12, b+31);
  rombusz(a-4, b+32);
  rombusz(a+4, b+32);
  rombusz(a+12, b+31);
  rombusz3(a+20, b+30);

  line(a-20, b+25, a-30, b);
  line(a-12, b+26, a-19, b+6);
  line(a-4, b+29, a-8, b+7);

  line(a+20, b+25, a+30, b);
  line(a+12, b+26, a+19, b+6);
  line(a+4, b+29, a+8, b+7);

  rombusz2(a-18, b+40);
  rombusz(a-12, b+41);
  rombusz(a-4, b+42);
  rombusz(a+4, b+42);
  rombusz(a+12, b+41);
  rombusz3(a+18, b+41);


  rombusz2(a-16, b+50);
  rombusz(a-11, b+51);
  rombusz(a-4, b+52);
  rombusz(a+4, b+52);
  rombusz(a+11, b+51);
  rombusz3(a+16, b+51);

  fill(255);
  rect(585, 200, 640-585, -204+200);
}

