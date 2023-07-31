
_start:

;MyProject.c,4 :: 		void start()
;MyProject.c,6 :: 		trisc=0 ;
	CLRF       TRISC+0
;MyProject.c,7 :: 		portc=0 ;
	CLRF       PORTC+0
;MyProject.c,8 :: 		trisd =0 ;
	CLRF       TRISD+0
;MyProject.c,9 :: 		portd=0 ;
	CLRF       PORTD+0
;MyProject.c,10 :: 		trisa.f4=1 ;
	BSF        TRISA+0, 4
;MyProject.c,11 :: 		trisb=0b00000001 ;
	MOVLW      1
	MOVWF      TRISB+0
;MyProject.c,12 :: 		portb =0 ;
	CLRF       PORTB+0
;MyProject.c,13 :: 		}
L_end_start:
	RETURN
; end of _start

_main:

;MyProject.c,14 :: 		void main() {
;MyProject.c,15 :: 		start() ;
	CALL       _start+0
;MyProject.c,16 :: 		while(1)
L_main0:
;MyProject.c,18 :: 		while (porta.f4)
L_main2:
	BTFSS      PORTA+0, 4
	GOTO       L_main3
;MyProject.c,20 :: 		portb.f1=1 ;
	BSF        PORTB+0, 1
;MyProject.c,21 :: 		if(i==20 && j==23)
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVLW      20
	XORWF      _i+0, 0
L__main69:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	MOVLW      0
	XORWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVLW      23
	XORWF      _j+0, 0
L__main70:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
L__main66:
;MyProject.c,23 :: 		portb=0 ;
	CLRF       PORTB+0
;MyProject.c,24 :: 		portb.f1=1 ;
	BSF        PORTB+0, 1
;MyProject.c,25 :: 		portb.f4=1 ;
	BSF        PORTB+0, 4
;MyProject.c,26 :: 		portb.f5=1 ;
	BSF        PORTB+0, 5
;MyProject.c,27 :: 		}
L_main6:
;MyProject.c,29 :: 		x=0 ;
	CLRF       _x+0
	CLRF       _x+1
;MyProject.c,30 :: 		zz=0 ;
	CLRF       _zz+0
	CLRF       _zz+1
;MyProject.c,31 :: 		portc =arr[i] ;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;MyProject.c,32 :: 		portd =arr[j] ;
	MOVF       _j+0, 0
	MOVWF      R0+0
	MOVF       _j+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,33 :: 		ds ; // delay
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,34 :: 		i-- ;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,35 :: 		j-- ;
	MOVLW      1
	SUBWF      _j+0, 1
	BTFSS      STATUS+0, 0
	DECF       _j+1, 1
;MyProject.c,37 :: 		if(i==0)
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      0
	XORWF      _i+0, 0
L__main71:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;MyProject.c,39 :: 		if(c1==0 )
	MOVLW      0
	XORWF      _c1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVLW      0
	XORWF      _c1+0, 0
L__main72:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;MyProject.c,41 :: 		c1++ ; ;
	INCF       _c1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _c1+1, 1
;MyProject.c,42 :: 		i=3 ;
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,43 :: 		portb.f3=1 ;
	BSF        PORTB+0, 3
;MyProject.c,44 :: 		portb.f4=0 ;
	BCF        PORTB+0, 4
;MyProject.c,45 :: 		portb.f2=0 ;
	BCF        PORTB+0, 2
;MyProject.c,46 :: 		}
	GOTO       L_main10
L_main9:
;MyProject.c,47 :: 		else if(c1==1)
	MOVLW      0
	XORWF      _c1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVLW      1
	XORWF      _c1+0, 0
L__main73:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;MyProject.c,49 :: 		c1=2 ;
	MOVLW      2
	MOVWF      _c1+0
	MOVLW      0
	MOVWF      _c1+1
;MyProject.c,50 :: 		i=15 ;
	MOVLW      15
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,51 :: 		portb.f3=0 ;
	BCF        PORTB+0, 3
;MyProject.c,52 :: 		portb.f4=0 ;
	BCF        PORTB+0, 4
;MyProject.c,53 :: 		portb.f2=1 ;
	BSF        PORTB+0, 2
;MyProject.c,54 :: 		}
	GOTO       L_main12
L_main11:
;MyProject.c,57 :: 		c1=0 ;
	CLRF       _c1+0
	CLRF       _c1+1
;MyProject.c,58 :: 		i=20 ;
	MOVLW      20
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;MyProject.c,59 :: 		portb.f3=0 ;
	BCF        PORTB+0, 3
;MyProject.c,60 :: 		portb.f4=1 ;
	BSF        PORTB+0, 4
;MyProject.c,61 :: 		portb.f2=0 ;
	BCF        PORTB+0, 2
