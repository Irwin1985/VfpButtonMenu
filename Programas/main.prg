*-----------------------------------------------------------------------------------------------------*
* Programa principal.
* Clase VFP Button Menu v 0.1.1
* Creada por Irwin Rodríguez
* Barquisimeto - Venezuela
* Agosto 14 2016 Hora: 02:35
* Cualquier sugerencia escribir al grupo de VFP bajo el tema: VFP Button Menu
* o enviar un email a rodriguez.irwin@gmail.com
*-----------------------------------------------------------------------------------------------------*
PUBLIC GCDIRSISTEMA, GCDIRIMA
GCDIRSISTEMA = ADDBS(SYS(5)+SYS(2003))
SET CLASSLIB TO 'VFPBUTTONMENU' ADDITIVE
GCDIRIMA = ADDBS(GCDIRSISTEMA + "IMAGENES")
ON ERROR DO MANEJAERROR WITH PROGRAM(),LINENO(),ERROR(),MESSAGE()
DO FORM FORMS\MAIN
READ EVENTS
SET SYSMENU ON
SET TALK ON
CLEAR WINDOW
POP MENU _MSYSMENU
PUSH KEY CLEAR
ON ERROR
SET SYSMENU TO DEFAULT
CLEAR ALL
CLEAR MEMO
ENDPROC

PROCEDURE MANEJAERROR
PARAMETERS PROGRAMA,LINEA,NUMERROR,MENSAJE
	MESSAGEBOX("ERROR "+STR(NUMERROR,2)+" "+MENSAJE + " " + PROGRAMA + STR(LINEA))
ENDPROC
