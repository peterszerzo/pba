{ original Borland Pascal source code 
Tamas Gajdo
Tamas Plugor
Peter Szerzo

Saint George, Romania, 2006
}
uses crt,graph;
procedure ember(a,b:integer); { ember = person }
  begin
    line(a,b,a+10,b-23);
    line(a+20,b,a+30,b-23);
    line(a+30,b-23,a+14,b-40);
    line(a+10,b-23,a,b-32);

    line(a+20,b+1,a+30,b+11);
    LINE(a-20,b,a+20,b);
    line(a+8,b+10,a,b+1);
    line(a-20,b+11,a+30,b+11);
    line(a-20,b+10,a-20,b+1);

    line(a-20,b,a-10,b-23);
    line(a-10,b-23,a-26,b-40);


    line(a-26,b-40,a+14,b-40);
    line(a-26,b-40,a-26,b-80);
    line(a+14,b-40,a+14,b-80);
    arc(a-16,b-80,90,180,10);
    arc(a+4,b-80,360,90,10);
    line(a-20,b-90,a+6,b-90);
    setfillstyle(1,6);
    fillellipse(a-6,b-105,12,16);
    arc(a-16,b-80,135,315,7);
    line(a-12,b-74,a+14,b-104);
    line(a-23,b-83,a-4,b-106);
    line(a-4,b-106,a-7,b-124);
    line(a+15,b-105,a+8,b-127);
    line(a+22,b-106,a+15,b-127);
    line(a+10,b-90,a+23,b-106);

  end;
procedure rombusz(a,b:integer); { rombusz = rhomboid }
  begin
    line(a-4,b,a,b-5);
    line(a+4,b,a,b-5);
    line(a-4,b,a,b+5);
    line(a+4,b,a,b+5);
  end;
procedure rombusz2(a,b:integer);
  begin
    line(a,b,a,b-5);
    line(a+4,b,a,b-5);
    line(a,b,a+3,b+5);
    line(a+4,b,a+3,b+5);
  end;
procedure rombusz3(a,b:integer);
  begin
    line(a-4,b,a,b-5);
    line(a,b,a,b-5);
    line(a-4,b,a-3,b+5);
    line(a,b,a-3,b+5);
  end;
procedure palank(a,b,c,d,x:integer); { palank = basketball hoop }
  begin
    setcolor(c);
    if(x=1) then
      begin
    ellipse(a,b,180,360,27,7);
    ellipse(a,b,180,360,32,10);
    ellipse(a,b,180,360,30,8);
      end
      else
      begin
    ellipse(a,b,0,360,27,7);
    ellipse(a,b,0,360,32,10);
    ellipse(a,b,0,360,30,8);
      end;

    rombusz2(a-20,b+30);
    rombusz(a-12,b+31);
    rombusz(a-4,b+32);
    rombusz(a+4,b+32);
    rombusz(a+12,b+31);
    rombusz3(a+20,b+30);

    line(a-20,b+25,a-30,b);
    line(a-12,b+26,a-19,b+6);
    line(a-4,b+29,a-8,b+7);

    line(a+20,b+25,a+30,b);
    line(a+12,b+26,a+19,b+6);
    line(a+4,b+29,a+8,b+7);

    rombusz2(a-18,b+40);
    rombusz(a-12,b+41);
    rombusz(a-4,b+42);
    rombusz(a+4,b+42);
    rombusz(a+12,b+41);
    rombusz3(a+18,b+41);


    rombusz2(a-16,b+50);
    rombusz(a-11,b+51);
    rombusz(a-4,b+52);
    rombusz(a+4,b+52);
    rombusz(a+11,b+51);
    rombusz3(a+16,b+51);

    setfillstyle(2,15);
    bar(585,200,640,204);

  end;

procedure ter; { ter = basketball field }
  begin
    setfillstyle(1,6);
    bar(1,420,640,480);
    setcolor(15);
    ellipse(620,450,0,360,340,21);
  end;
procedure labda(a,b,c,d:integer); { labda = ball }
  begin
    setcolor(c);
    setlinestyle(0,0,1);
    setfillstyle(1,c);
    fillellipse(a,b,15,15);
    randomize;
    setcolor(d);
    line(a,b-15,a,b+15);
    line(a-15,b,a+15,b);
    arc(a-15,b,290,70,8);
    arc(a+15,b,100,255,8);

  end;
procedure labdax(a,b,c,d:integer);
  begin
    setcolor(c);
    setfillstyle(1,c);
{    line(a-30,b+10,a+10,b-30);}
    ellipse(a,b,0,360,15,16);
    ellipse(a,b,0,360,17,17);
    ellipse(a,b,0,360,16,16);
    ellipse(a,b,0,360,18,18);
    ellipse(a,b,0,360,19,19);
    ellipse(a,b,0,360,20,20);
    ellipse(a,b,0,360,21,21);

  end;