;MyProject.c,62 :: 		}
L_main12:
L_main10:
;MyProject.c,63 :: 		}
L_main8:
;MyProject.c,65 :: 		if(j==0)
	MOVLW      0
	XORWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      0
	XORWF      _j+0, 0
L__main74:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;MyProject.c,67 :: 		if(c2==0 )
	MOVLW      0
	XORWF      _c2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVLW      0
	XORWF      _c2+0, 0
L__main75:
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;MyProject.c,69 :: 		c2++ ; ;
	INCF       _c2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _c2+1, 1
;MyProject.c,70 :: 		j=3 ;
	MOVLW      3
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
;MyProject.c,71 :: 		portb.f6=1 ;
	BSF        PORTB+0, 6
;MyProject.c,72 :: 		portb.f7=0 ;
	BCF        PORTB+0, 7
;MyProject.c,73 :: 		portb.f5 =0 ;
	BCF        PORTB+0, 5
;MyProject.c,74 :: 		}
	GOTO       L_main15
L_main14:
;MyProject.c,75 :: 		else if(c2==1)
	MOVLW      0
	XORWF      _c2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main76
	MOVLW      1
	XORWF      _c2+0, 0
L__main76:
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;MyProject.c,77 :: 		c2=2 ;
	MOVLW      2
	MOVWF      _c2+0
	MOVLW      0
	MOVWF      _c2+1
;MyProject.c,78 :: 		j=23 ;
	MOVLW      23
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
;MyProject.c,79 :: 		portb.f6=0 ;
	BCF        PORTB+0, 6
;MyProject.c,80 :: 		portb.f7=0 ;
	BCF        PORTB+0, 7
;MyProject.c,81 :: 		portb.f5 =1 ;
	BSF        PORTB+0, 5
;MyProject.c,82 :: 		}
	GOTO       L_main17
L_main16:
;MyProject.c,85 :: 		c2=0 ;
	CLRF       _c2+0
	CLRF       _c2+1
;MyProject.c,86 :: 		j=12 ;
	MOVLW      12
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
;MyProject.c,87 :: 		portb.f6=0 ;
	BCF        PORTB+0, 6
;MyProject.c,88 :: 		portb.f7=1 ;
	BSF        PORTB+0, 7
;MyProject.c,89 :: 		portb.f5 =0 ;
	BCF        PORTB+0, 5
;MyProject.c,90 :: 		}
L_main17:
L_main15:
;MyProject.c,91 :: 		}
L_main13:
;MyProject.c,92 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,94 :: 		if(portb.f3==1)
	BTFSS      PORTB+0, 3
	GOTO       L_main18
;MyProject.c,96 :: 		while(i)
L_main19:
	MOVF       _i+0, 0
	IORWF      _i+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
;MyProject.c,98 :: 		portc =arr[i] ;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _arr+0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;MyProject.c,99 :: 		portd =arr[i] ;
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,100 :: 		i-- ;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,101 :: 		ds ;
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;MyProject.c,102 :: 		}
	GOTO       L_main19
L_main20:
;MyProject.c,103 :: 		portb.f3 =0 ;
	BCF        PORTB+0, 3
;MyProject.c,104 :: 		portb.f5 =0 ;
	BCF        PORTB+0, 5
;MyProject.c,105 :: 		portb.f4 =0 ;
	BCF        PORTB+0, 4
;MyProject.c,106 :: 		portb.f2=1 ;
	BSF        PORTB+0, 2
;MyProject.c,107 :: 		portb.f7=1 ;
	BSF        PORTB+0, 7
;MyProject.c,108 :: 		i= 15 ; j =12 ;
	MOVLW      15
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
	MOVLW      12
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
;MyProject.c,109 :: 		c1=2 ; c2=0 ;
	MOVLW      2
	MOVWF      _c1+0
	MOVLW      0
	MOVWF      _c1+1
	CLRF       _c2+0
	CLRF       _c2+1
;MyProject.c,110 :: 		}
L_main18:
;MyProject.c,111 :: 		if(portb.f6==1)
	BTFSS      PORTB+0, 6
	GOTO       L_main22
;MyProject.c,113 :: 		while(j)
L_main23:
	MOVF       _j+0, 0
	IORWF      _j+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main24
;MyProject.c,115 :: 		portc =arr[j] ;
	MOVF       _j+0, 0
	MOVWF      R0+0
	MOVF       _j+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _arr+0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;MyProject.c,116 :: 		portd =arr[j] ;
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,117 :: 		j-- ;
	MOVLW      1
	SUBWF      _j+0, 1
	BTFSS      STATUS+0, 0
	DECF       _j+1, 1
;MyProject.c,118 :: 		ds ;
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
	NOP
