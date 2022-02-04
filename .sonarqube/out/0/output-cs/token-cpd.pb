Û
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Common\AutoRegisterData.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Common* 0
{ 
public 

class 
AutoRegisterData !
{ 
public 
AutoRegisterData 
(  
IServiceCollection  2
services3 ;
,; <
IEnumerable= H
<H I
TypeI M
>M N
typesToConsiderO ^
)^ _
{ 	
Services 
= 
services 
??  "
throw# (
new) ,!
ArgumentNullException- B
(B C
nameofC I
(I J
servicesJ R
)R S
)S T
;T U
TypesToConsider 
= 
typesToConsider -
??. 0
throw1 6
new7 :!
ArgumentNullException; P
(P Q
nameofQ W
(W X
typesToConsiderX g
)g h
)h i
;i j
} 	
public 
IServiceCollection !
Services" *
{+ ,
get- 0
;0 1
}2 3
public   
IEnumerable   
<   
Type   
>    
TypesToConsider  ! 0
{  1 2
get  3 6
;  6 7
}  8 9
public&& 
Func&& 
<&& 
Type&& 
,&& 
bool&& 
>&& 

TypeFilter&&  *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
}'' 
}(( õ
uC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Common\Http\ProtocolOperations.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Common* 0
.0 1
Http1 5
{ 
public 

static 
class 
ProtocolOperations *
{ 
public 
static 
SslProtocols "
GetTlsProtocol# 1
(1 2
string2 8
httpProtocol9 E
)E F
{		 	
return

 
(

 
httpProtocol

  
.

  !
ToLower

! (
(

( )
)

) *
)

* +
switch

, 2
{ 
$str 
=> 
SslProtocols '
.' (
Tls12( -
,- .
$str 
=> 
SslProtocols '
.' (
Tls13( -
,- .
$str 
=> 
SslProtocols &
.& '
None' +
,+ ,
_ 
=> 
SslProtocols !
.! "
Tls12" '
,' (
} 
; 
} 	
public 
static 
HttpProtocols #
GetHttProtocol$ 2
(2 3
string3 9
httpProtocol: F
)F G
{ 	
if 
( 
httpProtocol 
== 
null  $
)$ %
return& ,
HttpProtocols- :
.: ;
Http1; @
;@ A
return 
( 
httpProtocol  
.  !
ToLower! (
(( )
)) *
)* +
switch, 2
{ 
$str 
=> 
HttpProtocols (
.( )
Http1) .
,. /
$str 
=> 
HttpProtocols (
.( )
Http2) .
,. /
$str 
=>  "
HttpProtocols# 0
.0 1
Http1AndHttp21 >
,> ?
$str 
=> 
HttpProtocols '
.' (
None( ,
,, -
_ 
=> 
HttpProtocols "
." #
Http1# (
,( )
} 
; 
} 	
}   
}!! Ë!
oC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Common\IO\FileOperations.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Common* 0
.0 1
IO1 3
{ 
public 

static 
class 
FileOperations &
{ 
private 
static 
string 
ApplicationPath -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public		 
static		 
List		 
<		 
string		 !
>		! "
GetFilesFromPath		# 3
(		3 4
string		4 :
searchPattern		; H
,		H I
string		J P
defaultDirectory		Q a
=		b c
null		d h
)		h i
{

 	
var 
workingDirectory  
=! "
string# )
.) *
IsNullOrEmpty* 7
(7 8
defaultDirectory8 H
)H I
||J L
!M N
	DirectoryN W
.W X
ExistsX ^
(^ _
defaultDirectory_ o
)o p
?q r
	Directorys |
.| } 
GetCurrentDirectory	} ê
(
ê ë
)
ë í
:
ì î
defaultDirectory
ï •
;
• ¶
return 
	Directory 
. 
GetFiles %
(% &
workingDirectory& 6
,6 7
searchPattern8 E
,E F
SearchOptionG S
.S T
AllDirectoriesT b
)b c
.c d
ToListd j
(j k
)k l
;l m
} 	
public 
static 
string 
GetFileFullPath ,
(, -
string- 3
fileName4 <
,< =
string> D
defaultDirectoryE U
=V W
nullX \
)\ ]
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
fileName% -
)- .
). /
return0 6
string7 =
.= >
Empty> C
;C D
if 
( 
File 
. 
Exists 
( 
fileName $
)$ %
)% &
return' -
Path. 2
.2 3
GetFullPath3 >
(> ?
fileName? G
)G H
;H I
var 
workingDirectory  
=! "
string# )
.) *
IsNullOrEmpty* 7
(7 8
defaultDirectory8 H
)H I
||J L
!M N
	DirectoryN W
