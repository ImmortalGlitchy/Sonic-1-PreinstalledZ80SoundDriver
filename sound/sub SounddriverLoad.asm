; ---------------------------------------------------------------------------
; Subroutine to	load the sound driver
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SoundDriverLoad:
		move.w	sr,-(sp)
		disable_ints
        stopZ80
		resetZ80
		lea	SoundDriver(pc),a0	; load sound driver
		lea	(z80_ram).l,a1	; target Z80 RAM
		jsr	(KosDec).w		; decompress
		btst	#6,(v_megadrive).w	; check video mode
		sne	(z80_ram+zPalModeByte).l	; set if PAL		
		resetZ80a
		resetZ80
		startZ80
		enable_ints
		move.w	(sp)+,sr
		rts
; End of function SoundDriverLoad