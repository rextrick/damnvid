DV.preference_type_video=1
DV.preference_type_audio=2
DV.preference_type_profile=3
DV.preference_type_misc=4
# ---
DV.preferences={
	'damnvid-profile:name':{
		'name':'Profile name',
		'type':DV.preference_type_profile,
		'kind':'text',
		'strict':False,
		'default':'Untitled profile'
	},
	'damnvid-profile:video':{
		'name':'Encode video',
		'type':DV.preference_type_video,
		'kind':'bool',
		'strict':True,
		'align':True,
		'default':True
	},
	'damnvid-profile:audio':{
		'name':'Encode audio',
		'type':DV.preference_type_audio,
		'kind':'bool',
		'strict':True,
		'align':True,
		'default':True
	},
	'damnvid-profile:encoding_vcodec':{
		'name':'Video codec',
		'type':DV.preference_type_video,
		'kind':{
			'mpeg4':'MPEG-4',
			'mpeg1video':'MPEG-1',
			'mpeg2video':'MPEG-2',
			'flv':'Flash Video',
			'libxvid':'XVID',
			'libx264':'H.264',
			'h263p':'H.263+',
			'h263':'H.263',
			'h261':'H.261',
			'msmpeg4':'MS MPEG-4 v3',
			'msmpeg4v2':'MS MPEG-4 v2',
			'msmpeg4v1':'MS MPEG-4 v1',
			'rv20':'RealVideo v2',
			'rv10':'RealVideo v1',
			'wmv2':'WMV v8',
			'wmv1':'WMV v7',
			'libtheora':'Theora'
		},
		'order':['mpeg4','mpeg2video','mpeg1video','flv','libxvid','libx264','h263p','h263','h261','msmpeg4','msmpeg4v2','msmpeg4v1','rv20', 'rv10','wmv2', 'wmv1','libtheora'], # Because Python can't fucking remember the order of dictionaries, it seems.
		'strict':True,
		'default':'mpeg4'
	},
	'damnvid-profile:encoding_pass':{
		'name':'Number of passes',
		'type':DV.preference_type_video,
		'kind':{
			'1':'1 pass',
			'2':'2 passes'
		},
		'order':['1','2'],
		'strict':True,
		'default':'1'
	},
	'damnvid-profile:encoding_b':{
		'name':'Bitrate',
		'type':DV.preference_type_video,
		'kind':{
			'sameq':'(Same quality as source)',
			'256k':'256k',
			'512k':'512k',
			'768k':'768k',
			'1024k':'1024k',
			'1536k':'1536k',
			'2048k':'2048k',
			'3072k':'3092k',
			'4096k':'4096k'
		},
		'order':['sameq','256k','512k','768k','1024k','1536k','2048k','3072k','4096k'],
		'strict':False,
		'default':'sameq'
	},
	'damnvid-profile:encoding_qmin':{
		'name':'Minimum quantizer',
		'type':DV.preference_type_video,
		'kind':'int:1-50',
		'strict':True,
		'default':1
	},
	'damnvid-profile:encoding_qmax':{
		'name':'Maximum quantizer',
		'type':DV.preference_type_video,
		'kind':'int:2-51',
		'strict':True,
		'default':'31'
	},
	'damnvid-profile:encoding_s':{
		'name':'Resolution',
		'type':DV.preference_type_video,
		'kind':{
			'qqvga':'qqVGA (160x120)',
			'qvga':'qVGA (320x240)',
			'vga':'VGA (640x480)',
			'xga':'XGA (1024x768)',
			'hd480':'HD: 480p (852x480)',
			'hd720':'HD: 720p (1280x720)',
			'hd1080':'HD: 1080p (1920x1080)'
		},
		'order':['qqvga','qvga','vga','xga','hd480','hd720','hd1080'],
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_aspect':{
		'name':'Aspect ratio',
		'type':DV.preference_type_video,
		'kind':{
			'1':'1:1 (Square)',
			'4:3':'4:3 (SD)',
			'16:9':'16:9 (HDTV)',
			'1.5':'3:2',
			'1.85':'1.85:1',
			'2.39':'2.39:1'
		},
		'order':['1','4:3','16:9','1.5','1.85','2.39'],
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_f':{
		'name':'Output format',
		'type':DV.preference_type_misc,
		'kind':{
			'avi':'AVI format (.avi)',
			'flv':'Flash video format (.flv)',
			'mpeg1video':'MPEG video format (.mpg)',
			'mpeg2video':'MPEG-2 video format (.mpg)',
			'mpegts':'MPEG-2-TS (Transport Stream) format (.mpg)',
			'wmv':'Windows Media Video (.wmv)',
			'vob':'MPEG-2-PS (Program Stream) format (.vob)',
			'mp4':'MP4 format (.mp4)',
			'mp3':'MP3 format, audio only (.mp3)',
			'wma':'WMA format, audio only (.wma)',
			'mov':'QuickTime format (.mov)',
			'ipod':'iPod MP4 format (.mp4)',
			'psp':'PSP MP4 format (.mp4)',
			'rm':'RealMedia format (.rm)',
			'matroska':'Matroska format (.mkv)',
			'ogg':'Ogg Media File (.ogg)',
			'3gp':'3GPP format (.3gp)',
			'3g2':'3GPP2 format (.3g2)'
		},
		'order':['avi','flv','mpeg1video','mpeg2video','mpegts','mp4','mp3','mov','wmv','wma','ipod','psp','rm','matroska','ogg','vob','3gp','3g2'],
		'strict':True,
		'default':'avi'
	},
	'damnvid-profile:encoding_bufsize':{
		'name':'Buffer size',
		'type':DV.preference_type_video,
		'kind':'int',
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_ab':{
		'name':'Audio bitrate',
		'type':DV.preference_type_audio,
		'kind':'intk:5-10',
		'strict':False,
		'default':'128k'
	},
	'damnvid-profile:encoding_ac':{
		'name':'Channels',
		'type':DV.preference_type_audio,
		'kind':{
			'1':'1 (Mono)',
			'2':'2 (Stereo)'
		},
		'order':['1','2'],
		'strict':True,
		'default':'2'
	},
	'damnvid-profile:encoding_r':{
		'name':'Frames per second',
		'type':DV.preference_type_video,
		'kind':{
			'60':'60',
			'50':'50',
			'60000/1001':'60000/1001 (~59.94)',
			'45':'45',
			'30':'30',
			'30000/1001':'30000/1001 (~29.97)',
			'25':'25',
			'24':'24',
			'20':'20',
			'15':'15',
			'12':'12',
			'10':'10'
		},
		'order':['60','50','60000/1001','45','30000/1001','25','24','20','15','12','10'],
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_vol':{
		'name':'Volume (%)',
		'type':DV.preference_type_audio,
		'kind':'%256',
		'strict':False,
		'default':'256.0'
	},
	'damnvid-profile:encoding_minrate':{
		'name':'Minimum bitrate',
		'type':DV.preference_type_video,
		'kind':'intk:7-13',
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_maxrate':{
		'name':'Maximum bitrate',
		'type':DV.preference_type_video,
		'kind':'intk:7-13',
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_acodec':{
		'name':'Audio codec',
		'type':DV.preference_type_audio,
		'kind':{
			'libmp3lame':'MP3',
			'mp2':'MP2',
			'ac3':'AC-3',
			'flac':'FLAC',
			'libfaac':'AAC',
			'wmav2':'WMA v2',
			'wmav1':'WMA v1',
			'vorbis':'Vorbis'
		},
		'order':['libmp3lame','mp2','ac3','flac','libfaac','wmav2','wmav1','vorbis'],
		'strict':True,
		'default':'libmp3lame'
	},
	'damnvid-profile:encoding_g':{
		'name':'Group of pictures size',
		'type':DV.preference_type_video,
		'kind':'int',
		'strict':False,
		'default':''
	},
	'damnvid-profile:encoding_ar':{
		'name':'Sampling',
		'type':DV.preference_type_audio,
		'kind':{
			'11025':'11025 Hz',
			'22050':'22050 Hz',
			'24000':'24000 Hz',
			'44100':'44100 Hz',
			'48000':'48000 Hz',
			'96000':'96000 Hz'
		},
		'order':['11025','22050','24000','44100','48000','96000'],
		'strict':True,
		'default':'44100'
	},
	'damnvid-profile:encoding_bt':{
		'name':'Bitrate tolerance',
		'type':DV.preference_type_video,
		'kind':'intk:3-10',
		'strict':False,
		'default':''
	},
	'damnvid:dirrecursion':{
		'name':'Enable directory recursion when adding files',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid:checkforupdates':{
		'name':'Check for updates when DamnVid starts',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid:defaultoutdir':{
		'name':'Default output directory',
		'type':DV.preference_type_misc,
		'kind':'dir',
		'strict':False,
		'default':'?DAMNVID_MY_VIDEOS?/DamnVid/'
	},
	'damnvid:lastfiledir':{
		'name':'Last file directory',
		'type':DV.preference_type_misc,
		'kind':'dir',
		'noedit':True,
		'strict':False,
		'default':'?DAMNVID_MY_VIDEOS?/'
	},
	'damnvid:lastprefdir':{
		'name':'Last preference file directory',
		'type':DV.preference_type_misc,
		'kind':'dir',
		'noedit':True,
		'strict':False,
		'default':'?DAMNVID_CWD?/'
	},
	'damnvid:lastmoduledir':{
		'name':'Last module file directory',
		'type':DV.preference_type_misc,
		'kind':'dir',
		'noedit':True,
		'strict':False,
		'default':'?DAMNVID_CWD?/modules/'
	},
	'damnvid:defaultweboutdir':{
		'name':'Directly-downloaded videos directory',
		'type':DV.preference_type_misc,
		'kind':'dir',
		'strict':False,
		'default':'?DAMNVID_MY_VIDEOS?/DamnVid/'
	},
	'damnvid:defaultwebprofile':{
		'name':'Directly-downloaded videos profile',
		'type':DV.preference_type_profile,
		'kind':'profile',
		'strict':True
	},
	'damnvid:defaultprofile':{
		'name':'Default videos profile',
		'type':DV.preference_type_profile,
		'kind':'profile',
		'strict':True
	},
	'damnvid:threads':{
		'name':'Number of threads',
		'type':DV.preference_type_misc,
		'kind':'int',
		'strict':False,
		'default':''
	},
	'damnvid:windowpolicy':{
		'name':'Main window',
		'type':DV.preference_type_misc,
		'kind':{
			'center':'Always centered',
			'remember':'Remember position and size'
		},
		'order':['center','remember'],
		'strict':True,
		'default':'center'
	},
	'damnvid:minimizetotray':{
		'name':'Minimize to tray',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':False
	},
	'damnvid:splashscreen':{
		'name':'Show splashscreen at startup',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid:clipboard':{
		'name':'Monitor clipboard for video URLs',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid:autoconvert':{
		'name':'Start downloading and converting right away',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':False
	},
	'damnvid:warnremove':{
		'name':'Warn when removing a video from the list',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid:locale':{
		'name':'Language (requires restart)',
		'type':DV.preference_type_misc,
		'kind':'locale',
		'strict':True,
		'default':'English'
	},
	'damnvid:videohistorysize':{
		'name':'Video history size',
		'type':DV.preference_type_misc,
		'kind':'int:0-128',
		'strict':True,
		'default':42
	},
	#'damnvid:showdailytip':{
		#'name':'Show Daily Tip when DamnVid starts',
		#'type':DV.preference_type_misc,
		#'kind':'bool',
		#'strict':True,
		#'align':False,
		#'default':True
	#},
	'damnvid-search:doinitialsearch':{
		'name':'Perform search when launched',
		'type':DV.preference_type_misc,
		'kind':'bool',
		'strict':True,
		'align':False,
		'default':True
	},
	'damnvid-search:default_search':{
		'name':'Initial search query',
		'type':DV.preference_type_misc,
		'kind':{
			'most_popular':'Most popular',
			'most_viewed':'Most viewed',
			'top_rated':'Top rated',
			'recently_featured':'Recently featured',
			'most_recent':'Most recent',
			'most_discussed':'Most discussed',
			'top_favorites':'Top favorites',
			'most_linked':'Most linked',
			'most_responded':'Most responded'
		},
		'strict':False,
		'order':['most_popular','most_viewed','top_rated','recently_featured','most_recent','most_discussed','top_favorites','most_linked','most_responded'],
		'default':'recently_featured'
	},
	'damnvid-search:history_length':{
		'name':'Search history size',
		'type':DV.preference_type_misc,
		'kind':'int:0-50',
		'strict':True,
		'default':8
	},
	'damnvid-proxy:proxy':{
		'name':'Proxy type',
		'type':DV.preference_type_misc,
		'kind':{
			'none':'Direct connection',
			'default':'Use system settings',
			'http':'Use HTTP/HTTPS proxy',
			'socks4':'Use SOCKS4 proxy',
			'socks5':'Use SOCKS5 proxy'
		},
		'order':['none','default','http','socks4','socks5'],
		'strict':True,
		'default':'default'
	},
	'damnvid-proxy:http_proxy':{
		'name':'HTTP proxy',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'localhost'
	},
	'damnvid-proxy:https_proxy':{
		'name':'HTTPS proxy',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'localhost'
	},
	'damnvid-proxy:socks_proxy':{
		'name':'SOCKS proxy',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'localhost'
	},
	'damnvid-proxy:http_port':{
		'name':'HTTP proxy port',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'localhost'
	},
	'damnvid-proxy:https_port':{
		'name':'HTTPS proxy port',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'81'
	},
	'damnvid-proxy:socks_port':{
		'name':'SOCKS proxy port',
		'type':DV.preference_type_misc,
		'kind':'text',
		'strict':False,
		'default':'1080'
	}
}
DV.preference_order={
	'damnvid':['checkforupdates','locale','minimizetotray','splashscreen','warnremove','dirrecursion','windowpolicy','defaultprofile','defaultoutdir','defaultwebprofile','defaultweboutdir','clipboard','videohistorysize','threads'],
	'damnvid-profile':['video','audio','encoding_vcodec','encoding_r','encoding_b','encoding_f','encoding_s','encoding_aspect','encoding_minrate','encoding_maxrate','encoding_qmin','encoding_qmax','encoding_bt','encoding_bufsize','encoding_pass','encoding_g','encoding_acodec','encoding_vol','encoding_ab','encoding_ar','encoding_ac','name','outdir'],
	'damnvid-search':['doinitialsearch','default_search','history_length'],
	'damnvid-proxy':['proxy','http_proxy','http_port','https_proxy','https_port','socks_proxy','socks_port']
}
