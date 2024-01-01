
Size_of_DAC_samples =		$2F00
Size_of_SEGA_sound =		$6978
Size_of_Snd_driver_guess =	$1090 ; approximate post-compressed size of the Z80 sound driver

; Z80 addresses
z80_ram:		equ $A00000	; start of Z80 RAM
z80_ram_end:		equ $A02000	; end of non-reserved Z80 RAM
z80_version:		equ $A10001
z80_port_1_data:	equ $A10002
z80_port_1_control:	equ $A10008
z80_port_2_control:	equ $A1000A
z80_expansion_control:	equ $A1000C
z80_bus_request:	equ $A11100
z80_reset:		equ $A11200
ym2612_a0:		equ $A04000
ym2612_d0:		equ $A04001
ym2612_a1:		equ $A04002
ym2612_d1:		equ $A04003

security_addr:		equ $A14000

MusID_Pause =		$7F			; FE
MusID_Unpause =		$80			; FF

; Music IDs
offset :=	MusicIndex
ptrsize :=	2
idstart :=	$01

; Background music
bgm__First	= idstart
bgm_GHZ		= id(ptr_mus81)
bgm_LZ		= id(ptr_mus82)
bgm_MZ		= id(ptr_mus83)
bgm_SLZ		= id(ptr_mus84)
bgm_SYZ		= id(ptr_mus85)
bgm_SBZ		= id(ptr_mus86)
bgm_Invincible	= id(ptr_mus87)
bgm_ExtraLife	= id(ptr_mus88)
bgm_SS		= id(ptr_mus89)
bgm_Title	= id(ptr_mus8A)
bgm_Ending	= id(ptr_mus8B)
bgm_Boss	= id(ptr_mus8C)
bgm_FZ		= id(ptr_mus8D)
bgm_GotThrough	= id(ptr_mus8E)
bgm_GameOver	= id(ptr_mus8F)
bgm_Continue	= id(ptr_mus90)
bgm_Credits	= id(ptr_mus91)
bgm_Drowning	= id(ptr_mus92)
bgm_Emerald	= id(ptr_mus93)
bgm__Last	= id(ptr_musend)

; Sound IDs
offset :=	SoundIndex
ptrsize :=	2
idstart :=	bgm__Last

; Sound effects
sfx__First	= idstart
sfx_Jump	= id(ptr_sndA0)
sfx_Lamppost	= id(ptr_sndA1)
sfx_A2		= id(ptr_sndA2)
sfx_Death	= id(ptr_sndA3)
sfx_Skid	= id(ptr_sndA4)
sfx_A5		= id(ptr_sndA5)
sfx_HitSpikes	= id(ptr_sndA6)
sfx_Push	= id(ptr_sndA7)
sfx_SSGoal	= id(ptr_sndA8)
sfx_SSItem	= id(ptr_sndA9)
sfx_Splash	= id(ptr_sndAA)
sfx_AB		= id(ptr_sndAB)
sfx_HitBoss	= id(ptr_sndAC)
sfx_Bubble	= id(ptr_sndAD)
sfx_Fireball	= id(ptr_sndAE)
sfx_Shield	= id(ptr_sndAF)
sfx_Saw		= id(ptr_sndB0)
sfx_Electric	= id(ptr_sndB1)
sfx_Drown	= id(ptr_sndB2)
sfx_Flamethrower:= id(ptr_sndB3)
sfx_Bumper	= id(ptr_sndB4)
sfx_Ring	= id(ptr_sndB5)
sfx_SpikesMove	= id(ptr_sndB6)
sfx_Rumbling	= id(ptr_sndB7)
sfx_B8		= id(ptr_sndB8)
sfx_Collapse	= id(ptr_sndB9)
sfx_SSGlass	= id(ptr_sndBA)
sfx_Door	= id(ptr_sndBB)
sfx_Teleport	= id(ptr_sndBC)
sfx_ChainStomp	= id(ptr_sndBD)
sfx_Roll	= id(ptr_sndBE)
sfx_Continue	= id(ptr_sndBF)
sfx_Basaran	= id(ptr_sndC0)
sfx_BreakItem	= id(ptr_sndC1)
sfx_Warning	= id(ptr_sndC2)
sfx_GiantRing	= id(ptr_sndC3)
sfx_Bomb	= id(ptr_sndC4)
sfx_Cash	= id(ptr_sndC5)
sfx_RingLoss	= id(ptr_sndC6)
sfx_ChainRise	= id(ptr_sndC7)
sfx_Burning	= id(ptr_sndC8)
sfx_Bonus	= id(ptr_sndC9)
sfx_EnterSS	= id(ptr_sndCA)
sfx_WallSmash	= id(ptr_sndCB)
sfx_Spring	= id(ptr_sndCC)
sfx_Switch	= id(ptr_sndCD)
sfx_RingLeft	= id(ptr_sndCE)
sfx_Signpost	= id(ptr_sndCF)
sfx_Waterfall	= id(ptr_sndD0)
sfx__Last	= id(ptr_sndend)

offset :=	zCommandIndex
ptrsize :=	4
idstart :=	sfx__Last

flg__First	= idstart
bgm_Fade	= id(CmdPtr_FadeOut)
sfx_Sega	= id(CmdPtr_SegaSound)
bgm_Speedup	= id(CmdPtr_SpeedUp)
bgm_Slowdown	= id(CmdPtr_SlowDown)
bgm_Stop	= id(CmdPtr_Stop)
flg__Last	= id(CmdPtr__End)
