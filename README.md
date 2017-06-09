# Fail2Ban Monitoring Bash Script
Basic Bash Script To Check Fail2Ban Log Files. Needs GeoIP to be installed. 

## Usage

Wget or copy notfailed.sh script of this repo and run :

````
chmod +x notfailed.sh
sh notfailed.sh

````

Also you can make the output to text file in this way :

````
sh notfailed.sh
sh notfailed.sh.sh > test.txt

````

## Example output


````
This script need Fail2Ban Log at /var/log location and GeoIP to be installed.
----------------------------------------------------------------------------
----------------------------------------------------------------------------
Bad IPs from only from /var/log/fail2ban.log alone :
---Number-----IP-------------------------------------------------------------
      1 103.207.37.197 (103.207.37.197)
      1 103.53.108.38 (103.53.108.38)
      1 103.79.143.139 (103.79.143.139)
    111 123.183.209.132 (123.183.209.132)
      1 112.111.227.129 (112.111.227.129)
      1 115.209.63.241 (115.209.63.241)
     11 212-83-129-189.rev.poneytelecom.eu (212.83.129.189)
      1 139.217.14.205 (139.217.14.205)
      1 163-172-119-49.rev.poneytelecom.eu (163.172.119.49)
      1 163-172-212-115.rev.poneytelecom.eu (163.172.212.115)
      1 190-50-217-29.speedy.com.ar (190.50.217.29)
      1 195-154-53-146.rev.poneytelecom.eu (195.154.53.146)
      1 222.240.148.170 (222.240.148.170)
      1 40.206.214.190.static.pichincha.andinanet.net (190.214.206.40)
      1 65.19.167.131 (65.19.167.131)
      1 91.197.232.15 (91.197.232.15)
      1 atlantic850.dedicatedpanel.com (85.25.103.69)
      1 edwardsnowden1.torservers.net (109.163.234.8)
      1 hostby.chnet.se (91.211.1.10)
      1 marylou.nos-oignons.net (89.234.157.254)
      1 ori.enn.lu (85.248.227.163)
      1 ws254-239-252-122.rcil.gov.in (122.252.239.254)
      2 103.207.37.99 (103.207.37.99)
      2 238.146-245-23.rdns.scalabledns.com (23.245.146.238)
      2 localhost (113.176.150.215)
      3 212-83-141-117.rev.poneytelecom.eu (212.83.141.117)
      4 39.109.125.5 (39.109.125.5)
      4 HSI-KBW-5-158-155-172.hsi19.kabel-badenwuerttemberg.de (5.158.155.172)
----------------------------------------------------------------------------
---Number of password attempts failed from all non-gzipped fail2ban.log files:
Number--MM--DD-------------------------------------------------------------
    345 Jun 1
    279 Jun 2
    230 Jun 3
    566 Jun 4
    437 Jun 5
    466 Jun 6
    454 Jun 7
    485 Jun 8
    428 Jun 9
   1878 May 28
   6485 May 29
   1856 May 30
    375 May 31
Kind heartedly you unbanned :
---Number-----IP-------------------------------------------------------------
      1 103.207.37.197 (103.207.37.197)
      1 103.53.108.38 (103.53.108.38)
      1 103.79.143.139 (103.79.143.139)
    111 123.183.209.132 (123.183.209.132)
      1 112.111.227.129 (112.111.227.129)
      1 115.209.63.241 (115.209.63.241)
     11 212-83-129-189.rev.poneytelecom.eu (212.83.129.189)
      1 139.217.14.205 (139.217.14.205)
      1 163-172-119-49.rev.poneytelecom.eu (163.172.119.49)
      1 163-172-212-115.rev.poneytelecom.eu (163.172.212.115)
      1 190-50-217-29.speedy.com.ar (190.50.217.29)
      1 195-154-53-146.rev.poneytelecom.eu (195.154.53.146)
      1 222.240.148.170 (222.240.148.170)
      1 40.206.214.190.static.pichincha.andinanet.net (190.214.206.40)
      1 65.19.167.131 (65.19.167.131)
      1 91.197.232.15 (91.197.232.15)
      1 atlantic850.dedicatedpanel.com (85.25.103.69)
      1 edwardsnowden1.torservers.net (109.163.234.8)
      1 hostby.chnet.se (91.211.1.10)
      1 marylou.nos-oignons.net (89.234.157.254)
      1 ori.enn.lu (85.248.227.163)
      1 ws254-239-252-122.rcil.gov.in (122.252.239.254)
      2 103.207.37.99 (103.207.37.99)
      2 238.146-245-23.rdns.scalabledns.com (23.245.146.238)
      2 localhost (113.176.150.215)
      3 212-83-141-117.rev.poneytelecom.eu (212.83.141.117)
      4 39.109.125.5 (39.109.125.5)
      4 HSI-KBW-5-158-155-172.hsi19.kabel-badenwuerttemberg.de (5.158.155.172)
