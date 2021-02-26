	org	07c00h			;gaosubianyichengxujiazaidao7c00chu
	mov	ax,cs
	mov	ds,ax
	mov	es,ax
	call	DispStr			;diaoyongxianshizifuchualicheng
	jmp	$			;wuxianxunhuan
DispStr:
	mov	ax,BootMessage
	mov	bp,ax			;ES:BP=chuandizhi
	mov	cx,16			;cx=chuanchangdu
	mov	ax,01301h		;AH=13,AL=01h
	mov	bx,000ch		;yehaowei0(BH=0)heidihongzi(BL=0ch,gaoliang)
	mov	dl,0
	int	10h			;10hhaozhongduan
	ret
BootMessage:		db	"Hello, os world!"
times	510-($-$$)	db	0	;tianchongshengxiadekongjian,shishengchengde
dw	0xaa55				;jieshubiaozhi