;MyProject.c,119 :: 		}
	GOTO       L_main23
L_main24:
;MyProject.c,120 :: 		portb.f5=1 ;
	BSF        PORTB+0, 5
;MyProject.c,121 :: 		portb.f4=1 ;
	BSF        PORTB+0, 4
;MyProject.c,122 :: 		portb.f6=0 ;
	BCF        PORTB+0, 6
;MyProject.c,123 :: 		portb.f2=0 ;
	BCF        PORTB+0, 2
;MyProject.c,124 :: 		portb.f7=0 ;
	BCF        PORTB+0, 7
;MyProject.c,125 :: 		i= 20 ; j =23 ;
	MOVLW      20
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
	MOVLW      23
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
;MyProject.c,126 :: 		c1=0 ; c2=2 ;
	CLRF       _c1+0
	CLRF       _c1+1
	MOVLW      2
	MOVWF      _c2+0
	MOVLW      0
	MOVWF      _c2+1
;MyProject.c,127 :: 		}
L_main22:
;MyProject.c,128 :: 		while(!porta.f4)
L_main26:
	BTFSC      PORTA+0, 4
	GOTO       L_main27
;MyProject.c,130 :: 		portb.f1=0 ;
	BCF        PORTB+0, 1
;MyProject.c,131 :: 		if(portb.f4==1 && portb.f5==1) x= 2 ;
	BTFSS      PORTB+0, 4
	GOTO       L_main30
	BTFSS      PORTB+0, 5
	GOTO       L_main30
L__main65:
	MOVLW      2
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
L_main30:
;MyProject.c,132 :: 		if(portb.f2==1 && portb.f7==1) x= 1 ;
	BTFSS      PORTB+0, 2
	GOTO       L_main33
	BTFSS      PORTB+0, 7
	GOTO       L_main33
L__main64:
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
L_main33:
;MyProject.c,133 :: 		if(x==0)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main77
	MOVLW      0
	XORWF      _x+0, 0
L__main77:
	BTFSS      STATUS+0, 2
	GOTO       L_main34
;MyProject.c,135 :: 		portb.f2=0 ; portb.f5=1 ;
	BCF        PORTB+0, 2
	BSF        PORTB+0, 5
;MyProject.c,136 :: 		portb.f3=0 ; portb.f6=0 ;
	BCF        PORTB+0, 3
	BCF        PORTB+0, 6
;MyProject.c,137 :: 		portb.f4=1 ; portb.f7=0 ;
	BSF        PORTB+0, 4
	BCF        PORTB+0, 7
;MyProject.c,138 :: 		x=2 ;
	MOVLW      2
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
;MyProject.c,139 :: 		}
L_main34:
;MyProject.c,140 :: 		while(portb.f0==1 && porta.f4==0) ;
L_main35:
	BTFSS      PORTB+0, 0
	GOTO       L_main36
	BTFSC      PORTA+0, 4
	GOTO       L_main36
L__main63:
	GOTO       L_main35
L_main36:
;MyProject.c,141 :: 		x++ ;
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;MyProject.c,142 :: 		if(x>2) x=1 ;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _x+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main78
	MOVF       _x+0, 0
	SUBLW      2
L__main78:
	BTFSC      STATUS+0, 0
	GOTO       L_main39
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
L_main39:
;MyProject.c,143 :: 		zz=1 ;
	MOVLW      1
	MOVWF      _zz+0
	MOVLW      0
	MOVWF      _zz+1
;MyProject.c,144 :: 		while(portb.f0==0 && porta.f4==0) ;
L_main40:
	BTFSC      PORTB+0, 0
	GOTO       L_main41
	BTFSC      PORTA+0, 4
	GOTO       L_main41
L__main62:
	GOTO       L_main40
L_main41:
;MyProject.c,145 :: 		if(porta.f4) break ;
	BTFSS      PORTA+0, 4
	GOTO       L_main44
	GOTO       L_main27
L_main44:
;MyProject.c,147 :: 		if(x==1 && zz==1)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main79
	MOVLW      1
	XORWF      _x+0, 0
L__main79:
	BTFSS      STATUS+0, 2
	GOTO       L_main47
	MOVLW      0
	XORWF      _zz+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main80
	MOVLW      1
	XORWF      _zz+0, 0
L__main80:
	BTFSS      STATUS+0, 2
	GOTO       L_main47
L__main61:
;MyProject.c,149 :: 		for(y=3 ;y>0 ;y--)
	MOVLW      3
	MOVWF      _y+0
	MOVLW      0
	MOVWF      _y+1
L_main48:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _y+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main81
	MOVF       _y+0, 0
	SUBLW      0
L__main81:
	BTFSC      STATUS+0, 0
	GOTO       L_main49
