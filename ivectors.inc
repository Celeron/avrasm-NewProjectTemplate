;=== BEGIN "ivectors.inc" ==================================================

; Тут располагается "таблица векторов на обработчики прерываний" - важнейшая вещь! 
; Если про нее забыть, то можно огрести такие неразрешимые глюки, что просто капец. Так что не забываем...
; (Вынесено из общего кода в отдельный файл - для облегчения портирования программы на другой камень...)
;
; КАК СДЕЛАТЬ: 
; Скопировать секцию "INTERRUPT VECTORS" из HAL-файла Микроконтроллера (например, "tn85def.inc"),
; Заменить все ".equ" на ".org"... и дописать ко всем точкам входа команду RETI.
; (Это на тот случай, если Прерывание случайно вылезет - чтобы вернуть управление туда, откуда прервалось.)


; ***** INTERRUPT VECTORS ************************************************
; Используем HAL Микроконтроллера "ATtiny85"

		.ORG	INT0addr	; External Interrupt 0
		RETI
		.ORG	PCI0addr	; Pin change Interrupt Request 0
		RETI
		.ORG	OC1Aaddr	; Timer/Counter1 Compare Match 1A
		RETI
		.ORG	OVF1addr	; Timer/Counter1 Overflow
		RETI
		.ORG	OVF0addr	; Timer/Counter0 Overflow
		RJMP	TIMER0_OVERFLOW_HANDLER
		.ORG	ERDYaddr	; EEPROM Ready
		RETI
		.ORG	ACIaddr		; Analog comparator
		RETI
		.ORG	ADCCaddr	; ADC Conversion ready
		RETI
		.ORG	OC1Baddr	; Timer/Counter1 Compare Match B
		RETI
		.ORG	OC0Aaddr	; Timer/Counter0 Compare Match A
		RETI
		.ORG	OC0Baddr	; Timer/Counter0 Compare Match B
		RETI
		.ORG	WDTaddr		; Watchdog Time-out
		RETI
		.ORG	USI_STARTaddr	; USI START
		RETI
		.ORG	USI_OVFaddr	; USI Overflow
		RETI

		.ORG	INT_VECTORS_SIZE	; Конец таблицы прерываний


;=== END "ivectors.inc" ====================================================
