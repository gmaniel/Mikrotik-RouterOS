/queue tree
add max-limit=15M name=Down parent=bridge-wifi
add name=videos parent=Down
add burst-limit=6M burst-threshold=2M burst-time=20s limit-at=3M max-limit=3M \
    name=youtube packet-mark=pk_youtube parent=videos queue=\
    pcq-download-default
add limit-at=4M max-limit=4M name=netflix packet-mark=pk_Netflix parent=\
    videos queue=pcq-download-default
add name=Redes_Sociales parent=Down
add limit-at=3M max-limit=3M name=facebook packet-mark=pk_facebook parent=\
    Redes_Sociales queue=pcq-download-default
add limit-at=3M max-limit=3M name=twitter packet-mark=pk_twitter parent=\
    Redes_Sociales queue=pcq-download-default
add limit-at=4048k max-limit=4048k name=instagram packet-mark=pk_instagram \
    parent=Redes_Sociales queue=pcq-download-default
add limit-at=1M max-limit=1M name=snaptchat packet-mark=pk_snapt parent=\
    Redes_Sociales queue=pcq-download-default
add limit-at=3M max-limit=3M name=whatssap packet-mark=pk_whatsap parent=\
    Redes_Sociales queue=pcq-download-default
add limit-at=1M max-limit=1M name=line packet-mark=pk_line parent=\
    Redes_Sociales queue=pcq-download-default
add burst-limit=2M burst-time=15s limit-at=512k max-limit=1M name=vimeo \
    packet-mark=pk_vimeo parent=videos queue=pcq-download-default
add burst-limit=8M burst-threshold=3M burst-time=20s limit-at=1M max-limit=6M \
    name=Upload parent=ether1
add name=upAudio parent=Upload
add name=upRedesSociales parent=Upload
add name=upVideos parent=Upload queue=pcq-upload-default
add limit-at=512k max-limit=1M name=upClaroMusica packet-mark=pk_claro_musica \
    parent=upAudio queue=pcq-upload-default
add limit-at=512k max-limit=1M name=upDeezer packet-mark=pk_deezer parent=\
    upAudio queue=pcq-upload-default
add limit-at=512k max-limit=1M name=upSpotify packet-mark=pk_spotify parent=\
    upAudio queue=pcq-upload-default
add limit-at=1M max-limit=1M name=upfacebook packet-mark=pk_facebook parent=\
    upRedesSociales queue=pcq-upload-default
add limit-at=2M max-limit=2M name=upInstagram packet-mark=pk_instagram \
    parent=upRedesSociales queue=pcq-upload-default
add name=Protocolos parent=Down
add burst-limit=4M burst-threshold=3M burst-time=30s limit-at=2M max-limit=2M \
    name=voip packet-mark=pk_voip parent=Protocolos queue=\
    pcq-download-default
add burst-limit=12M burst-threshold=6M burst-time=15s limit-at=2M max-limit=\
    5M name=correo_apps packet-mark=pk_correo parent=Protocolos queue=\
    pcq-download-default
add burst-limit=14M burst-threshold=6M burst-time=20s limit-at=6M max-limit=\
    9M name=http/s packet-mark=pk_http/s parent=Protocolos queue=\
    pcq-download-default
add limit-at=6M max-limit=6M name=correohttp packet-mark=pk_correoE parent=\
    Redes_Sociales queue=pcq-download-default
add burst-limit=14M burst-threshold=7M burst-time=20s limit-at=2M max-limit=\
    6M name=resto packet-mark=pk_resto parent=Down queue=pcq-download-default
add burst-limit=6M burst-threshold=2M burst-time=20s limit-at=3M max-limit=3M \
    name=upLine packet-mark=pk_line parent=upRedesSociales queue=\
    pcq-upload-default
add limit-at=1M max-limit=1M name=upSnaptchat packet-mark=pk_snapt parent=\
    upRedesSociales queue=pcq-upload-default
add limit-at=2M max-limit=2M name=upTwitter packet-mark=pk_whatsap parent=\
    upRedesSociales queue=pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=20s limit-at=4M max-limit=4M \
    name=upCorrohttp/s packet-mark=pk_correoE parent=upRedesSociales \
    priority=2 queue=pcq-upload-default
add limit-at=3M max-limit=3M name=upWhattsapp packet-mark=pk_whatsap parent=\
    upRedesSociales queue=pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=15s limit-at=4M max-limit=4M \
    name=upYoutube packet-mark=pk_youtube parent=upVideos queue=\
    pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=20s limit-at=4M max-limit=4M \
    name=upVimeo packet-mark=pk_vimeo parent=upVideos queue=\
    pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=15s limit-at=4M max-limit=4M \
    name=upNetflix packet-mark=pk_Netflix parent=upVideos queue=\
    pcq-upload-default
add name=upProtocolos parent=Upload
add burst-limit=8M burst-threshold=4M burst-time=25s limit-at=4M max-limit=6M \
    name=upHttp/s packet-mark=pk_http/s parent=upProtocolos queue=\
    pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=25s limit-at=3M max-limit=4M \
    name=upCorreo packet-mark=pk_correo parent=upProtocolos queue=\
    pcq-upload-default
add limit-at=1M max-limit=1M name=upVoip packet-mark=pk_voip parent=\
    upProtocolos queue=pcq-upload-default
add burst-limit=4M burst-threshold=4M burst-time=15s limit-at=1M max-limit=2M \
    name=upResto packet-mark=pk_resto parent=Upload queue=pcq-upload-default
add burst-limit=12M burst-threshold=6M burst-time=20s limit-at=8M max-limit=\
    10M name=Amazon packet-mark=pk_amazon parent=Protocolos priority=3 queue=\
    pcq-download-default
add burst-limit=4M burst-threshold=2M burst-time=20s limit-at=2M max-limit=3M \
    name=UPFACEBOOK packet-mark=pk_facebook parent=upRedesSociales queue=\
    pcq-upload-default
add burst-limit=6M burst-threshold=3M burst-time=15s limit-at=4M max-limit=4M \
    name=UPYOUTUBE packet-mark=mp_youtube parent=upVideos priority=1 queue=\
    pcq-upload-default
add name=Audio parent=Down
add limit-at=512k max-limit=3M name=ClaroMusica packet-mark=pk_claro_musica \
    parent=Audio queue=pcq-download-default
add limit-at=512k max-limit=1M name=Deezer packet-mark=pk_deezer parent=Audio \
    queue=pcq-download-default
add burst-limit=6M burst-threshold=2M burst-time=15s limit-at=4M max-limit=4M \
    name=upAmazon packet-mark=pk_amazon parent=upProtocolos priority=3 queue=\
    pcq-upload-default
add limit-at=512k max-limit=2M name=Spotify packet-mark=pk_spotify parent=\
    Audio queue=pcq-download-default
add burst-limit=12M burst-threshold=6M burst-time=15s limit-at=2M max-limit=\
    5M name=Correo_web packet-mark=pk_correoE parent=Protocolos queue=\
    pcq-download-default
add limit-at=2M max-limit=4M name=queue1 packet-mark=pk_correoE parent=\
    upProtocolos queue=pcq-upload-default