;MyProject.c,151 :: 		portb.f1=1 ;
	BSF        PORTB+0, 1
;MyProject.c,152 :: 		portc =arr[y] ; portd=0 ;
	MOVF       _y+0, 0
	MOVWF      R0+0
	MOVF       _y+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
	CLRF       PORTD+0
;MyProject.c,153 :: 		portb.f3=1 ;   portb.f4=0 ;
	BSF        PORTB+0, 3
	BCF        PORTB+0, 4
;MyProject.c,154 :: 		ds ;
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main51:
	DECFSZ     R13+0, 1
	GOTO       L_main51
	DECFSZ     R12+0, 1
	GOTO       L_main51
	DECFSZ     R11+0, 1
	GOTO       L_main51
	NOP
	NOP
;MyProject.c,149 :: 		for(y=3 ;y>0 ;y--)
	MOVLW      1
	SUBWF      _y+0, 1
	BTFSS      STATUS+0, 0
	DECF       _y+1, 1
;MyProject.c,155 :: 		}
	GOTO       L_main48
L_main49:
;MyProject.c,156 :: 		portb.f1=0 ;
	BCF        PORTB+0, 1
;MyProject.c,157 :: 		portb.f3=0 ; portb.f2=1 ;
	BCF        PORTB+0, 3
	BSF        PORTB+0, 2
;MyProject.c,158 :: 		portb.f5=0 ; portb.f7=1 ;
	BCF        PORTB+0, 5
	BSF        PORTB+0, 7
;MyProject.c,159 :: 		i= 15 ; j =12 ;  c1=2 ; c2=0 ;
	MOVLW      15
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
	MOVLW      12
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
	MOVLW      2
	MOVWF      _c1+0
	MOVLW      0
	MOVWF      _c1+1
	CLRF       _c2+0
	CLRF       _c2+1
;MyProject.c,160 :: 		}
	GOTO       L_main52
L_main47:
;MyProject.c,161 :: 		else if(x==2 && zz==1)
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVLW      2
	XORWF      _x+0, 0
L__main82:
	BTFSS      STATUS+0, 2
	GOTO       L_main55
	MOVLW      0
	XORWF      _zz+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main83
	MOVLW      1
	XORWF      _zz+0, 0
L__main83:
	BTFSS      STATUS+0, 2
	GOTO       L_main55
L__main60:
;MyProject.c,163 :: 		for(y=3 ;y>0 ;y--)  {
	MOVLW      3
	MOVWF      _y+0
	MOVLW      0
	MOVWF      _y+1
L_main56:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _y+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main84
	MOVF       _y+0, 0
	SUBLW      0
L__main84:
	BTFSC      STATUS+0, 0
	GOTO       L_main57
;MyProject.c,164 :: 		portb.f1=1 ;
	BSF        PORTB+0, 1
;MyProject.c,165 :: 		portc =0 ; portd=arr[y] ;
	CLRF       PORTC+0
	MOVF       _y+0, 0
	MOVWF      R0+0
	MOVF       _y+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,166 :: 		portb.f6=1 ; portb.f7=0 ;
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
;MyProject.c,167 :: 		ds ;
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main59:
	DECFSZ     R13+0, 1
	GOTO       L_main59
	DECFSZ     R12+0, 1
	GOTO       L_main59
	DECFSZ     R11+0, 1
	GOTO       L_main59
	NOP
	NOP
;MyProject.c,163 :: 		for(y=3 ;y>0 ;y--)  {
	MOVLW      1
	SUBWF      _y+0, 1
	BTFSS      STATUS+0, 0
	DECF       _y+1, 1
;MyProject.c,168 :: 		}
	GOTO       L_main56
L_main57:
;MyProject.c,169 :: 		portb.f1=0 ;
	BCF        PORTB+0, 1
;MyProject.c,170 :: 		portb.f2=0 ; portb.f6=0 ;
	BCF        PORTB+0, 2
	BCF        PORTB+0, 6
;MyProject.c,171 :: 		portb.f4=1 ; portb.f5=1 ;
	BSF        PORTB+0, 4
	BSF        PORTB+0, 5
;MyProject.c,172 :: 		i= 20 ; j =23 ; c1=0 ; c2=2 ;
	MOVLW      20
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
	MOVLW      23
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
	CLRF       _c1+0
	CLRF       _c1+1
	MOVLW      2
	MOVWF      _c2+0
	MOVLW      0
	MOVWF      _c2+1
;MyProject.c,173 :: 		}
L_main55:
L_main52:
;MyProject.c,174 :: 		}
	GOTO       L_main26
L_main27:
;MyProject.c,175 :: 		}
	GOTO       L_main0
;MyProject.c,176 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