function sinus(a:real):real; { we did not know it was called sine }
var g:real;
  begin
    g:=a/180;
    sinus:=sin(g*pi);
  end;
function cosinus(a:real):real; { we also did not know it was called cosine }
var g:real;
  begin
    g:=a/180;
    cosinus:=cos(g*pi);
  end;
procedure recht(x,y,a,b,alfa,c:integer); { rectangle }
var n,m:integer;
    asin,bsin,acos,bcos:integer;
    i:integer;
  begin
    setcolor(c);
    asin:=round(a*sinus(alfa));
    acos:=round(a*cosinus(alfa));
    bsin:=round(b*sinus(alfa));
    bcos:=round(b*cosinus(alfa));


    line(x,y,x+acos,y-asin);
    line(x,y,x-bsin,y-bcos);


    n:=x-bsin;
    m:=y-bcos;
    line(n,m,n+acos,m-asin);
    line(n+acos,m-asin,x+acos,y-asin);
    setcolor(0);
  end;
procedure ff(x,y,a,b,alfa,c:integer);
var asin,bsin,acos,bcos:integer;
    ay:integer;
    i:integer;
  begin
    setcolor(c);
    asin:=round(a*sinus(alfa));
    acos:=round(a*cosinus(alfa));
    bsin:=round(b*sinus(alfa));
    bcos:=round(b*cosinus(alfa));
    for i:=1 to bsin do
      begin
        ay:=round(i*cosinus(alfa)/sinus(alfa));
        line(x-i,y-ay,x-i+acos,y-ay-asin);
      end;

    setcolor(0);
  end;
procedure tuzijatek(x,y,v0,k,c:integer); { tuzijatek = fireworks (intro feature) }
var j,i:integer;
    alfa:integer;
    t:real;
    dx,dy:real;
  begin
    randomize;
    for j:=1 to k do
      begin
        t:=j/1000*2;
        for i:=1 to 18 do
          begin
            alfa:=i*10*2;
            dx:=v0*cosinus(alfa)*t;
            dy:=v0*sinus(alfa)*t-10*t*t;
            putpixel(x+round(dx),y-round(dy),c);
          end;
        delay(1);
    end;
  end;
procedure f(a,b:integer);
begin
  setcolor(15);
  ellipse(a,b,0,360,27,7);
  ellipse(a,b,0,360,32,10);
  ellipse(a,b,0,360,30,8);
end;
procedure intro;
var i,x,y,z:integer;
  begin
    randomize;
    settextstyle(gothicfont,horizdir,12);
    for i:=1 to 80 do
      begin
        setcolor(i);
        outtextxy(260,i*2,'B');
        delay(6);
        setcolor(0);
        outtextxy(260,i*2,'B');
      end;
    setcolor(15);
    outtextxy(260,i*2,'B');
    for i:=1 to 80 do
      begin
        setcolor(i);
        outtextxy(i*2,160,'P');
        delay(6);
        setcolor(0);
        outtextxy(i*2,160,'P');
      end;
    setcolor(4);
    outtextxy(i*2,160,'P');
    for i:=1 to 140 do
      begin
        setcolor(i);
        outtextxy(640-i*2,160,'A');
        delay(6);
        setcolor(0);
        outtextxy(640-i*2,160,'A');
      end;
    setcolor(2);
    outtextxy(640-i*2,160,'A');
    setcolor(4);
    x:=random(14)+1;
    y:=random(14)+1;
    z:=random(14)+1;
    tuzijatek(100,100,30,1000,x);
    tuzijatek(300,50,30,1300,y);
    tuzijatek(520,100,30,1000,z);
    settextstyle(triplexfont,horizdir,3);
    settextjustify(centertext,centertext);
    outtextxy(320,400,'Pascal Basketball Association');
    settextstyle(triplexfont,horizdir,3);
    setcolor(2);
    outtextxy(320,420,'[Un]Censored version');
    settextstyle(triplexfont,horizdir,3);
    setlinestyle(0,0,1);
    settextstyle(defaultfont,horizdir,1);
  end;

var c,c2,eh,kkk:char;
    t,vx,vy,v:real;
    d,jatek:boolean;
    index:byte;
    pontszam:integer;
    nev:string;
    high:text;
    gr,gm,levisz,szog,dx,dy,k,i,j:integer;
    pont:array[1..6] of integer;
    nevek:array[1..6] of string;
    a,b:integer;
    dobas:integer;
    ge:integer;
    s,ss:string;
