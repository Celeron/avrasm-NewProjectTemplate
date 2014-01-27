
	.NOLIST				; Disable listfile generation.
	.include "tn85def.inc"		; ���������� HAL ����������������.
	.include "macrobaselib.inc"	; ���������� ������� ����������������.
	.include "macroapp.inc"		; ���������� ����������������, ������������ ��� ���������� ������ ����������.
	.LIST				; Reenable listfile generation.
	;.LISTMAC			; Turn macro expansion on?	(��� �������, ���������� ���� ��������� �������� � ������������������� ���� - ������, �� ������� ��������, �.�. ���������� ����� ������.)

	.include "data.inc"		; ������ ���������: 
					;	��������� � ���������� ���������; 
					;	������� SRAM � ����������; 
					;	������� EEPROM.


;***************************************************************************
;*
;*  FLASH (������� ����)
;*
;***************************************************************************
			.CSEG

		.ORG	0x0000		; (RESET) 
		RJMP	RESET
		.include "ivectors.inc"	; ������� �������� �� ����������� ����������


;***** BEGIN Interrupt handlers section ************************************

;---------------------------------------------------------------------------
;
; ����������: ������ ����������
;
;---------------------------------------------------------------------------

TIMER0_OVERFLOW_HANDLER:
		PUSHF	; ��������� �������� SREG � TEMP[1] � �����...
		PUSH	temp2
		;...

	Exit__TIMER0_OVERFLOW_HANDLER:
		POP temp2
		POPF
		RETI


;***** END Interrupt handlers section 


;***** ������������� *******************************************************
RESET:
		;WDTOFF		; Disable Watchdog timer permanently (ensure)
		STACKINIT	; ������������� �����
		RAMFLUSH	; ������� ������
		GPRFLUSH	; ������� ���


;***** BEGIN Internal Hardware Init ****************************************

; ������������� ������...

; ������������� ���������...

;***** END Internal Hardware Init 


;***** BEGIN External Hardware Init ****************************************
;***** END External Hardware Init 


;***** BEGIN "Run once" section (������ ������� ���������) *****************

		SEI  ; ��������� ���������� ����������

;***** END "Run once" section 


;***** BEGIN "Main" section ************************************************
MAIN:
		NOP		; �� �������� � �����������...
		RJMP	MAIN


;***** END "Main" section 

;***** BEGIN Procedures section ********************************************

	; ��������! � ������� �� ��������, ��� ��������, ������ � ���������, 
	; ���������� � ������� ������ ��������� - �������� �����! 
	; �������, ����� ������ ���� �������� ������ �� ���������, ������� 
	; ������� ������������. (��������� - ������� /* ���������������� */.)

	;.include "genproclib.inc"	; ���������� ����������� �����������.




;***** END Procedures section 
; coded by (c) Celeron, 2013 @ http://we.easyelectronics.ru/my/Celeron/
