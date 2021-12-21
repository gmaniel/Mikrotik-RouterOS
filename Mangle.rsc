/ip firewall mangle
add action=mark-connection chain=prerouting comment=EnlaceServidor \
    new-connection-mark=cnn_servidor passthrough=yes src-address=\
    192.168.88.0/24
add action=mark-packet chain=prerouting comment=VOUCHER connection-mark=\
    cnn_servidor new-packet-mark=pk_voucher passthrough=no src-address-list=\
    Voucher
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Voucher new-packet-mark=pk_voucher passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkVoucher new-packet-mark=pk_voucher passthrough=no
add action=mark-packet chain=prerouting comment=Youtube connection-mark=\
    cnn_servidor layer7-protocol=MarkYOUTUBE new-packet-mark=pk_youtube \
    passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=YOUTUBE new-packet-mark=pk_youtube passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    new-packet-mark=pk_youtube passthrough=no src-address-list=Youtube
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Youtube new-packet-mark=pk_youtube passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkYOUTUBE new-packet-mark=pk_youtube passthrough=no
add action=mark-packet chain=prerouting comment=Netflix connection-mark=\
    cnn_servidor new-packet-mark=pk_Netflix passthrough=no src-address-list=\
    Netflix
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Netflix new-packet-mark=pk_Netflix passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkNetflix new-packet-mark=pk_Netflix passthrough=no
add action=mark-packet chain=prerouting comment=Spotify connection-mark=\
    cnn_servidor new-packet-mark=pk_spotify passthrough=no src-address-list=\
    Spotify
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Spotify new-packet-mark=pk_spotify passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkSpotify new-packet-mark=pk_spotify passthrough=no
add action=mark-packet chain=prerouting comment=Amazon connection-mark=\
    cnn_servidor dst-address-list=Amazon new-packet-mark=pk_amazon \
    passthrough=no
add action=mark-packet chain=prerouting comment=Deezer connection-mark=\
    cnn_servidor new-packet-mark=pk_deezer passthrough=no src-address-list=\
    Deezer
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Deezer new-packet-mark=pk_deezer passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkDeezer new-packet-mark=pk_deezer passthrough=no
add action=mark-packet chain=prerouting comment="Claro Musica" \
    connection-mark=cnn_servidor new-packet-mark=pk_claro_musica passthrough=\
    no src-address-list=ClaroMusica
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=ClaroMusica new-packet-mark=pk_claro_musica passthrough=\
    no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkClaroMusica new-packet-mark=pk_claro_musica \
    passthrough=no
add action=mark-packet chain=prerouting comment=Facebook connection-mark=\
    cnn_servidor layer7-protocol=MarkFacebook new-packet-mark=pk_facebook \
    passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=m.facebook new-packet-mark=pk_facebook passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=facebook new-packet-mark=pk_facebook passthrough=no
add action=mark-packet chain=prerouting comment=TWITTER connection-mark=\
    cnn_servidor new-packet-mark=pk_twitter passthrough=no src-address-list=\
    Twiter
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Twiter new-packet-mark=pk_twitter passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkTwiter new-packet-mark=pk_twitter passthrough=no
add action=mark-packet chain=prerouting comment=Instagram connection-mark=\
    cnn_servidor new-packet-mark=pk_instagram passthrough=no \
    src-address-list=Instagram
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Instagram new-packet-mark=pk_instagram passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkInstagram new-packet-mark=pk_instagram passthrough=no
add action=mark-packet chain=prerouting comment=Snap connection-mark=\
    cnn_servidor new-packet-mark=pk_snapt passthrough=no src-address-list=\
    Snaptchat
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Snaptchat new-packet-mark=pk_snapt passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkSnap new-packet-mark=pk_snapt passthrough=no
add action=mark-packet chain=prerouting comment=Whatsapp connection-mark=\
    cnn_servidor new-packet-mark=pk_whatsap passthrough=no src-address-list=\
    Whatssap
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Whatssap new-packet-mark=pk_whatsap passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkWhatssap new-packet-mark=pk_whatsap passthrough=no
add action=mark-packet chain=prerouting comment=VIMEO connection-mark=\
    cnn_servidor new-packet-mark=pk_vimeo passthrough=no src-address-list=\
    Vimeo
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Vimeo new-packet-mark=pk_vimeo passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkVimeo new-packet-mark=pk_vimeo passthrough=no
add action=mark-packet chain=prerouting comment=Intagram connection-mark=\
    cnn_servidor layer7-protocol=INSTAGRAM new-packet-mark=mp_instagram \
    passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    new-packet-mark=mp_instagram passthrough=no src-address-list=INSTAGRAM
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=INSTAGRAM new-packet-mark=mp_instagram passthrough=no
add action=mark-packet chain=prerouting comment=Line connection-mark=\
    cnn_servidor new-packet-mark=pk_line passthrough=no src-address-list=Line
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=Line new-packet-mark=pk_line passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkLine new-packet-mark=pk_line passthrough=no
add action=mark-packet chain=prerouting comment=Amazon connection-mark=\
    cnn_servidor new-packet-mark=pk_amazon passthrough=no src-address-list=\
    Amazon
add action=mark-packet chain=prerouting comment=Email_WEB connection-mark=\
    cnn_servidor new-packet-mark=pk_correoE passthrough=no src-address-list=\
    CorreoE
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=CorreoE new-packet-mark=pk_correoE passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkGmail new-packet-mark=pk_correoE passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkInbox new-packet-mark=pk_correoE passthrough=no
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkOutlook new-packet-mark=pk_correoE passthrough=no
add action=mark-packet chain=prerouting comment="Google Drive" \
    connection-mark=cnn_servidor new-packet-mark=pk_google_drive passthrough=\
    no src-address-list=google
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    dst-address-list=google new-packet-mark=pk_google_drive passthrough=no
add action=mark-packet chain=prerouting comment=Clash connection-mark=\
    cnn_servidor new-packet-mark=pk_clash passthrough=no src-address-list=\
    Juegos
add action=mark-packet chain=prerouting connection-mark=cnn_servidor \
    layer7-protocol=MarkClash new-packet-mark=pk_clash passthrough=no
add action=mark-packet chain=prerouting comment=HTTP/S connection-mark=\
    cnn_servidor new-packet-mark=pk_http/s passthrough=no port=80,443 \
    protocol=tcp
add action=mark-packet chain=prerouting comment=Email_Apps connection-mark=\
    cnn_servidor new-packet-mark=pk_correo passthrough=no port=\
    25,110,143,465,587,995,993 protocol=tcp
add action=mark-packet chain=prerouting comment=VOIP connection-mark=\
    cnn_servidor dst-port=10000-20000 new-packet-mark=pk_voip passthrough=no \
    protocol=udp
add action=mark-packet chain=prerouting comment=SIP connection-mark=\
    cnn_servidor dst-port=5060 new-packet-mark=pk_voip passthrough=no \
    protocol=udp
add action=mark-packet chain=prerouting comment=DNS connection-mark=\
    cnn_servidor dst-port=53 new-packet-mark=pk_dns passthrough=no protocol=\
    tcp
add action=mark-packet chain=prerouting comment=PING connection-mark=\
    cnn_servidor new-packet-mark=pk_ping passthrough=no protocol=icmp
add action=mark-packet chain=prerouting comment=RESTO connection-mark=\
    cnn_servidor new-packet-mark=pk_resto passthrough=no
