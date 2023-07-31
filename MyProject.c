int i=20 ,j=23 ,c1=0 ,c2=2 ,x=0 , y=0,zz=0 ;
int arr[] = {0, 1, 2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34,35} ;
#define ds delay_ms(1000)
void start()
{
trisc=0 ;
portc=0 ;
trisd =0 ;
portd=0 ;
trisa.f4=1 ;
trisb=0b00000001 ;
portb =0 ;
}
void main() {
start() ;
while(1)
{
 while (porta.f4)
{
    portb.f1=1 ;
    if(i==20 && j==23)
    {
       portb=0 ;
        portb.f1=1 ;
       portb.f4=1 ;
       portb.f5=1 ;
    }

    x=0 ;
    zz=0 ;
   portc =arr[i] ;
   portd =arr[j] ;
     ds ; // delay
    i-- ;
    j-- ;

    if(i==0)
    {
        if(c1==0 )
        {
        c1++ ; ;
        i=3 ;
        portb.f3=1 ;
        portb.f4=0 ;
        portb.f2=0 ;
        }
        else if(c1==1)
        {
         c1=2 ;
         i=15 ;
        portb.f3=0 ;
        portb.f4=0 ;
        portb.f2=1 ;
        }
        else
        {
        c1=0 ;
        i=20 ;
        portb.f3=0 ;
        portb.f4=1 ;
        portb.f2=0 ;
        }
    }

    if(j==0)
    {
        if(c2==0 )
        {
        c2++ ; ;
        j=3 ;
        portb.f6=1 ;
        portb.f7=0 ;
        portb.f5 =0 ;
        }
        else if(c2==1)
        {
         c2=2 ;
         j=23 ;
        portb.f6=0 ;
        portb.f7=0 ;
        portb.f5 =1 ;
        }
        else
        {
        c2=0 ;
        j=12 ;
        portb.f6=0 ;
        portb.f7=1 ;
        portb.f5 =0 ;
        }
    }
}

         if(portb.f3==1)
         {
         while(i)
         {
         portc =arr[i] ;
         portd =arr[i] ;
         i-- ;
         ds ;
         }
         portb.f3 =0 ;
         portb.f5 =0 ;
         portb.f4 =0 ;
         portb.f2=1 ;
         portb.f7=1 ;
            i= 15 ; j =12 ;
            c1=2 ; c2=0 ;
         }
          if(portb.f6==1)
         {
          while(j)
         {
         portc =arr[j] ;
         portd =arr[j] ;
         j-- ;
         ds ;
         }
         portb.f5=1 ;
         portb.f4=1 ;
         portb.f6=0 ;
         portb.f2=0 ;
         portb.f7=0 ;
            i= 20 ; j =23 ;
            c1=0 ; c2=2 ;
         }
while(!porta.f4)
{
         portb.f1=0 ;
         if(portb.f4==1 && portb.f5==1) x= 2 ;
         if(portb.f2==1 && portb.f7==1) x= 1 ;
          if(x==0)
         {
          portb.f2=0 ; portb.f5=1 ;
          portb.f3=0 ; portb.f6=0 ;
          portb.f4=1 ; portb.f7=0 ;
          x=2 ;
         }
         while(portb.f0==1 && porta.f4==0) ;
         x++ ;
         if(x>2) x=1 ;
         zz=1 ;
         while(portb.f0==0 && porta.f4==0) ;
         if(porta.f4) break ;
         
         if(x==1 && zz==1)
         {
         for(y=3 ;y>0 ;y--)
         {
          portb.f1=1 ;
          portc =arr[y] ; portd=0 ;
          portb.f3=1 ;   portb.f4=0 ;
          ds ;
         }
          portb.f1=0 ;
         portb.f3=0 ; portb.f2=1 ;
         portb.f5=0 ; portb.f7=1 ;
            i= 15 ; j =12 ;  c1=2 ; c2=0 ;
         }
         else if(x==2 && zz==1)
         {
         for(y=3 ;y>0 ;y--)  {
         portb.f1=1 ;
          portc =0 ; portd=arr[y] ;
          portb.f6=1 ; portb.f7=0 ;
          ds ;
          }
           portb.f1=0 ;
           portb.f2=0 ; portb.f6=0 ;
           portb.f4=1 ; portb.f5=1 ;
            i= 20 ; j =23 ; c1=0 ; c2=2 ;
         }
}
}
}