begin
  clrscr;
  assign(high,'score.txt');
  reset(high);
  for i:=1 to 5  do
    begin
      readln(high,s);
      readln(high,a);
      nevek[i]:=s;
      pont[i]:=a;
    end;
  i:=0;
  index:=1;
  gr:=DETECT;
  initgraph(gr,gm,' ');
  jatek:=true;
  delay(20);
  settextstyle(triplexfont, horizdir,2);
  setcolor(9);
  outtextxy(20,200,'PBA Basketball Game');
  outtextxy(20,220,'!!Uncensored!!');
  outtextxy(20,240,'not recommended for children under 12 years!!');
  outtextxy(20,260,'See intro [1] / Move on to menu [2]');
  c:=readkey;
  cleardevice;
  if(c='1') then intro;
  c:=' ';
  readkey;
  while(jatek) do
    begin
      cleardevice;
      settextjustify(centertext,centertext);
      settextstyle(triplexfont, horizdir,2);

      if index=1  then setcolor(4) else setcolor(3);
      rectangle(200,50,440,80);
      outtextxy(320,65,'New game - easy');

      if index=2  then setcolor(4) else setcolor(3);
      rectangle(200,100,440,130);
      outtextxy(320,115,'New game - hard');

      if index=3  then setcolor(4) else setcolor(3);
      rectangle(200,150,440,180);
      outtextxy(320,165,'Highscores');

      if index=4  then setcolor(4) else setcolor(3);
      rectangle(200,200,440,230);
      outtextxy(320,215,'Hints');

      if index=5  then setcolor(4) else setcolor(3);
      rectangle(200,250,440,280);
      outtextxy(320,265,'Credits');

      if index=6  then setcolor(4) else setcolor(3);
      rectangle(200,300,440,330);
      outtextxy(320,315,'Exit');
      setcolor(2);

      settextstyle(defaultfont, horizdir, 1);
      c:=readkey;
      if(c='8') then index:=index-1;
      if(index=0) then index:=6;
      if(c='2') then index:=index+1;
      if(index=7) then index:=1;
      if( ((index=1) or (index=2)) and (ord(c)=13)) then
          begin
           cleardevice;
           settextstyle(gothicfont,horizdir,3);
           outtextxy(100,100,'Enter your name: ');
           nev:='';
           kkk:=' ';
           while (ord(kkk)<>13) do
             begin
               kkk:=readkey;
               nev:=nev+kkk;
               settextjustify(0,0);
               outtextxy(200,112,nev);
             end;
           nev:=copy(nev,1,ord(nev[0])-1);
           settextstyle(defaultfont,horizdir,1);
           pontszam:=0;
           dobas:=0;
           while(dobas-pontszam<3) do
            begin
             cleardevice;

             i:=1;
             k:=1;
             ter;
             ember(50,430);
             labda(50,300,6,0);
             palank(550,200,15,2,0);
             setcolor(15);
             line(195-180,205-100,195-180,110-100);
             line(195-180,205-100,290-180,205-100);
             arc(195-180,205-100,0,90,95);
             outtextxy(300-180,205-100,'0ø');
             outtextxy(10,4,'90ø');
             c2:=' ';
             while(c2=' ') do
              begin
               i:=i+k;
               recht(20,100,80,0,i,3);
               delay(10);
               recht(20,100,80,0,i,0);
               if(i<=10) then k:=1;
               if(i>70) then k:=-1;
               if keypressed then c2:=readkey;
              end;
             szog:=i;
             i:=58;
             k:=-1;
             c2:=' ';
             if(index=1) then i:=56;
             if index=2 then
             while(c2=' ') do
               begin
                 i:=i+k;
                 recht(20,100,i,0,szog,4);
                 delay(4);
                 recht(20,100,i,0,szog,0);
                 if(i>80) then k:=-k;
                 if(i<0) then k:=-k;
                 if keypressed then c2:=readkey;
               end;
             v:=i*1.6;
             vx:=v*cosinus(szog);
             vy:=v*sinus(szog);
             ge:=0;
             i:=5;
             dy:=100;
             dx:=0+50;
             labda(50,300,0,0);
             setcolor(15);
             ember(50,430);
             setcolor(0);
             while((dy+10>0) and (dx+20<640)) do
               begin
                 i:=i+1;
                 t:=i/vx;
                 dx:=i+50;
                 dy:=round(vy*t-5*t*t)+105;
                 if (dx>523) then
                 begin
                   setfillstyle(2,15);
                   bar(585,200,640,204);
                 end;
                 if((dx>523) and (dx<577)) then
                 begin
                   f(550,200);
                 end;
                 labda(20+dx,400-dy-5,6,0);
                 if((dx>523) and (dx<577)) then palank(550,200,15,2,1);
                 delay(1);
                 labdax(20+dx,400-dy-5,0,0);
                 setcolor(15);
                 setcolor(0);
                 if((20+dx>536) and (20+dx<570)) then
                   begin
                   if( (395-dy<220) and (395-dy>180) ) then
                     begin
                       labda(20+dx,395-dy,0,0);
                       for levisz:=220 to 400 do
                         begin
                           f(550,200);
                           labda(550,levisz,6,0);
                           delay(1);
                           labdax(550,levisz,0,0);
                           palank(550,200,15,2,1);
                         end;
                       dx:=660;
                       pontszam:=pontszam+1;
                     end;
                     end
                     else
                     if ge=0 then
                     begin
                          dobas:=dobas+1;
                          ge:=1;
                     end;
               end;
            end;
           nevek[6]:=nev;
           pont[6]:=pontszam*index*index*index;
           rewrite(high);
           for i:=1 to 6 do
             for j:=1 to 6 do
               if(pont[i]>pont[j]) then
                 begin
                   pont[i]:=pont[i]+pont[j];
                   pont[j]:=pont[i]-pont[j];
                   pont[i]:=pont[i]-pont[j];
                   s:=nevek[i];
                   nevek[i]:=nevek[j];
                   nevek[j]:=s;
                 end;
           for i:=1 to 5 do
             begin
               writeln(high,nevek[i]);
               writeln(high,pont[i]);
             end;
          end;
        if((index=3) and (ord(c)=13)) then
          begin
            cleardevice;
            settextstyle(gothicfont, horizdir,5);
            setcolor(1);
            outtextxy(200,20,'PBA - Hall of fame');
            setcolor(3);
            settextstyle(triplexfont,horizdir,3);
            for i:=1 to 5 do
              begin
                str(pont[i],ss);
                outtextxy(170,80+i*40,nevek[i]+'  -  '+ss);
              end;
            readkey;
          end;
        if (index=4) and (ord(c)=13) then
          begin
            cleardevice;

            settextstyle(gothicfont, horizdir,6);
            setcolor(3);
            outtextxy(160,100,'Rules & hints');
            labda(400,20,1,4);
            palank(400,60,15,4,2);
            settextjustify(centertext,centertext);
            settextstyle(triplexfont, horizdir,1);
            setcolor(9);
            outtextxy(320,150,'Toggle the menu bars with 8 and 2 and select new game');
            outtextxy(320,180,'Type your name so it can appear in the highscore chart');
            outtextxy(320,210,'As you enter the basketball court, ');
            outtextxy(320,240,'you will see a line moving in circle at the right top of the screen');
            outtextxy(320,270,'By pressing any key select then launching angle of the basketball.');
            outtextxy(320,300,'If you_re in hard mode, you will have to set the velocity as well.');
            outtextxy(320,330,'Throwing continues until you miss 3 times');
            outtextxy(320,360,'With your score you can enter in then Top5 Hall of Fame of PBA');
            outtextxy(320,390,'Good luck!! Have fun!!');
            readkey;
          end;
        if((index=5) and (ord(c)=13)) then
          begin
            cleardevice;
            settextstyle(Gothicfont, horizdir,2);
            setcolor(8);
            outtextxy(320,60,'PASCAL BASKETBALL ASSOCIATION');
            settextstyle(Triplexfont, horizdir,2);
            setcolor(4);
            outtextxy(290,120,'Created by: ');
            setcolor(2);
            outtextxy(340,150,'Gajd¢ Tam s');
            setcolor(2);
            outtextxy(340,170,'Plugor Tam s');
            setcolor(2);
            outtextxy(340,190,'Szerzo P‚ter');
            setcolor(3);

            outtextxy(320,320,'Thank you for buying this version!');
            outtextxy(320,340,'Please do not distribute this game!');
            setcolor(3);
            outtextxy(320,360,'...or maybe you can make a few copies, but be gentle');


            setcolor(15);
            settextstyle(defaultfont, horizdir,1);
            setcolor(4);
            outtextxy(450,460,'Copyright <c> 2006');


            readkey;
          end;
        if((index=6) and (ord(c)=13)) then
          begin
            cleardevice;
            settextstyle(Gothicfont, horizdir,3);
            setcolor(6);
            outtextxy(200,200,'Are you sure? (y/n)');
            c:=readkey;
            if(c='y') then
             jatek:=false;
          end;
        c:=' ';
    end;
    close(high);
end.