.W X
ExistsX ^
(^ _
defaultDirectory_ o
)o p
?q r
	Directorys |
.| } 
GetCurrentDirectory	} ê
(
ê ë
)
ë í
:
ì î
defaultDirectory
ï •
;
• ¶
var 
theFile 
= 
	Directory #
.# $
GetFiles$ ,
(, -
workingDirectory- =
,= >
fileName? G
,G H
SearchOptionI U
.U V
AllDirectoriesV d
)d e
.e f
FirstOrDefaultf t
(t u
)u v
;v w
return 
theFile 
; 
} 	
public 
static 
string 
GetApplicationPath /
(/ 0
)0 1
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
ApplicationPath% 4
)4 5
)5 6
{ 
ApplicationPath   
=    !
Path  " &
.  & '
GetDirectoryName  ' 7
(  7 8
Assembly  8 @
.  @ A
GetEntryAssembly  A Q
(  Q R
)  R S
.  S T
Location  T \
)  \ ]
;  ] ^
}!! 
return"" 
ApplicationPath"" "
;""" #
}## 	
}$$ 
}%% π
jC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Constants\AuthConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
	Constants* 3
{ 
public 

static 
class 
	AuthConst !
{ 
public 
const 
string  
AuthenticationScheme 0
=1 2
$str3 ;
;; <
public		 
const		 
string		 
DevonSampleUserRole		 /
=		0 1
$str		2 G
;		G H
public

 
const

 
string

 
DevonSamplePolicy

 -
=

. /
$str

0 C
;

C D
} 
} ó
fC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Enums\MediaType.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Common2 8
.8 9
Enums9 >
{ 
public 

static 
class 
	MediaType !
{ 
public 
const 
string 
Application '
=( )
$str* 9
;9 :
public 
const 
string !
ApplicationEcmascript 1
=2 3
$str4 L
;L M
public 
const 
string !
ApplicationJavascript 1
=2 3
$str4 L
;L M
public 
const 
string "
ApplicationOctetStream 2
=3 4
$str5 O
;O P
public		 
const		 
string		 
ApplicationJson		 +
=		, -
$str		. @
;		@ A
public

 
const

 
string

 
ApplicationXwww

 +
=

, -
$str

. Q
;

Q R
public 
const 
string 
TextCss #
=$ %
$str& 0
;0 1
public 
const 
string 
	TextPlain %
=& '
$str( 4
;4 5
public 
const 
string 
TextHtml $
=% &
$str' 2
;2 3
public 
const 
string 
TextXml #
=$ %
$str& 0
;0 1
public 
const 
string 
	ImageJpeg %
=& '
$str( 4
;4 5
public 
const 
string 
Imagegif $
=% &
$str' 2
;2 3
public 
const 
string 
ImagePng $
=% &
$str' 2
;2 3
public 
const 
string 
	AudioMpeg %
=& '
$str( 4
;4 5
public 
const 
string 
AudioOgg $
=% &
$str' 2
;2 3
public 
const 
string 
Audio !
=" #
$str$ -
;- .
public 
const 
string 
VideoMp4 $
=% &
$str' 2
;2 3
public 
const 
string 
MultipartFormData -
=. /
$str0 E
;E F
public 
const 
string 
MultipartByteRanges /
=0 1
$str2 H
;H I
} 
} Ô
|C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Exceptions\HttpCustomRequestException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *

Exceptions* 4
{ 
[ 
Serializable 
] 
public 

class &
HttpCustomRequestException +
:, -
	Exception. 7
,7 8
IWebApiException9 I
{ 
public 
int 

StatusCode 
{ 
get  #
;# $
}% &
public

 
bool

 
ShowMessage

 
=>

  "
false

# (
;

( )
public &
HttpCustomRequestException )
() *
)* +
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
)8 9
: 
base 
( 
message 
) 
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
,8 9
int: =

statusCode> H
)H I
: 
base 
( 
message 
) 
{ 	

StatusCode 
= 

statusCode #
;# $
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
,8 9
	Exception: C
innerD I
)I J
: 
base 
( 
message 
, 
inner !
)! "
{   	

StatusCode!! 
=!! 
StatusCodes!! $
.!!$ %(
Status500InternalServerError!!% A
;!!A B
}"" 	
	protected$$ &
HttpCustomRequestException$$ ,
($$, -
System$$- 3
.$$3 4
Runtime$$4 ;
.$$; <
Serialization$$< I
.$$I J
SerializationInfo$$J [
serializationInfo$$\ m
,$$m n
System$$o u
.$$u v
Runtime$$v }
.$$} ~
Serialization	$$~ ã
.
$$ã å
StreamingContext
$$å ú
streamingContext
$$ù ≠
)
$$≠ Æ
:%% 
base%% 
(%% 
serializationInfo%% $
,%%$ %
streamingContext%%& 6
)%%6 7
{&& 	

StatusCode'' 
='' 
StatusCodes'' $
.''$ %(
Status500InternalServerError''% A
;''A B
}(( 	
})) 
}** ê
rC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Exceptions\IWebApiException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *

Exceptions* 4
{ 
public 

	interface 
IWebApiException %
:& '
ISerializable( 5
{ 
int

 

StatusCode

 
{

 
get

 
;

 
}

 
bool 
ShowMessage 
{ 
get 
; 
}  !
} 
} ˘
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Handlers\OptionsHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Handlers* 2
{ 
public 

static 
class 
OptionsHandler &
{ 
public		 
static		 
T		 
GetTypedOptions		 '
<		' (
T		( )
>		) *
(		* +
this		+ /
IServiceCollection		0 B
services		C K
,		K L
IConfiguration		M [
configuration		\ i
,		i j
string		k q
sectionName		r }
)		} ~
where			 Ñ
T
		Ö Ü
:
		á à
class
		â é
,
		é è
new
		ê ì
(
		ì î
)
		î ï
{

 	
var 
section 
= 
configuration '
.' (

GetSection( 2
(2 3
sectionName3 >
)> ?
;? @
services 
. 
	Configure 
< 
T  
>  !
(! "
section" )
)) *
;* +
using 
var 
serviceProvider %
=& '
services( 0
.0 1 
BuildServiceProvider1 E
(E F
)F G
;G H
return 
serviceProvider "
." #

GetService# -
<- .
IOptions. 6
<6 7
T7 8
>8 9
>9 :
(: ;
); <
?< =
.= >
Value> C
;C D
} 	
} 
} √T
rC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Helpers\AutoRegisterHelpers.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Helpers* 1
{		 
public 

static 
class 
AutoRegisterHelpers +
{ 
public 
static 
AutoRegisterData &3
'RegisterAssemblyPublicNonGenericClasses' N
(N O
thisO S
IServiceCollectionT f
servicesg o
,o p
paramsq w
Assembly	x Ä
[
Ä Å
]
Å Ç

assemblies
É ç
)
ç é
{ 	
if 
( 

assemblies 
. 
Length !
==" $
$num% &
)& '

assemblies 
= 
new  
[  !
]! "
{# $
Assembly$ ,
., -
GetCallingAssembly- ?
(? @
)@ A
}A B
;B C
var 
allPublicTypes 
=  

assemblies! +
.+ ,

SelectMany, 6
(6 7
x7 8
=>9 ;
x< =
.= >
GetExportedTypes> N
(N O
)O P
. 
Where 
( 
y 
=> 
y 
. 
IsClass %
&&& (
!) *
y* +
.+ ,

IsAbstract, 6
&&7 9
!: ;
y; <
.< =
IsGenericType= J
&&K M
!N O
yO P
.P Q
IsNestedQ Y
)Y Z
)Z [
;[ \
return 
new 
AutoRegisterData '
(' (
services( 0
,0 1
allPublicTypes2 @
)@ A
;A B
} 	
public(( 
static(( 
AutoRegisterData(( &
Where((' ,
(((, -
this((- 1
AutoRegisterData((2 B
autoRegData((C N
,((N O
Func((P T
<((T U
Type((U Y
,((Y Z
bool(([ _
>((_ `
	predicate((a j
)((j k
{)) 	
if** 
(** 
autoRegData** 
==** 
null** #
)**# $
throw**% *
new**+ .!
ArgumentNullException**/ D
(**D E
nameof**E K
(**K L
autoRegData**L W
)**W X
)**X Y
;**Y Z
autoRegData++ 
.++ 

TypeFilter++ "
=++# $
	predicate++% .
;++. /
return,, 
new,, 
AutoRegisterData,, '
(,,' (
autoRegData,,( 3
.,,3 4
Services,,4 <
,,,< =
autoRegData,,> I
.,,I J
TypesToConsider,,J Y
.,,Y Z
Where,,Z _
(,,_ `
	predicate,,` i
),,i j
),,j k
;,,k l
}-- 	
public55 
static55 
IServiceCollection55 ()
AsPublicImplementedInterfaces55) F
(55F G
this55G K
AutoRegisterData55L \
autoRegData55] h
,55h i
ServiceLifetime66 
lifetime66 $
=66% &
ServiceLifetime66' 6
.666 7
	Transient667 @
)66@ A
{77 	
if88 
(88 
autoRegData88 
==88 
null88 #
)88# $
throw88% *
new88+ .!
ArgumentNullException88/ D
(88D E
nameof88E K
(88K L
autoRegData88L W
)88W X
)88X Y
;88Y Z
foreach99 
(99 
var99 
	classType99 "
in99# %
(99& '
autoRegData99' 2
.992 3

TypeFilter993 =
==99> @
null99A E
?:: 
autoRegData:: 
.:: 
TypesToConsider:: -
:;; 
autoRegData;; 
.;; 
TypesToConsider;; -
.;;- .
Where;;. 3
(;;3 4
autoRegData;;4 ?
.;;? @

TypeFilter;;@ J
);;J K
);;K L
);;L M
{<< 
var== 

interfaces== 
===  
	classType==! *
.==* +
GetTypeInfo==+ 6
(==6 7
)==7 8
.==8 9!
ImplementedInterfaces==9 N
;==N O
foreach>> 
(>> 
var>> 
infc>> !
in>>" $

interfaces>>% /
.>>/ 0
Where>>0 5
(>>5 6
i>>6 7
=>>>8 :
i>>; <
!=>>= ?
typeof>>@ F
(>>F G
IDisposable>>G R
)>>R S
&&>>T V
i>>W X
.>>X Y
IsPublic>>Y a
&&>>b d
!>>e f
i>>f g
.>>g h
IsNested>>h p
)>>p q
)>>q r
{?? 
autoRegData@@ 
.@@  
Services@@  (
.@@( )
Add@@) ,
(@@, -
new@@- 0
ServiceDescriptor@@1 B
(@@B C
infc@@C G
,@@G H
	classType@@I R
,@@R S
lifetime@@T \
)@@\ ]
)@@] ^
;@@^ _
}AA 
}BB 
returnDD 
autoRegDataDD 
.DD 
ServicesDD '
;DD' (
}EE 	
publicLL 
staticLL 
IServiceCollectionLL (/
#AsSingletonPublicImplementedClassesLL) L
(LLL M
thisLLM Q
AutoRegisterDataLLR b
autoRegDataLLc n
)LLn o
{MM 	
ifNN 
(NN 
autoRegDataNN 
==NN 
nullNN #
)NN# $
throwNN% *
newNN+ .!
ArgumentNullExceptionNN/ D
(NND E
nameofNNE K
(NNK L
autoRegDataNNL W
)NNW X
)NNX Y
;NNY Z
foreachOO 
(OO 
varOO 
	classTypeOO "
inOO# %
(OO& '
autoRegDataOO' 2
.OO2 3

TypeFilterOO3 =
==OO> @
nullOOA E
?PP 
autoRegDataPP 
.PP 
TypesToConsiderPP -
:QQ 
autoRegDataQQ 
.QQ 
TypesToConsiderQQ -
.QQ- .
WhereQQ. 3
(QQ3 4
autoRegDataQQ4 ?
.QQ? @

TypeFilterQQ@ J
)QQJ K
)QQK L
)QQL M
{RR 
autoRegDataSS 
.SS 
ServicesSS $
.SS$ %
AddSingletonSS% 1
(SS1 2
	classTypeSS2 ;
)SS; <
;SS< =
}TT 
returnVV 
autoRegDataVV 
.VV 
ServicesVV '
;VV' (
}WW 	
publicYY 
staticYY 
voidYY 
AutoRegisterClassesYY .
(YY. /
thisYY/ 3
IServiceCollectionYY4 F
servicesYYG O
,YYO P
ListYYQ U
<YYU V
TypeYYV Z
>YYZ [#
assemblyContainerToScanYY\ s
,YYs t
stringYYu {
	sufixName	YY| Ö
=
YYÜ á
$str
YYà ë
)
YYë í
{ZZ 	
if[[ 
([[ #
assemblyContainerToScan[[ '
==[[( *
null[[+ /
||[[0 2#
assemblyContainerToScan[[3 J
.[[J K
Count[[K P
==[[Q S
$num[[T U
||[[U W
string[[X ^
.[[^ _
IsNullOrEmpty[[_ l
([[l m
	sufixName[[m v
)[[v w
)[[w x
return[[y 
;	[[ Ä
foreach]] 
(]] 
var]] 
assembly]] !
in]]" $#
assemblyContainerToScan]]% <
)]]< =
{^^ 
var__ 
assemblyToScan__ "
=__# $
Assembly__% -
.__- .
GetAssembly__. 9
(__9 :
assembly__: B
)__B C
;__C D
if`` 
(`` 
assemblyToScan`` "
==``# %
null``& *
)``* +
continue``, 4
;``4 5
servicesbb 
.bb 3
'RegisterAssemblyPublicNonGenericClassesbb @
(bb@ A
assemblyToScanbbA O
)bbO P
.cc 
Wherecc 
(cc 
xcc 
=>cc 
xcc 
.cc 
Namecc "
.cc" #
EndsWithcc# +
(cc+ ,
	sufixNamecc, 5
)cc5 6
)cc6 7
.dd )
AsPublicImplementedInterfacesdd .
(dd. /
)dd/ 0
;dd0 1
}ee 
}ff 	
publichh 
statichh 
voidhh 
AutoRegisterClasseshh .
(hh. /
thishh/ 3
IServiceCollectionhh4 F
serviceshhG O
,hhO P
ListhhQ U
<hhU V
TypehhV Z
>hhZ [#
assemblyContainerToScanhh\ s
,hhs t
Listhhu y
<hhy z
string	hhz Ä
>
hhÄ Å

sufixNames
hhÇ å
)
hhå ç
{ii 	
ifjj 
(jj #
assemblyContainerToScanjj '
==jj( *
nulljj+ /
||jj0 2#
assemblyContainerToScanjj3 J
.jjJ K
CountjjK P
==jjQ S
$numjjT U
||jjV X

sufixNamesjjY c
==jjd f
nulljjg k
||jjl n

sufixNamesjjo y
.jjy z
Countjjz 
==
jjÄ Ç
$num
jjÉ Ñ
)
jjÑ Ö
return
jjÜ å
;
jjå ç
foreachll 
(ll 
varll 
assemblyll !
inll" $#
assemblyContainerToScanll% <
)ll< =
{mm 
varnn 
assemblyToScannn "
=nn# $
Assemblynn% -
.nn- .
GetAssemblynn. 9
(nn9 :
assemblynn: B
)nnB C
;nnC D
ifoo 
(oo 
assemblyToScanoo "
==oo# %
nulloo& *
)oo* +
continueoo, 4
;oo4 5
foreachqq 
(qq 
varqq 
	sufixNameqq &
inqq' )

sufixNamesqq* 4
)qq4 5
{rr 
servicesss 
.ss 3
'RegisterAssemblyPublicNonGenericClassesss D
(ssD E
assemblyToScanssE S
)ssS T
.tt 
Wherett 
(tt 
xtt 
=>tt 
xtt  !
.tt! "
Namett" &
.tt& '
EndsWithtt' /
(tt/ 0
	sufixNamett0 9
)tt9 :
)tt: ;
.uu )
AsPublicImplementedInterfacesuu 2
(uu2 3
)uu3 4
;uu4 5
}vv 
}ww 
}xx 	
}yy 
}zz ñ
C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\AnsibleTower\AnsibleTowerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
AnsibleTower2 >
{ 
public 

class 
AnsibleTowerOptions $
{ 
public 
bool 
EnableAnsible !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
CircuitBreakerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 

ApiUrlBase  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Version		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Username

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¬
ÉC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\CircuitBreaker\CircuitBreakerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CircuitBreaker2 @
{ 
public 

class !
CircuitBreakerOptions &
{ 
public 
bool 
CheckCertificate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
List 
< 
Endpoint 
> 
	Endpoints '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ‰6
vC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\CircuitBreaker\Endpoint.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CircuitBreaker2 @
{ 
public 

class 
Endpoint 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
BaseAddress !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

Dictionary 
< 
string  
,  !
string" (
>( )
Headers* 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
List 
< 
double 
> 
WaitAndRetrySeconds /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public		 
double		 
DurationOfBreak		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
bool

 
UseCertificate

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CertificatePassword )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
SslProtocol !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Endpoint 
( 
) 
{ 	
} 	
public 
Endpoint 
( 
string 
name #
,# $
string% +
baseAddress, 7
)7 8
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
name% )
)) *
||+ -
string. 4
.4 5
IsNullOrEmpty5 B
(B C
baseAddressC N
)N O
)O P
throwQ V
newW Z!
ArgumentNullException[ p
(p q
nameofq w
(w x
namex |
)| }
,} ~
$str	 £
)
£ §
;
§ •
Name 
= 
name 
; 
BaseAddress 
= 
baseAddress %
;% &
Headers 
= 
new 

Dictionary $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
)5 6
;6 7
WaitAndRetrySeconds 
=  !
new" %
List& *
<* +
double+ 1
>1 2
{3 4
$num5 6
}7 8
;8 9
} 	
public 

Dictionary 
< 
string  
,  !
string" (
>( )

GetHeaders* 4
(4 5
)5 6
{ 	
return 
Headers 
?? 
new !

Dictionary" ,
<, -
string- 3
,3 4
string5 ;
>; <
(< =
)= >
;> ?
}   	
public"" 
List"" 
<"" 
double"" 
>"" 
GetWaitAndRetry"" +
(""+ ,
)"", -
{## 	
return$$ 
WaitAndRetrySeconds$$ &
??$$' )
new$$* -
List$$. 2
<$$2 3
double$$3 9
>$$9 :
{$$; <
$num$$= B
}$$C D
;$$D E
}%% 	
public(( 
void(( 
AddWaitAndRetry(( #
(((# $
int(($ '
secondsToWait((( 5
)((5 6
{)) 	
if** 
(** 
secondsToWait** 
<=**  
$num**! "
)**" #
throw**$ )
new*** -!
ArgumentNullException**. C
(**C D
nameof**D J
(**J K
secondsToWait**K X
)**X Y
,**Y Z
$str	**[ ä
)
**ä ã
;
**ã å
WaitAndRetrySeconds++ 
.++  
Add++  #
(++# $
secondsToWait++$ 1
)++1 2
;++2 3
},, 	
public.. 
void.. 
AddRequestHeader.. $
(..$ %
string..% +
key.., /
,../ 0
string..1 7
value..8 =
,..= >
bool..? C
overwriteValue..D R
=..S T
false..U Z
)..Z [
{// 	
if00 
(00 
string00 
.00 
IsNullOrEmpty00 $
(00$ %
key00% (
)00( )
||00* ,
string00- 3
.003 4
IsNullOrEmpty004 A
(00A B
value00B G
)00G H
)00H I
throw00J O
new00P S!
ArgumentNullException00T i
(00i j
nameof00j p
(00p q
key00q t
)00t u
,00u v
$str	00w î
)
00î ï
;
00ï ñ
var11 
	keyExists11 
=11 
Headers11 #
.11# $
ContainsKey11$ /
(11/ 0
key110 3
)113 4
;114 5
if33 
(33 
Headers33 
==33 
null33 
)33  
{44 
Headers55 
=55 
new55 

Dictionary55 (
<55( )
string55) /
,55/ 0
string551 7
>557 8
{66 
{77 
key77 
,77 
value77  
}77! "
}88 
;88 
return99 
;99 
}:: 
if<< 
(<< 
overwriteValue<< 
)<< 
{== 
Headers>> 
.>> 
Remove>> 
(>> 
key>> "
)>>" #
;>># $
}?? 
else@@ 
{AA 
ifBB 
(BB 
	keyExistsBB 
)BB 
throwBB $
newBB% (!
ArgumentNullExceptionBB) >
(BB> ?
nameofBB? E
(BBE F
keyBBF I
)BBI J
,BBJ K
$strBBL l
)BBl m
;BBm n
HeadersCC 
.CC 
AddCC 
(CC 
keyCC 
,CC  
valueCC! &
)CC& '
;CC' (
}DD 
}EE 	
}FF 
}GG ·
oC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Cors\CorsOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Cors2 6
{ 
public 

class 
CorsOptions 
{ 
public 
Origin 
[ 
] 
Origins 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} £
jC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Cors\Origin.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Cors2 6
{ 
public 

class 
Origin 
{ 
public 
string 

CorsPolicy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Origins 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Headers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Methods 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
bool		 
AllowCredentials		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public 
List 
< 
string 
> 
GetOriginsList *
(* +
)+ ,
{ 	
return 
Origins 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
public 
List 
< 
string 
> 
GetMethodsList *
(* +
)+ ,
{ 	
return 
Methods 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
public 
List 
< 
string 
> 
GetHeadersList *
(* +
)+ ,
{ 	
return 
Headers 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
} 
} ∂
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\CyberArk\CyberArkOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CyberArk2 :
{ 
public 

class 
CyberArkOptions  
{ 
public 
bool 
EnableCyberArk "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
CircuitBreakerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
}		 
}

 ö
xC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\CertificatesOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
CertificatesOptions $
{ 
public 
Servercertificate  
ServerCertificate! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
Clientcertificate  
ClientCertificate! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} Ï
vC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Clientcertificate.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Clientcertificate "
{ 
public 
bool (
EnableClientCertificateCheck 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
bool $
RequireClientCertificate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool &
CheckCertificateRevocation .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
Clientcertificates !
ClientCertificates" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
}		 
}

 Ö
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Clientcertificates.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Clientcertificates #
{ 
public 
List 
< 
string 
> 
	Whitelist %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ‚
sC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\DevonfwOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
DevonfwOptions 
{ 
public 
bool  
UseDetailedErrorsKey (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
UseIIS 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

UseSwagger 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseXsrf 
{ 
get !
;! "
set# &
;& '
}( )
public		 
bool		 #
UseModelStateValidation		 +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
public

 
string

 
Environment

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
KestrelDevonOptions "
Kestrel# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
IisDevonOptions 
IIS "
{# $
get% (
;( )
set* -
;- .
}/ 0
public  
ExtraSettingsOptions #
ExtraSettings$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} ã
yC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\ExtraSettingsOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class  
ExtraSettingsOptions %
{ 
public 
int 
KeepAliveTimeout #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int $
MaxConcurrentConnections +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int ,
 MaxConcurrentUpgradedConnections 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public		 
float		 
MaxRequestBodySize		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
int

 (
Http2MaxStreamsPerConnection

 /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
public 
int ,
 Http2InitialConnectionWindowSize 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
int (
Http2InitialStreamWindowSize /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool 
AllowSynchronousIO &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ≤
tC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\IisDevonOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
IisDevonOptions  
{ 
public 
bool $
ForwardClientCertificate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool #
AutomaticAuthentication +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string %
AuthenticationDisplayName /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
}

 ≥
xC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\KestrelDevonOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
KestrelDevonOptions $
{ 
public 
bool 
UseHttps 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
ApplicationPort "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
HttpProtocol "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SslProtocol !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 ¸
vC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Servercertificate.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Servercertificate "
{ 
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CertificatePassword )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ¬	
oC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Grpc\GrpcOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
{ 
public 

class 
GrpcOptions 
{ 
public 
bool 

EnableGrpc 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseDevCertificate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 

GrpcServer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int !
MaxReceiveMessageSize (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public		 #
GrpcRetrypatternOptions		 &
RetryPatternOptions		' :
{		; <
get		= @
;		@ A
set		B E
;		E F
}		G H
}

 
} À	
{C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Grpc\GrpcRetrypatternOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
{ 
public 

class #
GrpcRetrypatternOptions (
{ 
public 
int 
MaxAttempts 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int !
InitialBackoffSeconds (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
MaxBackoffSeconds $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
double 
BackoffMultiplier '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
RetryableStatus		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
}

 
} Ç
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\JWT\JwtOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
JWT2 5
{ 
public 

class 

JwtOptions 
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TokenExpirationTime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool $
ValidateIssuerSigningKey ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public		 
bool		 
ValidateLifetime		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
int

 
	ClockSkew

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
Security 
Security  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ë
kC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\JWT\Security.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
JWT2 5
{ 
public 

class 
Security 
{ 
public 
string (
SecretKeyEncryptionAlgorithm 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string $
SecretKeyLengthAlgorithm .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
	SecretKey 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
CertificatePassword		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
public

 
string

 *
CertificateEncryptionAlgorithm

 4
{

5 6
get

7 :
;

: ;
set

< ?
;

? @
}

A B
} 
} Ê
sC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Administration.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Administration 
{ 
public 
string 
AdminId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Servers 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ÿ
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Consumer.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Consumer 
{ 
public 
string 

ConsumerId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Servers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
GroupId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
Topics		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 

AutoCommit

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 
?  
StatisticsIntervalMs (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
SessionTimeoutMs $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AutoOffsetReset %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
EnablePartitionEof &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
IsolationLevel $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool ,
 EnableSslCertificateVerification 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
string 
Debug 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
string 
> 
	GetTopics %
(% &
)& '
{ 	
return 
string 
. 
IsNullOrEmpty '
(' (
Topics( .
). /
?0 1
new2 5
List6 :
<: ;
string; A
>A B
(B C
)C D
:E F
TopicsG M
.M N
SplitN S
(S T
$charT W
)W X
.X Y
ToListY _
(_ `
)` a
;a b
} 	
} 
} ¡	
qC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\KafkaOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
KafkaOptions 
{ 
public 
bool 
EnableKafka 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
Administration "
>" #
Administration$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
List 
< 
Producer 
> 
	Producers '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< 
Consumer 
> 
	Consumers '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}		 
}

 Ó
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Producer.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Producer 
{ 
public 
string 

ProducerId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Servers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Topic 
{ 
get !
;! "
set# &
;& '
}( )
public		 
int		 
?		 
MessageMaxBytes		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
int

 
?

 
CompressionLevel

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 
CompressionType %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? "
ReceiveMessageMaxBytes *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool ,
 EnableSslCertificateVerification 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
int 
? "
CancellationDelayMaxMs *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
Ack 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Debug 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
BrokerAddressTtl $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
BatchNumMessages $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
EnableIdempotence %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
MaxInFlight 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? !
MessageSendMaxRetries )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? 
	BatchSize 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} û
{C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\KillSwitch\KillSwitchOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2

KillSwitch2 <
{ 
public 

class 
KillSwitchOptions "
{ 
public 
bool 
UseKillSwitch !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
EnableRequests "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
HttpStatusCode !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 Ú
sC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\LiteDb\LiteDbOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
LiteDb2 8
{ 
public 

class 
LiteDbOptions 
{ 
public 
bool 
EnableLiteDb  
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
DatabaseLocation &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ≠
qC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Log\GraylogOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Log2 5
{ 
public 

class 
GraylogOptions 
{ 
public 
string 
GrayLogHost !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
GrayLogPort 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
GrayLogProtocol %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
UseSecureConnection '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
bool		 
UseAsyncLogging		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
int

 

RetryCount

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
RetryIntervalMs "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
MaxUdpMessageSize $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ’
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Log\LogOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Log2 5
{ 
public 

class 

LogOptions 
{ 
public 
bool 

UseLogFile 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseSQLiteDb 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

UseGraylog 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseAOPTrace 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
Loglevel		 
LogLevel		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
SqliteDatabase

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 
LogFile 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
SeqLogServerHost &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
GraylogOptions 
GrayLog %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class 
Loglevel 
{ 
public 
string 
Default 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
MicrosoftAspNetCore )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ‰
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\MediatR\Backup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
MediatR2 9
{ 
public 

class 
Backup 
{ 
public 
bool 
UseLocalBackup "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ì
uC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\MediatR\MediatROptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
MediatR2 9
{ 
public 

class 
MediatROptions 
{ 
public 
bool 
EnableMediatR !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ê
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\Backup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
Backup 
{ 
public 
bool 
UseLocalBackup "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} è
vC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\HostDefinition.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
HostDefinition 
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
Port 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Ssl 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
SslServerName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
SslCertPath		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
SslCertPassPhrase

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
string 
SslPolicyErrors %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} û
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\RabbitMQOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
RabbitMqOptions  
{ 
public 
bool 
EnableRabbitMq "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
HostDefinition "
>" #
Hosts$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
VirtualHost		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Product

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
? 
RequestedHeartbeat &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? 
PrefetchCount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
PublisherConfirms %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
PersistentMessages &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Platform 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Timeout 
{ 
get !
;! "
set# &
;& '
}( )
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ë

uC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\SmaxHcm\SmaxHcmOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
SmaxHcm2 9
{ 
public 

class 
SmaxHcmOptions 
{ 
public 
bool 

EnableSmax 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
TenantId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
CircuitBreakerName		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
string

 

ProviderId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} Ó
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\Contact.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
Contact 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ë
oC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\Endpoint.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
Endpoint 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UrlUi 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
RouteTemplate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
}		 
}

 ’
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\License.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
License 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ˆ
uC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\SwaggerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
SwaggerOptions 
{ 
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Terms 
{ 
get !
;! "
set# &
;& '
}( )
public		 
Contact		 
Contact		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
License

 
License

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
Endpoint 
Endpoint  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} 