Countries from fail2ban.log who are Banned(Needs GeoIP to be installed) :
---Number--ASN------ISP------------------------------------------------------
     10 AS4808 China Unicom Beijing Province Network
     14 AS45899 VNPT Corp
     15 US, United States
     16 AS12876 Online S.a.s.
     16 FR, France
     18 AS22927 Telefonica de Argentina
     18 AR, Argentina
     18 VN, Vietnam
     19 AS4837 CNCGROUP China169 Backbone
      1 AS12386 Orange Catalunya Xarxes de Telecomunicacions S.A.
      1 AS12874 Fastweb
      1 AS12880 Information Technology Company (ITC)
      1 AS131386 Long Van System Solution JSC
      1 AS133970 Tycoon Computers Pvt. Ltd.
      1 AS134762 CHINANET Sichuan province Chengdu MAN network
      1 AS135905 VIETNAM POSTS AND TELECOMMUNICATIONS GROUP
      1 AS136366 Prompt Infracom Private Limited
      1 AS14061 Digital Ocean, Inc.
      1 AS15221 Vanion, Inc.
      1 AS17444 AS number for New World Telephone Ltd.
      1 AS17676 Softbank BB Corp.
      1 AS17762 Tata Teleservices Maharashtra Ltd
      1 AS17809 VEE TIME CORP.
      1 AS17917 Quadrant Televentures Limited
      1 AS17964 Beijing Dian-Xin-Tong Network Technologies Co., Ltd.
      1 AS18566 MegaPath Corporation
      1 AS18881 TELEFÔNICA BRASIL S.A
      1 AS18978 Enzu Inc
      1 AS197071 Dennis Rainer Warnholz trading as active-servers.com
      1 AS197422 Tetaneutral.net
      1 AS206910 Janusz Ciurus trading as P.H.U Bestconnect, P.H.U Megakabel
      1 AS22561 CenturyTel Internet Holdings, Inc.
      1 AS22724 PUNTONET S.A.
      1 AS23932 Internet Service Provider
      1 AS23956 AmberIT Limited
      1 AS24186 RailTel Corporation of India Ltd., Internet Service Provider, New Delhi
      1 AS24547 Hebei Mobile Communication Company Limited
      1 AS24560 Bharti Airtel Ltd., Telemedia Services
      1 AS24671 Hyperion S.A.
      1 AS24863 LINKdotNET
      1 AS25535 Autonomous Non-commercial Organization Regional Network Information Center
      1 AS263474 VerdeNET TELECOM
      1 AS2637 Georgia Institute of Technology
      1 AS264459 NET ALTERNATIVA PROVEDOR DE INTERNET LTDA - ME
      1 AS27699 TELEFÔNICA BRASIL S.A
      1 AS28719 PJSC Rostelecom
      1 AS29073 Quasi Networks LTD.
      1 AS29562 Kabel BW
      1 AS29650 Sungard Availability Services (Ireland) Ltd.
      1 AS29695 Altibox AS
      1 AS30722 Vodafone Italia S.p.A.
      1 AS31195 PJSC MegaFon
      1 AS3209 Vodafone GmbH
      1 AS3239 PJSC Rostelecom
      1 AS3243 Servicos De Comunicacoes E Multimedia S.A.
      1 AS3269 Telecom Italia
      1 AS3292 Tele Danmark
      1 AS35032 LLC Sip nis
      1 AS35228 Telefonica O2 UK
      1 AS35592 Coolhousing s.r.o.
      1 AS3786 LG DACOM Corporation
      1 AS38365 Beijing Baidu Netcom Science and Technology Co., Ltd.
      1 AS38901 EZECOM limited
      1 AS42163 Rasaneh Esfahan Net
      1 AS42313 Albtelecom Sh.a.
      1 AS42555 OPTICCOM- BULGARIA Ltd.
      1 AS42708 Portlane AB
      1 AS43715 Planet Telecom Ltd.
      1 AS4434 PT Rahajasa Media Internet
      1 AS45117 Ishan's Network
      1 AS4621 UNINET-
      1 AS4685 Asahi Net
      1 AS4713 NTT Communications Corporation
      1 AS47956 XFone 018 Ltd
      1 AS4800 Network Access Provider and Internet Service Provider
      1 AS4809 China Telecom Next Generation Carrier Network
      1 AS48422 ChitaNet ZAO
      1 AS51918 Cerberus Networks Ltd
      1 AS5577 root SA
      1 AS5578 BENESTRA, s.r.o.
      1 AS55960 Beijing Guanghuan Xinwang Digital
      1 AS56046 China Mobile communications corporation
      1 AS5610 O2 Czech Republic, a.s.
      1 AS5617 Orange Polska Spolka Akcyjna
      1 AS5650 Frontier Communications of America, Inc.
      1 AS56703 Mehr Ava Gostar Parsian Information Engineering Co.,ltd
      1 AS59194 Central Bank of India
      1 AS59214 Winspeed Group International Limited
      1 AS6057 Administracion Nacional de Telecomunicaciones
      1 AS6306 TELEFONICA VENEZOLANA, C.A.
      1 AS63691 Beijing wisdom network technology Co., Ltd. polymerization
      1 AS6503 Axtel, S.A.B. de C.V.
      1 AS6697 Republican Unitary Telecommunication Enterprise Beltelecom
      1 AS701 MCI Communications Services, Inc. d/b/a Verizon Business
      1 AS7497 Computer Network Information Center
      1 AS8193 Uzbektelekom Joint Stock Company
      1 AS8866 Vivacom
      1 AS8972 Host Europe GmbH
      1 AS9105 Tiscali UK Limited
      1 AS9269 Hong Kong Broadband Network Ltd.
      1 AS9304 Hutchison Global Communications
      1 AS9498 BHARTI Airtel Ltd.
      1 AL, Albania
      1 BD, Bangladesh
      1 BY, Belarus
      1 DK, Denmark
      1 ES, Spain
      1 IE, Ireland
      1 IL, Israel
      1 KH, Cambodia
      1 LU, Luxembourg
      1 MX, Mexico
      1 NO, Norway
      1 PT, Portugal
      1 SC, Seychelles
      1 SG, Singapore
      1 SK, Slovakia
      1 UY, Uruguay
      1 UZ, Uzbekistan
      1 VE, Venezuela
    251 IP Address not found
    251 IP Address not found
     27 AS4134 Chinanet
      2 AS16276 OVH SAS
      2 AS17974 PT Telekomunikasi Indonesia
      2 AS20473 Choopa, LLC
      2 AS24940 Hetzner Online GmbH
      2 AS26496 GoDaddy.com, LLC
      2 AS28573 CLARO S.A.
      2 AS3462 Data Communication Business Group
      2 AS43350 NForce Entertainment B.V.
      2 AS4812 China Telecom (Group)
      2 AS58593 Microsoft (China) Co., Ltd.
      2 AS6724 Strato AG
      2 AS6939 Hurricane Electric, Inc.
      2 AS7552 Viettel Corporation
      2 AS8452 TE Data
      2 AS9121 Turk Telekom
      2 BG, Bulgaria
      2 SE, Sweden
      2 TH, Thailand
      2 TR, Turkey
      3 AS12389 PJSC Rostelecom
      3 AS23650 AS Number for CHINANET jiangsu province backbone
      3 AS24139 Huashu media&Network Limited
      3 AS3223 Voxility S.R.L.
      3 AS4766 Korea Telecom
      3 CZ, Czech Republic
      3 EG, Egypt
      3 IR, Iran, Islamic Republic of
      3 IT, Italy
      3 JP, Japan
      3 RO, Romania
      3 TW, Taiwan
      4 AS7922 Comcast Cable Communications, LLC
      4 HK, Hong Kong
      4 ID, Indonesia
      4 KR, Korea, Republic of
      4 NL, Netherlands
      4 PL, Poland
      5 AS14420 CORPORACION NACIONAL DE TELECOMUNICACIONES - CNT EP
      5 GB, United Kingdom
      6 BR, Brazil
      6 EC, Ecuador
     75 CN, China
      8 DE, Germany
      8 RU, Russian Federation
      9 IN, India
----------------------------------------------------------------------------
----------------------------------------------------------------------------
Fail2Ban Log Check by thecustomizewindows.com, Dr. Abhishek Ghosh
End of report
Visit https://thecustomizewindows.com for more help.

````
