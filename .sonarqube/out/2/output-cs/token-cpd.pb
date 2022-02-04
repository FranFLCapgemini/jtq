Ô
{C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\CosmosConfigurationParams.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Common& ,
{ 
public 

class %
CosmosConfigurationParams *
{ 
public 
string 
Endpoint 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 ƒÖ
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\DatabaseConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Common& ,
{ 
public		 

static		 
class		 &
SetupDatabaseConfiguration		 2
{

 
private 
const 
int 
MaxRetryDelay '
=( )
$num* ,
;, -
private 
const 
int 
MaxRetryCount '
=( )
$num* ,
;, -
private 
static 
ServiceLifetime &
ServiceLifetime' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
static 
void 
SetupDatabase (
<( )
T) *
>* +
(+ ,
this, 0
IServiceCollection1 C
servicesD L
,L M
stringN T
connectionStringU e
,e f
DatabaseTypeg s
databaseType	t Ä
,
Ä Å
ServiceLifetime
Ç ë
serviceLifetime
í °
=
¢ £
ServiceLifetime
§ ≥
.
≥ ¥
	Transient
¥ Ω
,
Ω æ'
CosmosConfigurationParams
ø ÿ'
cosmosConfigurationParams
Ÿ Ú
=
Û Ù
null
ı ˘
)
˘ ˙
where
˚ Ä
T
Å Ç
:
É Ñ
	DbContext
Ö é
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
connectionString* :
): ;
); <
throw= B
newC F
ArgumentExceptionG X
(X Y
$"Y [
$str[ {
{{ |
connectionString	| å
}
å ç
$str
ç ®
"
® ©
)
© ™
;
™ ´
ServiceLifetime 
= 
serviceLifetime -
;- .
SetDatabase 
< 
T 
> 
( 
services #
,# $
databaseType% 1
,1 2%
cosmosConfigurationParams3 L
,L M
connectionStringN ^
)^ _
;_ `
} 	
public 
static 
async 
Task  
SetupDatabase! .
<. /
T/ 0
>0 1
(1 2
this2 6
IServiceCollection7 I
servicesJ R
,R S
IConfigurationT b
configurationc p
,p q
stringr x!
connectionStringName	y ç
,
ç é
DatabaseType
è õ
databaseType
ú ®
,
® ©
ServiceLifetime
™ π
serviceLifetime
∫ …
=
  À
ServiceLifetime
Ã €
.
€ ‹
	Transient
‹ Â
,
Â Ê
bool
Á Î
migrate
Ï Û
=
Ù ı
false
ˆ ˚
,
˚ ¸'
CosmosConfigurationParams
˝ ñ'
cosmosConfigurationParams
ó ∞
=
± ≤
null
≥ ∑
)
∑ ∏
where
π æ
T
ø ¿
:
¡ ¬
	DbContext
√ Ã
{ 	!
IConfigurationSection !
connectionString" 2
=3 4
GetConnectionString5 H
(H I
configurationI V
,V W 
connectionStringNameX l
)l m
;m n
ServiceLifetime 
= 
serviceLifetime -
;- .
SetDatabase 
< 
T 
> 
( 
services #
,# $
databaseType% 1
,1 2%
cosmosConfigurationParams3 L
,L M
connectionStringN ^
.^ _
Value_ d
)d e
;e f
if 
( 
migrate 
) 
await 
Migrate &
<& '
T' (
>( )
() *
services* 2
)2 3
.3 4
ConfigureAwait4 B
(B C
falseC H
)H I
;I J
} 	
private   
static   !
IConfigurationSection   ,
GetConnectionString  - @
(  @ A
IConfiguration  A O
configuration  P ]
,  ] ^
string  _ e 
connectionStringName  f z
)  z {
{!! 	
var"" (
applicationConnectionStrings"" ,
=""- .
configuration""/ <
.""< =

GetSection""= G
(""G H
$str""H [
)""[ \
.""\ ]
GetChildren""] h
(""h i
)""i j
;""j k
if## 
(## (
applicationConnectionStrings## ,
==##- /
null##0 4
)##4 5
throw##6 ;
new##< ?
ArgumentException##@ Q
(##Q R
$str##R }
)##} ~
;##~ 
var$$ 
connectionString$$  
=$$! "(
applicationConnectionStrings$$# ?
.$$? @
FirstOrDefault$$@ N
($$N O
c$$O P
=>$$Q S
string$$T Z
.$$Z [
Equals$$[ a
($$a b
c$$b c
.$$c d
Key$$d g
,$$g h 
connectionStringName$$i }
,$$} ~
StringComparison	$$ è
.
$$è ê&
CurrentCultureIgnoreCase
$$ê ®
)
$$® ©
)
$$© ™
;
$$™ ´
if%% 
(%% 
connectionString%%  
==%%! #
null%%$ (
||%%) +
string%%, 2
.%%2 3
IsNullOrEmpty%%3 @
(%%@ A
connectionString%%A Q
.%%Q R
Value%%R W
)%%W X
)%%X Y
throw%%Z _
new%%` c
ArgumentException%%d u
(%%u v
$"%%v x
$str	%%x ò
{
%%ò ô"
connectionStringName
%%ô ≠
}
%%≠ Æ
$str
%%Æ …
"
%%…  
)
%%  À
;
%%À Ã
return&& 
connectionString&& #
;&&# $
}'' 	
private)) 
static)) 
async)) 
Task)) !
Migrate))" )
<))) *
T))* +
>))+ ,
()), -
IServiceCollection))- ?
services))@ H
)))H I
where))J O
T))P Q
:))R S
	DbContext))T ]
{** 	
try++ 
{,, 
using-- 
var-- 
sp-- 
=-- 
services-- '
.--' ( 
BuildServiceProvider--( <
(--< =
)--= >
;--> ?
if.. 
(.. 
sp.. 
==.. 
null.. 
).. 
{// 
Devon4NetLogger00 #
.00# $
Error00$ )
(00) *
$"00* ,
$str00, `
{00` a
typeof00a g
(00g h
T00h i
)00i j
.00j k
FullName00k s
}00s t
$str	00t â
"
00â ä
)
00ä ã
;
00ã å
}11 
else22 
{33 
var44 
context44 
=44  !
sp44" $
.44$ %

GetService44% /
(44/ 0
typeof440 6
(446 7
T447 8
)448 9
)449 :
;44: ;
if55 
(55 
context55 
==55  "
null55# '
)55' (
{66 
Devon4NetLogger77 '
.77' (
Error77( -
(77- .
$"77. 0
$str770 B
{77B C
typeof77C I
(77I J
T77J K
)77K L
.77L M
FullName77M U
}77U V
$str77V }
"77} ~
)77~ 
;	77 Ä
}88 
(:: 
(:: 
T:: 
):: 
context:: 
)::  
?::  !
.::! "
Database::" *
.::* +
Migrate::+ 2
(::2 3
)::3 4
;::4 5
await;; 
sp;; 
.;; 
DisposeAsync;; )
(;;) *
);;* +
.;;+ ,
ConfigureAwait;;, :
(;;: ;
false;;; @
);;@ A
;;;A B
}<< 
}== 
catch>> 
(>> 
	Exception>> 
ex>> 
)>>  
{?? 
Devon4NetLogger@@ 
.@@  
Fatal@@  %
(@@% &
ex@@& (
)@@( )
;@@) *
}AA 
}BB 	
privateDD 
staticDD 
voidDD 
SetDatabaseDD '
<DD' (
TDD( )
>DD) *
(DD* +
IServiceCollectionDD+ =
servicesDD> F
,DDF G
DatabaseTypeDDH T
databaseTypeDDU a
,DDa b%
CosmosConfigurationParamsEE %%
cosmosConfigurationParamsEE& ?
,EE? @
stringEEA G
connectionStringEEH X
)EEX Y
whereEEZ _
TEE` a
:EEb c
	DbContextEEd m
{FF 	
switchGG 
(GG 
databaseTypeGG  
)GG  !
{HH 
caseII 
DatabaseTypeII !
.II! "
	SqlServerII" +
:II+ ,
servicesJJ 
.JJ 
AddDbContextJJ )
<JJ) *
TJJ* +
>JJ+ ,
(JJ, -
optionsJJ- 4
=>JJ5 7
optionsJJ8 ?
.JJ? @
UseSqlServerJJ@ L
(JJL M
connectionStringJJM ]
,JJ] ^"
sqlServerOptionsActionKK .
:KK. /

sqlOptionsKK0 :
=>KK; =
{LL 

sqlOptionsMM &
.MM& ' 
EnableRetryOnFailureMM' ;
(MM; <
maxRetryCountNN  -
:NN- .
MaxRetryCountNN/ <
,NN< =
maxRetryDelayOO  -
:OO- .
TimeSpanOO/ 7
.OO7 8
FromSecondsOO8 C
(OOC D
MaxRetryDelayOOD Q
)OOQ R
,OOR S
errorNumbersToAddPP  1
:PP1 2
nullPP3 7
)PP7 8
;PP8 9
}QQ 
)QQ 
,QQ 
ServiceLifetimeQQ *
)QQ* +
;QQ+ ,
breakRR 
;RR 
caseSS 
DatabaseTypeSS !
.SS! "
InMemorySS" *
:SS* +
servicesTT 
.TT 
AddDbContextTT )
<TT) *
TTT* +
>TT+ ,
(TT, -
optionsTT- 4
=>TT5 7
optionsTT8 ?
.TT? @
UseInMemoryDatabaseTT@ S
(TTS T
connectionStringTTT d
)TTd e
,TTe f
ServiceLifetimeTTg v
)TTv w
;TTw x
breakUU 
;UU 
caseVV 
DatabaseTypeVV !
.VV! "
MySqlVV" '
:VV' (
servicesWW 
.WW 
AddDbContextWW )
<WW) *
TWW* +
>WW+ ,
(WW, -
optionsWW- 4
=>WW5 7
optionsWW8 ?
.WW? @
UseMySqlWW@ H
(WWH I
connectionStringWWI Y
,WWY Z
ServerVersionWW[ h
.WWh i

AutoDetectWWi s
(WWs t
connectionString	WWt Ñ
)
WWÑ Ö
,
WWÖ Ü

sqlOptions
WWá ë
=>
WWí î
{XX 

sqlOptionsYY "
.YY" # 
EnableRetryOnFailureYY# 7
(YY7 8
maxRetryCountZZ )
:ZZ) *
MaxRetryCountZZ+ 8
,ZZ8 9
maxRetryDelay[[ )
:[[) *
TimeSpan[[+ 3
.[[3 4
FromSeconds[[4 ?
([[? @
MaxRetryDelay[[@ M
)[[M N
,[[N O
errorNumbersToAdd\\ -
:\\- .
new\\/ 2
List\\3 7
<\\7 8
int\\8 ;
>\\; <
(\\< =
)\\= >
)\\> ?
;\\? @
}]] 
)]] 
,]] 
ServiceLifetime]] &
)]]& '
;]]' (
break^^ 
;^^ 
case__ 
DatabaseType__ !
.__! "
MariaDb__" )
:__) *
services`` 
.`` 
AddDbContext`` )
<``) *
T``* +
>``+ ,
(``, -
options``- 4
=>``5 7
options``8 ?
.``? @
UseMySql``@ H
(``H I
ServerVersion``I V
.``V W

AutoDetect``W a
(``a b
connectionString``b r
)``r s
,``s t

sqlOptions``u 
=>
``Ä Ç
{aa 

sqlOptionsbb "
.bb" # 
EnableRetryOnFailurebb# 7
(bb7 8
maxRetryCountcc )
:cc) *
MaxRetryCountcc+ 8
,cc8 9
maxRetryDelaydd )
:dd) *
TimeSpandd+ 3
.dd3 4
FromSecondsdd4 ?
(dd? @
MaxRetryDelaydd@ M
)ddM N
,ddN O
errorNumbersToAddee -
:ee- .
newee/ 2
Listee3 7
<ee7 8
intee8 ;
>ee; <
(ee< =
)ee= >
)ee> ?
;ee? @
}ff 
)ff 
,ff 
ServiceLifetimeff &
)ff& '
;ff' (
breakgg 
;gg 
casehh 
DatabaseTypehh !
.hh! "
Sqlitehh" (
:hh( )
servicesii 
.ii 
AddDbContextii )
<ii) *
Tii* +
>ii+ ,
(ii, -
optionsii- 4
=>ii5 7
optionsii8 ?
.ii? @
	UseSqliteii@ I
(iiI J
connectionStringiiJ Z
)iiZ [
,ii[ \
ServiceLifetimeii] l
)iil m
;iim n
breakjj 
;jj 
casekk 
DatabaseTypekk !
.kk! "
Cosmoskk" (
:kk( )
ifll 
(ll %
cosmosConfigurationParamsll 1
==ll2 4
nullll5 9
)ll9 :
throwmm 
newmm !
ArgumentExceptionmm" 3
(mm3 4
$"mm4 6
$strmm6 _
"mm_ `
)mm` a
;mma b
servicesnn 
.nn 
AddDbContextnn )
<nn) *
Tnn* +
>nn+ ,
(nn, -
optionsnn- 4
=>nn5 7
optionsnn8 ?
.nn? @
	UseCosmosnn@ I
(nnI J%
cosmosConfigurationParamsnnJ c
.nnc d
Endpointnnd l
,nnl m%
cosmosConfigurationParamsoo 1
.oo1 2
Keyoo2 5
,oo5 6%
cosmosConfigurationParamsoo7 P
.ooP Q
DatabaseNameooQ ]
)oo] ^
,oo^ _
ServiceLifetimeoo` o
)ooo p
;oop q
breakpp 
;pp 
caseqq 
DatabaseTypeqq !
.qq! "

PostgreSQLqq" ,
:qq, -
servicesrr 
.rr 
AddDbContextrr )
<rr) *
Trr* +
>rr+ ,
(rr, -
optionsrr- 4
=>rr5 7
optionsrr8 ?
.rr? @
	UseNpgsqlrr@ I
(rrI J
connectionStringrrJ Z
,rrZ [

sqlOptionsrr\ f
=>rrg i
{ss 

sqlOptionstt "
.tt" # 
EnableRetryOnFailurett# 7
(tt7 8
maxRetryCountuu )
:uu) *
MaxRetryCountuu+ 8
,uu8 9
maxRetryDelayvv )
:vv) *
TimeSpanvv+ 3
.vv3 4
FromSecondsvv4 ?
(vv? @
MaxRetryDelayvv@ M
)vvM N
,vvN O
errorCodesToAddww +
:ww+ ,
newww- 0
Listww1 5
<ww5 6
stringww6 <
>ww< =
(ww= >
)ww> ?
)ww? @
;ww@ A
}xx 
)xx 
,xx 
ServiceLifetimexx &
)xx& '
;xx' (
breakyy 
;yy 
casezz 
DatabaseTypezz !
.zz! "
FireBirdzz" *
:zz* +
services{{ 
.{{ 
AddDbContext{{ )
<{{) *
T{{* +
>{{+ ,
({{, -
options{{- 4
=>{{5 7
options{{8 ?
.{{? @
UseFirebird{{@ K
({{K L
connectionString{{L \
){{\ ]
,{{] ^
ServiceLifetime{{_ n
){{n o
;{{o p
break|| 
;|| 
case}} 
DatabaseType}} !
.}}! "
Oracle}}" (
:}}( )
services~~ 
.~~ 
AddDbContext~~ )
<~~) *
T~~* +
>~~+ ,
(~~, -
options~~- 4
=>~~5 7
options~~8 ?
.~~? @
	UseOracle~~@ I
(~~I J
connectionString~~J Z
)~~Z [
,~~[ \
ServiceLifetime~~] l
)~~l m
;~~m n
break 
; 
default
ÄÄ 
:
ÄÄ 
throw
ÅÅ 
new
ÅÅ 
ArgumentException
ÅÅ /
(
ÅÅ/ 0
$str
ÅÅ0 P
)
ÅÅP Q
;
ÅÅQ R
}
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ∂D
rC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\PredicateBuilder.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Common& ,
{ 
public 

static 
class 
PredicateBuilder (
{ 
public

 
static

 

Expression

  
<

  !
Func

! %
<

% &
T

& '
,

' (
bool

) -
>

- .
>

. /
True

0 4
<

4 5
T

5 6
>

6 7
(

7 8
)

8 9
{

: ;
return

< B
param

C H
=>

I K
true

L P
;

P Q
}

R S
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
False0 5
<5 6
T6 7
>7 8
(8 9
)9 :
{; <
return= C
paramD I
=>J L
falseM R
;R S
}T U
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
Create0 6
<6 7
T7 8
>8 9
(9 :

Expression: D
<D E
FuncE I
<I J
TJ K
,K L
boolM Q
>Q R
>R S
	predicateT ]
)] ^
{_ `
returna g
	predicateh q
;q r
}s t
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
And0 3
<3 4
T4 5
>5 6
(6 7
this7 ;

Expression< F
<F G
FuncG K
<K L
TL M
,M N
boolO S
>S T
>T U
firstV [
,[ \

Expression] g
<g h
Funch l
<l m
Tm n
,n o
boolp t
>t u
>u v
secondw }
)} ~
{ 	
return 
first 
. 
Compose  
(  !
second! '
,' (

Expression) 3
.3 4
AndAlso4 ;
); <
;< =
} 	
public!! 
static!! 

Expression!!  
<!!  !
Func!!! %
<!!% &
T!!& '
,!!' (
bool!!) -
>!!- .
>!!. /
Or!!0 2
<!!2 3
T!!3 4
>!!4 5
(!!5 6
this!!6 :

Expression!!; E
<!!E F
Func!!F J
<!!J K
T!!K L
,!!L M
bool!!N R
>!!R S
>!!S T
first!!U Z
,!!Z [

Expression!!\ f
<!!f g
Func!!g k
<!!k l
T!!l m
,!!m n
bool!!o s
>!!s t
>!!t u
second!!v |
)!!| }
{"" 	
return## 
first## 
.## 
Compose##  
(##  !
second##! '
,##' (

Expression##) 3
.##3 4
OrElse##4 :
)##: ;
;##; <
}$$ 	
public)) 
static)) 

Expression))  
<))  !
Func))! %
<))% &
T))& '
,))' (
bool))) -
>))- .
>)). /
Not))0 3
<))3 4
T))4 5
>))5 6
())6 7
this))7 ;

Expression))< F
<))F G
Func))G K
<))K L
T))L M
,))M N
bool))O S
>))S T
>))T U

expression))V `
)))` a
{** 	
var++ 
negated++ 
=++ 

Expression++ $
.++$ %
Not++% (
(++( )

expression++) 3
.++3 4
Body++4 8
)++8 9
;++9 :
return,, 

Expression,, 
.,, 
Lambda,, $
<,,$ %
Func,,% )
<,,) *
T,,* +
,,,+ ,
bool,,- 1
>,,1 2
>,,2 3
(,,3 4
negated,,4 ;
,,,; <

expression,,= G
.,,G H

Parameters,,H R
),,R S
;,,S T
}-- 	
static22 

Expression22 
<22 
T22 
>22 
Compose22 $
<22$ %
T22% &
>22& '
(22' (
this22( ,

Expression22- 7
<227 8
T228 9
>229 :
first22; @
,22@ A

Expression22B L
<22L M
T22M N
>22N O
second22P V
,22V W
Func22X \
<22\ ]

Expression22] g
,22g h

Expression22i s
,22s t

Expression22u 
>	22 Ä
merge
22Å Ü
)
22Ü á
{33 	
var55 
map55 
=55 
first55 
.55 

Parameters55 &
.66 
Select66 
(66 
(66 
f66 
,66 
i66 
)66 
=>66 !
new66" %
{66& '
f66( )
,66) *
s66+ ,
=66- .
second66/ 5
.665 6

Parameters666 @
[66@ A
i66A B
]66B C
}66D E
)66E F
.77 
ToDictionary77 
(77 
p77 
=>77  "
p77# $
.77$ %
s77% &
,77& '
p77( )
=>77* ,
p77- .
.77. /
f77/ 0
)770 1
;771 2
var:: 

secondBody:: 
=:: 
ParameterRebinder:: .
.::. /
ReplaceParameters::/ @
(::@ A
map::A D
,::D E
second::F L
.::L M
Body::M Q
)::Q R
;::R S
return== 

Expression== 
.== 
Lambda== $
<==$ %
T==% &
>==& '
(==' (
merge==( -
(==- .
first==. 3
.==3 4
Body==4 8
,==8 9

secondBody==: D
)==D E
,==E F
first==G L
.==L M

Parameters==M W
)==W X
;==X Y
}>> 	
class@@ 
ParameterRebinder@@ 
:@@  !
ExpressionVisitor@@" 3
{AA 	
readonlyBB 

DictionaryBB 
<BB  
ParameterExpressionBB  3
,BB3 4
ParameterExpressionBB5 H
>BBH I
_mapBBJ N
;BBN O
privateDD 
ParameterRebinderDD %
(DD% &

DictionaryDD& 0
<DD0 1
ParameterExpressionDD1 D
,DDD E
ParameterExpressionDDF Y
>DDY Z
mapDD[ ^
)DD^ _
{EE 
thisFF 
.FF 
_mapFF 
=FF 
mapFF 
??FF  "
newFF# &

DictionaryFF' 1
<FF1 2
ParameterExpressionFF2 E
,FFE F
ParameterExpressionFFG Z
>FFZ [
(FF[ \
)FF\ ]
;FF] ^
}GG 
publicII 
staticII 

ExpressionII $
ReplaceParametersII% 6
(II6 7

DictionaryII7 A
<IIA B
ParameterExpressionIIB U
,IIU V
ParameterExpressionIIW j
>IIj k
mapIIl o
,IIo p

ExpressionIIq {
expII| 
)	II Ä
{JJ 
returnKK 
newKK 
ParameterRebinderKK ,
(KK, -
mapKK- 0
)KK0 1
.KK1 2
VisitKK2 7
(KK7 8
expKK8 ;
)KK; <
;KK< =
}LL 
	protectedNN 
overrideNN 

ExpressionNN )
VisitParameterNN* 8
(NN8 9
ParameterExpressionNN9 L
nodeNNM Q
)NNQ R
{OO 
ifQQ 
(QQ 
_mapQQ 
.QQ 
TryGetValueQQ $
(QQ$ %
nodeQQ% )
,QQ) *
outQQ+ .
ParameterExpressionQQ/ B
replacementQQC N
)QQN O
)QQO P
{RR 
nodeSS 
=SS 
replacementSS &
;SS& '
}TT 
returnVV 
baseVV 
.VV 
VisitParameterVV *
(VV* +
nodeVV+ /
)VV/ 0
;VV0 1
}WW 
}XX 	
}YY 
}ZZ •
mC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Enums\DatabaseType.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Enums& +
{ 
public 

enum 
DatabaseType 
{ 
	SqlServer 
= 
$num 
, 
Sqlite 
= 
$num 
, 
InMemory 
= 
$num 
, 
Cosmos 
= 
$num 
, 

PostgreSQL		 
=		 
$num		 
,		 
MySql

 
=

 
$num

 
,

 
MariaDb 
= 
$num 
, 
FireBird 
= 
$num 
, 
Oracle 
= 
$num 
, 
MSAccess 
= 
$num 
} 
} Ë
zC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\ContextNullException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class  
ContextNullException %
:& '
	Exception( 1
{ 
public  
ContextNullException #
(# $
)$ %
:& '
base( ,
(, -
)- .
{ 	
} 	
public

  
ContextNullException

 #
(

# $
string

$ *
message

+ 2
)

2 3
:

4 5
base

6 :
(

: ;
message

; B
)

B C
{ 	
} 	
public  
ContextNullException #
(# $
string$ *
message+ 2
,2 3
	Exception4 =
innerException> L
)L M
:N O
baseP T
(T U
messageU \
,\ ]
innerException^ l
)l m
{ 	
} 	
	protected  
ContextNullException &
(& '
System' -
.- .
Runtime. 5
.5 6
Serialization6 C
.C D
SerializationInfoD U
serializationInfoV g
,g h
Systemi o
.o p
Runtimep w
.w x
Serialization	x Ö
.
Ö Ü
StreamingContext
Ü ñ
streamingContext
ó ß
)
ß ®
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} ì
ÅC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\RepositoryNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class '
RepositoryNotFoundException ,
:- .
	Exception/ 8
{ 
public '
RepositoryNotFoundException *
(* +
)+ ,
:- .
base/ 3
(3 4
)4 5
{ 	
} 	
public

 '
RepositoryNotFoundException

 *
(

* +
string

+ 1
message

2 9
)

9 :
:

; <
base

= A
(

A B
message

B I
)

I J
{ 	
} 	
public '
RepositoryNotFoundException *
(* +
string+ 1
message2 9
,9 :
	Exception; D
innerExceptionE S
)S T
:U V
baseW [
([ \
message\ c
,c d
innerExceptione s
)s t
{ 	
} 	
	protected '
RepositoryNotFoundException -
(- .
System. 4
.4 5
Runtime5 <
.< =
Serialization= J
.J K
SerializationInfoK \
serializationInfo] n
,n o
Systemp v
.v w
Runtimew ~
.~ 
Serialization	 å
.
å ç
StreamingContext
ç ù
streamingContext
û Æ
)
Æ Ø
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} Ä
~C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\TransactionNullException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class $
TransactionNullException )
:* +
	Exception, 5
{ 
public $
TransactionNullException '
(' (
)( )
:* +
base, 0
(0 1
)1 2
{ 	
} 	
public

 $
TransactionNullException

 '
(

' (
string

( .
message

/ 6
)

6 7
:

8 9
base

: >
(

> ?
message

? F
)

F G
{ 	
} 	
public $
TransactionNullException '
(' (
string( .
message/ 6
,6 7
	Exception8 A
innerExceptionB P
)P Q
:R S
baseT X
(X Y
messageY `
,` a
innerExceptionb p
)p q
{ 	
} 	
	protected $
TransactionNullException *
(* +
System+ 1
.1 2
Runtime2 9
.9 :
Serialization: G
.G H
SerializationInfoH Y
serializationInfoZ k
,k l
Systemm s
.s t
Runtimet {
.{ |
Serialization	| â
.
â ä
StreamingContext
ä ö
streamingContext
õ ´
)
´ ¨
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} æ
tC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Pagination\PaginationBase.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Pagination& 0
{ 
public 

abstract 
class 
PaginationBase (
{ 
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	PageCount 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
RowCount 
{ 
get !
;! "
set# &
;& '
}( )
public

 
int

 
FirstRowOnPage

 !
{ 	
get 
{ 
return 
( 
CurrentPage %
-& '
$num( )
)) *
*+ ,
PageSize- 5
+6 7
$num8 9
;9 :
}; <
} 	
public 
int 
LastRowOnPage  
{ 	
get 
{ 
return 
Math 
. 
Min !
(! "
CurrentPage" -
*. /
PageSize0 8
,8 9
RowCount: B
)B C
;C D
}E F
} 	
} 
} Ñ
vC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Pagination\PaginationResult.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Pagination& 0
{ 
public 

class 
PaginationResult !
<! "
T" #
># $
:% &
PaginationBase' 5
where6 ;
T< =
:> ?
class@ E
{ 
public 
IList 
< 
T 
> 
Results 
{  !
get" %
;% &
set' *
;* +
}, -
public 
PaginationResult 
(  
)  !
{ 	
Results		 
=		 
new		 
List		 
<		 
T		  
>		  !
(		! "
)		" #
;		# $
}

 	
} 
} ∆/
qC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Repository\IRepository.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Repository& 0
{ 
public 

	interface 
IRepository  
<  !
T! "
>" #
where$ )
T* +
:, -
class. 3
{ 
Task		 
<		 
T		 
>		 
Create		 
(		 
T		 
entity		 
,		  
bool		! %
detach		& ,
=		- .
true		/ 3
)		3 4
;		4 5
Task

 
<

 
T

 
>

 
Update

 
(

 
T

 
entity

 
,

  
bool

! %
detach

& ,
=

- .
true

/ 3
)

3 4
;

4 5
Task 
< 
bool 
> 
Delete 
( 
T 
entity "
," #
bool$ (
detach) /
=0 1
true2 6
)6 7
;7 8
Task 
< 
bool 
> 
Delete 
( 

Expression $
<$ %
Func% )
<) *
T* +
,+ ,
bool- 1
>1 2
>2 3
	predicate4 =
=> ?
null@ D
)D E
;E F
Task 
< 
T 
> 
GetFirstOrDefault !
(! "

Expression" ,
<, -
Func- 1
<1 2
T2 3
,3 4
bool5 9
>9 :
>: ;
	predicate< E
=F G
nullH L
)L M
;M N
Task 
< 
T 
> 
GetLastOrDefault  
(  !

Expression! +
<+ ,
Func, 0
<0 1
T1 2
,2 3
bool4 8
>8 9
>9 :
	predicate; D
=E F
nullG K
)K L
;L M
Task 
< 
IList 
< 
T 
> 
> 
Get 
( 

Expression %
<% &
Func& *
<* +
T+ ,
,, -
bool. 2
>2 3
>3 4
	predicate5 >
=? @
nullA E
)E F
;F G
Task 
< 
IList 
< 
T 
> 
> 
Get 
( 
IList  
<  !
string! '
>' (
include) 0
,0 1

Expression2 <
<< =
Func= A
<A B
TB C
,C D
boolE I
>I J
>J K
	predicateL U
=V W
nullX \
)\ ]
;] ^
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
(% &
int& )
currentPage* 5
,5 6
int7 :
pageSize; C
,C D
IListE J
<J K
stringK Q
>Q R
includedNestedFielsS f
,f g

Expressionh r
<r s
Funcs w
<w x
Tx y
,y z
bool{ 
>	 Ä
>
Ä Å
	predicate
Ç ã
=
å ç
null
é í
)
í ì
;
ì î
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
(% &
int& )
currentPage* 5
,5 6
int7 :
pageSize; C
,C D

ExpressionE O
<O P
FuncP T
<T U
TU V
,V W
boolX \
>\ ]
>] ^
	predicate_ h
=i j
nullk o
)o p
;p q
Task 
< 
IList 
< 
T 
> 
> 
Get 
< 
TKey 
>  
(  !

Expression! +
<+ ,
Func, 0
<0 1
T1 2
,2 3
bool4 8
>8 9
>9 :
	predicate; D
,D E

ExpressionF P
<P Q
FuncQ U
<U V
TV W
,W X
TKeyY ]
>] ^
>^ _
keySelector` k
,k l
ListSortDirectionm ~
sortDirection	 å
)
å ç
;
ç é
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
<% &
TKey& *
>* +
(+ ,
int, /
currentPage0 ;
,; <
int= @
pageSizeA I
,I J

ExpressionK U
<U V
FuncV Z
<Z [
T[ \
,\ ]
bool^ b
>b c
>c d
	predicatee n
,n o

Expressionp z
<z {
Func{ 
<	 Ä
T
Ä Å
,
Å Ç
TKey
É á
>
á à
>
à â
keySelector
ä ï
,
ï ñ
ListSortDirection
ó ®
sortDirection
© ∂
)
∂ ∑
;
∑ ∏
Task 
< 
long 
> 
Count 
( 

Expression #
<# $
Func$ (
<( )
T) *
,* +
bool, 0
>0 1
>1 2
	predicate3 <
== >
null? C
)C D
;D E
} 
} ºπ
pC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Repository\Repository.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Repository& 0
{ 
public		 

class		 

Repository		 
<		 
T		 
>		 
:		  
IRepository		! ,
<		, -
T		- .
>		. /
where		0 5
T		6 7
:		8 9
class		: ?
{

 
private 
	DbContext 
	DbContext #
{$ %
get& )
;) *
set+ .
;. /
}0 1
private 
bool 
DbContextBehaviour '
{) *
get+ .
;. /
set0 3
;3 4
}5 6
private 

IQueryable 
< 
T 
> 
	Queryable '
=>( *
SetQuery+ 3
<3 4
T4 5
>5 6
(6 7
)7 8
;8 9
public 

Repository 
( 
	DbContext #
context$ +
,+ ,
bool- 1
dbContextBehaviour2 D
=E F
falseG L
)L M
{ 	
	DbContext 
= 
context 
;  
DbContextBehaviour 
=  
dbContextBehaviour! 3
;3 4
} 	
public 
async 
Task 
< 
T 
> 
Create #
(# $
T$ %
entity& ,
,, -
bool. 2
detach3 9
=: ;
true< @
)@ A
{ 	
var 
result 
= 
await 
	DbContext (
.( )
Set) ,
<, -
T- .
>. /
(/ 0
)0 1
.1 2
AddAsync2 :
(: ;
entity; A
)A B
.B C
ConfigureAwaitC Q
(Q R
falseR W
)W X
;X Y
result 
. 
State 
= 
EntityState &
.& '
Added' ,
;, -
await 
	DbContext 
. 
SaveChangesAsync ,
(, -
)- .
.. /
ConfigureAwait/ =
(= >
false> C
)C D
;D E
if   
(   
detach   
)   
result   
.   
State   $
=  % &
EntityState  ' 2
.  2 3
Detached  3 ;
;  ; <
return!! 
result!! 
.!! 
Entity!!  
;!!  !
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
T$$ 
>$$ 
Update$$ #
($$# $
T$$$ %
entity$$& ,
,$$, -
bool$$. 2
detach$$3 9
=$$: ;
true$$< @
)$$@ A
{%% 	
var&& 
result&& 
=&& 
	DbContext&& "
.&&" #
Set&&# &
<&&& '
T&&' (
>&&( )
(&&) *
)&&* +
.&&+ ,
Update&&, 2
(&&2 3
entity&&3 9
)&&9 :
;&&: ;
result'' 
.'' 
State'' 
='' 
EntityState'' &
.''& '
Modified''' /
;''/ 0
await(( 
	DbContext(( 
.(( 
SaveChangesAsync(( ,
(((, -
)((- .
.((. /
ConfigureAwait((/ =
(((= >
false((> C
)((C D
;((D E
if)) 
()) 
detach)) 
))) 
result)) 
.)) 
State)) $
=))% &
EntityState))' 2
.))2 3
Detached))3 ;
;)); <
return** 
result** 
.** 
Entity**  
;**  !
}++ 	
public-- 
async-- 
Task-- 
<-- 
bool-- 
>-- 
Delete--  &
(--& '
T--' (
entity--) /
,--/ 0
bool--1 5
detach--6 <
=--= >
true--? C
)--C D
{.. 	
var// 
result// 
=// 
	DbContext// "
.//" #
Set//# &
<//& '
T//' (
>//( )
(//) *
)//* +
.//+ ,
Remove//, 2
(//2 3
entity//3 9
)//9 :
;//: ;
result00 
.00 
State00 
=00 
EntityState00 &
.00& '
Deleted00' .
;00. /
var11 
deleted11 
=11 
await11 
	DbContext11  )
.11) *
SaveChangesAsync11* :
(11: ;
)11; <
.11< =
ConfigureAwait11= K
(11K L
false11L Q
)11Q R
;11R S
if22 
(22 
detach22 
)22 
result22 
.22 
State22 $
=22% &
EntityState22' 2
.222 3
Detached223 ;
;22; <
return33 
deleted33 
>33 
$num33 
;33 
}44 	
public66 
async66 
Task66 
<66 
bool66 
>66 
Delete66  &
(66& '

Expression66' 1
<661 2
Func662 6
<666 7
T667 8
,668 9
bool66: >
>66> ?
>66? @
	predicate66A J
=66K L
null66M Q
)66Q R
{77 	
var88 
result88 
=88 
new88 
List88 !
<88! "
bool88" &
>88& '
(88' (
)88( )
;88) *
var99 
entities99 
=99 
await99  
Get99! $
(99$ %
	predicate99% .
)99. /
.99/ 0
ConfigureAwait990 >
(99> ?
false99? D
)99D E
;99E F
foreach:: 
(:: 
var:: 
item:: 
in::  
entities::! )
)::) *
{;; 
result<< 
.<< 
Add<< 
(<< 
await<<  
Delete<<! '
(<<' (
item<<( ,
)<<, -
.<<- .
ConfigureAwait<<. <
(<<< =
false<<= B
)<<B C
)<<C D
;<<D E
}== 
return?? 
result?? 
.?? 
All?? 
(?? 
r?? 
=>?? !
r??" #
)??# $
;??$ %
}@@ 	
publicBB 
TaskBB 
<BB 
TBB 
>BB 
GetFirstOrDefaultBB (
(BB( )

ExpressionBB) 3
<BB3 4
FuncBB4 8
<BB8 9
TBB9 :
,BB: ;
boolBB< @
>BB@ A
>BBA B
	predicateBBC L
=BBM N
nullBBO S
)BBS T
{CC 	
returnDD !
GetQueryFromPredicateDD (
(DD( )
	predicateDD) 2
)DD2 3
.DD3 4
FirstOrDefaultAsyncDD4 G
(DDG H
)DDH I
;DDI J
}EE 	
publicGG 
TaskGG 
<GG 
TGG 
>GG 
GetLastOrDefaultGG '
(GG' (

ExpressionGG( 2
<GG2 3
FuncGG3 7
<GG7 8
TGG8 9
,GG9 :
boolGG; ?
>GG? @
>GG@ A
	predicateGGB K
=GGL M
nullGGN R
)GGR S
{HH 	
returnII !
GetQueryFromPredicateII (
(II( )
	predicateII) 2
)II2 3
.II3 4
LastOrDefaultAsyncII4 F
(IIF G
)IIG H
;IIH I
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IListLL 
<LL  
TLL  !
>LL! "
>LL" #
GetLL$ '
(LL' (

ExpressionLL( 2
<LL2 3
FuncLL3 7
<LL7 8
TLL8 9
,LL9 :
boolLL; ?
>LL? @
>LL@ A
	predicateLLB K
=LLL M
nullLLN R
)LLR S
{MM 	
returnNN 
awaitNN !
GetQueryFromPredicateNN .
(NN. /
	predicateNN/ 8
)NN8 9
.NN9 :
ToListAsyncNN: E
(NNE F
)NNF G
.NNG H
ConfigureAwaitNNH V
(NNV W
falseNNW \
)NN\ ]
;NN] ^
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IListQQ 
<QQ  
TQQ  !
>QQ! "
>QQ" #
GetQQ$ '
<QQ' (
TKeyQQ( ,
>QQ, -
(QQ- .

ExpressionQQ. 8
<QQ8 9
FuncQQ9 =
<QQ= >
TQQ> ?
,QQ? @
boolQQA E
>QQE F
>QQF G
	predicateQQH Q
,QQQ R

ExpressionQQS ]
<QQ] ^
FuncQQ^ b
<QQb c
TQQc d
,QQd e
TKeyQQf j
>QQj k
>QQk l
keySelectorQQm x
,QQx y
ListSortDirection	QQz ã
sortDirection
QQå ô
)
QQô ö
{RR 	
returnSS 
awaitSS '
GetSortedQueryFromPredicateSS 4
(SS4 5
	predicateSS5 >
,SS> ?
keySelectorSS@ K
,SSK L
sortDirectionSSM Z
)SSZ [
.SS[ \
ToListAsyncSS\ g
(SSg h
)SSh i
.SSi j
ConfigureAwaitSSj x
(SSx y
falseSSy ~
)SS~ 
;	SS Ä
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
IListVV 
<VV  
TVV  !
>VV! "
>VV" #
GetVV$ '
(VV' (
IListVV( -
<VV- .
stringVV. 4
>VV4 5
includeVV6 =
,VV= >

ExpressionVV? I
<VVI J
FuncVVJ N
<VVN O
TVVO P
,VVP Q
boolVVR V
>VVV W
>VVW X
	predicateVVY b
=VVc d
nullVVe i
)VVi j
{WW 	
returnXX 
awaitXX ,
 GetResultSetWithNestedPropertiesXX 9
(XX9 :
includeXX: A
,XXA B
	predicateXXC L
)XXL M
.XXM N
ToListAsyncXXN Y
(XXY Z
)XXZ [
.XX[ \
ConfigureAwaitXX\ j
(XXj k
falseXXk p
)XXp q
;XXq r
}YY 	
public[[ 
Task[[ 
<[[ 
PaginationResult[[ $
<[[$ %
T[[% &
>[[& '
>[[' (
Get[[) ,
([[, -
int[[- 0
currentPage[[1 <
,[[< =
int[[> A
pageSize[[B J
,[[J K
IList[[L Q
<[[Q R
string[[R X
>[[X Y
includedNestedFiels[[Z m
,[[m n

Expression[[o y
<[[y z
Func[[z ~
<[[~ 
T	[[ Ä
,
[[Ä Å
bool
[[Ç Ü
>
[[Ü á
>
[[á à
	predicate
[[â í
=
[[ì î
null
[[ï ô
)
[[ô ö
{\\ 	
return]] 1
%GetResultSetWithNestedPropertiesPaged]] 8
(]]8 9
currentPage]]9 D
,]]D E
pageSize]]F N
,]]N O
includedNestedFiels]]P c
,]]c d
	predicate]]e n
)]]n o
;]]o p
}^^ 	
public`` 
Task`` 
<`` 
PaginationResult`` $
<``$ %
T``% &
>``& '
>``' (
Get``) ,
(``, -
int``- 0
currentPage``1 <
,``< =
int``> A
pageSize``B J
,``J K

Expression``L V
<``V W
Func``W [
<``[ \
T``\ ]
,``] ^
bool``_ c
>``c d
>``d e
	predicate``f o
=``p q
null``r v
)``v w
{aa 	
returnbb 
GetPagedResultbb !
(bb! "
currentPagebb" -
,bb- .
pageSizebb/ 7
,bb7 8!
GetQueryFromPredicatebb9 N
(bbN O
	predicatebbO X
)bbX Y
)bbY Z
;bbZ [
}cc 	
publicee 
Taskee 
<ee 
PaginationResultee $
<ee$ %
Tee% &
>ee& '
>ee' (
Getee) ,
<ee, -
TKeyee- 1
>ee1 2
(ee2 3
intee3 6
currentPageee7 B
,eeB C
inteeD G
pageSizeeeH P
,eeP Q

ExpressioneeR \
<ee\ ]
Funcee] a
<eea b
Teeb c
,eec d
booleee i
>eei j
>eej k
	predicateeel u
,eev w

Expression	eex Ç
<
eeÇ É
Func
eeÉ á
<
eeá à
T
eeà â
,
eeâ ä
TKey
eeã è
>
eeè ê
>
eeê ë
keySelector
eeí ù
,
eeù û
ListSortDirection
eeü ∞
sortDirection
ee± æ
)
eeæ ø
{ff 	
returngg 
GetPagedResultgg !
(gg! "
currentPagegg" -
,gg- .
pageSizegg/ 7
,gg7 8'
GetSortedQueryFromPredicategg9 T
(ggT U
	predicateggU ^
,gg^ _
keySelectorgg` k
,ggk l
sortDirectionggm z
)ggz {
)gg{ |
;gg| }
}hh 	
publicjj 
Taskjj 
<jj 
longjj 
>jj 
Countjj 
(jj  

Expressionjj  *
<jj* +
Funcjj+ /
<jj/ 0
Tjj0 1
,jj1 2
booljj3 7
>jj7 8
>jj8 9
	predicatejj: C
=jjD E
nulljjF J
)jjJ K
{kk 	
returnll 
	predicatell 
==ll 
nullll  $
?ll% &
	Queryablell' 0
.ll0 1
LongCountAsyncll1 ?
(ll? @
)ll@ A
:llB C
	QueryablellD M
.llM N
LongCountAsyncllN \
(ll\ ]
	predicatell] f
)llf g
;llg h
}mm 	
privateoo 

IQueryableoo 
<oo 
Too 
>oo !
GetQueryFromPredicateoo 3
(oo3 4

Expressionoo4 >
<oo> ?
Funcoo? C
<ooC D
TooD E
,ooE F
boolooG K
>ooK L
>ooL M
	predicateooN W
)ooW X
{pp 	
returnqq 
	predicateqq 
!=qq 
nullqq  $
?qq% &
	Queryableqq' 0
.qq0 1
Whereqq1 6
(qq6 7
	predicateqq7 @
)qq@ A
:qqA B
	QueryableqqC L
;qqL M
}rr 	
privatett 

IQueryablett 
<tt 
Ttt 
>tt '
GetSortedQueryFromPredicatett 9
<tt9 :
TKeytt: >
>tt> ?
(tt? @

Expressiontt@ J
<ttJ K
FuncttK O
<ttO P
TttP Q
,ttQ R
boolttS W
>ttW X
>ttX Y
	predicatettZ c
,ttc d

Expressiontte o
<tto p
Functtp t
<ttt u
Tttu v
,ttv w
TKeyttx |
>tt| }
>tt} ~
keySelector	tt ä
,
ttä ã
ListSortDirection
ttå ù
sortDirection
ttû ´
)
tt´ ¨
{uu 	
ifvv 
(vv 
sortDirectionvv 
==vv  
ListSortDirectionvv! 2
.vv2 3
	Ascendingvv3 <
)vv< =
{ww 
returnxx 
	predicatexx  
!=xx! #
nullxx$ (
?xx) *
	Queryablexx+ 4
.xx4 5
Wherexx5 :
(xx: ;
	predicatexx; D
)xxD E
.xxE F
OrderByxxF M
(xxM N
keySelectorxxN Y
)xxY Z
:xx[ \
	Queryablexx] f
.xxf g
OrderByxxg n
(xxn o
keySelectorxxo z
)xxz {
;xx{ |
}yy 
return{{ 
	predicate{{ 
!={{ 
null{{  $
?{{% &
	Queryable{{' 0
.{{0 1
Where{{1 6
({{6 7
	predicate{{7 @
){{@ A
.{{A B
OrderByDescending{{B S
({{S T
keySelector{{T _
){{_ `
:{{a b
	Queryable{{c l
.{{l m
OrderByDescending{{m ~
({{~ 
keySelector	{{ ä
)
{{ä ã
;
{{ã å
}|| 	
private~~ 

IQueryable~~ 
<~~ 
T~~ 
>~~ ,
 GetResultSetWithNestedProperties~~ >
(~~> ?
IList~~? D
<~~D E
string~~E K
>~~K L
includedNestedFiels~~M `
,~~` a

Expression~~b l
<~~l m
Func~~m q
<~~q r
T~~r s
,~~s t
bool~~u y
>~~y z
>~~z {
	predicate	~~| Ö
=
~~Ü á
null
~~à å
)
~~å ç
{ 	
return
ÄÄ !
includedNestedFiels
ÄÄ &
.
ÄÄ& '
	Aggregate
ÄÄ' 0
(
ÄÄ0 1#
GetQueryFromPredicate
ÄÄ1 F
(
ÄÄF G
	predicate
ÄÄG P
)
ÄÄP Q
,
ÄÄQ R
(
ÄÄS T
current
ÄÄT [
,
ÄÄ[ \
property
ÄÄ] e
)
ÄÄe f
=>
ÄÄg i
current
ÄÄj q
.
ÄÄq r
Include
ÄÄr y
(
ÄÄy z
propertyÄÄz Ç
)ÄÄÇ É
)ÄÄÉ Ñ
;ÄÄÑ Ö
}
ÅÅ 	
private
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
PaginationResult
ÉÉ %
<
ÉÉ% &
T
ÉÉ& '
>
ÉÉ' (
>
ÉÉ( )3
%GetResultSetWithNestedPropertiesPaged
ÉÉ* O
(
ÉÉO P
int
ÉÉP S
currentPage
ÉÉT _
,
ÉÉ_ `
int
ÉÉa d
pageSize
ÉÉe m
,
ÉÉm n
IList
ÉÉo t
<
ÉÉt u
string
ÉÉu {
>
ÉÉ{ |"
includedNestedFielsÉÉ} ê
,ÉÉê ë

ExpressionÉÉí ú
<ÉÉú ù
FuncÉÉù °
<ÉÉ° ¢
TÉÉ¢ £
,ÉÉ£ §
boolÉÉ• ©
>ÉÉ© ™
>ÉÉ™ ´
	predicateÉÉ¨ µ
=ÉÉ∂ ∑
nullÉÉ∏ º
)ÉÉº Ω
{
ÑÑ 	
return
ÖÖ 
GetPagedResult
ÖÖ !
(
ÖÖ! "
currentPage
ÖÖ" -
,
ÖÖ- .
pageSize
ÖÖ/ 7
,
ÖÖ7 8.
 GetResultSetWithNestedProperties
ÖÖ9 Y
(
ÖÖY Z!
includedNestedFiels
ÖÖZ m
,
ÖÖm n
	predicate
ÖÖo x
)
ÖÖx y
)
ÖÖy z
;
ÖÖz {
}
ÜÜ 	
private
àà 
static
àà 
async
àà 
Task
àà !
<
àà! "
PaginationResult
àà" 2
<
àà2 3
T
àà3 4
>
àà4 5
>
àà5 6
GetPagedResult
àà7 E
(
ààE F
int
ààF I
currentPage
ààJ U
,
ààU V
int
ààW Z
pageSize
àà[ c
,
ààc d

IQueryable
ààe o
<
àào p
T
ààp q
>
ààq r

resultList
ààs }
)
àà} ~
{
ââ 	
var
ää 
pagedResult
ää 
=
ää 
new
ää !
PaginationResult
ää" 2
<
ää2 3
T
ää3 4
>
ää4 5
(
ää5 6
)
ää6 7
{
ää8 9
CurrentPage
ää: E
=
ääF G
currentPage
ääH S
,
ääS T
PageSize
ääU ]
=
ää^ _
pageSize
ää` h
,
ääh i
RowCount
ääj r
=
ääs t
await
ääu z

resultListää{ Ö
.ääÖ Ü

CountAsyncääÜ ê
(ääê ë
)ääë í
.ääí ì
ConfigureAwaitääì °
(ää° ¢
falseää¢ ß
)ääß ®
}ää© ™
;ää™ ´
var
åå 
	pageCount
åå 
=
åå 
(
åå 
double
åå #
)
åå# $
pagedResult
åå$ /
.
åå/ 0
RowCount
åå0 8
/
åå9 :
pageSize
åå; C
;
ååC D
pagedResult
çç 
.
çç 
	PageCount
çç !
=
çç" #
(
çç$ %
int
çç% (
)
çç( )
Math
çç) -
.
çç- .
Ceiling
çç. 5
(
çç5 6
	pageCount
çç6 ?
)
çç? @
;
çç@ A
var
èè 
skip
èè 
=
èè 
(
èè 
currentPage
èè #
-
èè$ %
$num
èè& '
)
èè' (
*
èè) *
pageSize
èè+ 3
;
èè3 4
pagedResult
êê 
.
êê 
Results
êê 
=
êê  !
await
êê" '

resultList
êê( 2
.
êê2 3
AsNoTracking
êê3 ?
(
êê? @
)
êê@ A
.
êêA B
Skip
êêB F
(
êêF G
skip
êêG K
)
êêK L
.
êêL M
Take
êêM Q
(
êêQ R
pageSize
êêR Z
)
êêZ [
.
êê[ \
ToListAsync
êê\ g
(
êêg h
)
êêh i
.
êêi j
ConfigureAwait
êêj x
(
êêx y
false
êêy ~
)
êê~ 
;êê Ä
return
íí 
pagedResult
íí 
;
íí 
}
ìì 	
private
ïï 

IQueryable
ïï 
<
ïï 
S
ïï 
>
ïï 
SetQuery
ïï &
<
ïï& '
S
ïï' (
>
ïï( )
(
ïï) *
)
ïï* +
where
ïï, 1
S
ïï2 3
:
ïï4 5
class
ïï6 ;
{
ññ 	!
SetContextBehaviour
óó 
(
óó   
DbContextBehaviour
óó  2
)
óó2 3
;
óó3 4
return
òò 
	DbContext
òò 
.
òò 
Set
òò  
<
òò  !
S
òò! "
>
òò" #
(
òò# $
)
òò$ %
.
òò% &
AsNoTracking
òò& 2
(
òò2 3
)
òò3 4
;
òò4 5
}
ôô 	
private
õõ 
void
õõ !
SetContextBehaviour
õõ (
(
õõ( )
bool
õõ* .
enabled
õõ/ 6
)
õõ6 7
{
úú 	
	DbContext
ùù 
.
ùù 
ChangeTracker
ùù #
.
ùù# $&
AutoDetectChangesEnabled
ùù$ <
=
ùù= >
enabled
ùù? F
;
ùùF G
	DbContext
üü 
.
üü 
ChangeTracker
üü #
.
üü# $ 
LazyLoadingEnabled
üü$ 6
=
üü7 8
enabled
üü9 @
;
üü@ A
	DbContext
°° 
.
°° 
ChangeTracker
°° #
.
°°# $#
QueryTrackingBehavior
°°$ 9
=
°°: ;
enabled
°°< C
?
°°D E#
QueryTrackingBehavior
°°F [
.
°°[ \
TrackAll
°°\ d
:
°°e f#
QueryTrackingBehavior
°°g |
.
°°| }

NoTracking°°} á
;°°á à
}
££ 	
internal
•• 
void
•• 

SetContext
••  
(
••  !
	DbContext
••! *
context
••+ 2
)
••2 3
{
¶¶ 	
	DbContext
ßß 
=
ßß 
context
ßß 
??
ßß  "
throw
ßß# (
new
ßß) ,"
ContextNullException
ßß- A
(
ßßA B
nameof
ßßB H
(
ßßH I
context
ßßI P
)
ßßP Q
)
ßßQ R
;
ßßR S
}
®® 	
}
©© 
}™™ Ä
kC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Service\IService.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Service& -
{ 
public 

	interface 
IService 
{ 
} 
} ’
jC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\Service\Service.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Service& -
{ 
public 

class 
Service 
< 
TContext !
>! "
:# $
IService% -
where. 3
TContext4 <
:= >
	DbContext? H
{ 
public 
IUnitOfWork 
< 
TContext #
># $
UoW% (
{) *
get+ .
;. /
}0 1
public

 
Service

 
(

 
IUnitOfWork

 "
<

" #
TContext

# +
>

+ ,
uoW

- 0
)

0 1
{ 	
UoW 
= 
uoW 
; 
} 	
} 
} —
rC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWorkConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
{ 
public 

static 
class #
UnitOfWorkConfiguration /
{		 
public

 
static

 
void

 
SetupUnitOfWork

 *
(

* +
this

+ /
IServiceCollection

0 B
services

C K
)

K L
{ 	
services 
. 
AddTransient !
(! "
typeof" (
(( )
IRepository) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

Repository@ J
<J K
>K L
)L M
)M N
;N O
services 
. 
AddTransient !
(! "
typeof" (
(( )
IUnitOfWork) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

UnitOfWork@ J
<J K
>K L
)L M
)M N
;N O
} 	
public 
static 
void 
SetupUnitOfWork *
(* +
this+ /
IServiceCollection0 B
servicesC K
,K L
TypeM Q"
assemblyContainerClassR h
,h i
stringj p
serviceSufixq }
=~ 
$str
Ä â
,
â ä
string
ã ë
repositorySufix
í °
=
¢ £
$str
§ ∞
)
∞ ±
{ 	
services 
. 
AddTransient !
(! "
typeof" (
(( )
IRepository) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

Repository@ J
<J K
>K L
)L M
)M N
;N O
services 
. 
AddTransient !
(! "
typeof" (
(( )
IUnitOfWork) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

UnitOfWork@ J
<J K
>K L
)L M
)M N
;N O
services 
. 
AutoRegisterClasses (
(( )
new) ,
List- 1
<1 2
Type2 6
>6 7
{8 9"
assemblyContainerClass: P
}Q R
,R S
newT W
ListX \
<\ ]
string] c
>c d
{e f
serviceSufixg s
,s t
repositorySufix	u Ñ
}
Ö Ü
)
Ü á
;
á à
} 	
} 
} ≠
qC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWork\IUnitOfWork.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

UnitOfWork& 0
{ 
public 

	interface 
IUnitOfWork  
<  !
TContext! )
>) *
where+ 0
TContext1 9
:: ;
	DbContext< E
{ 
Task 
< !
IDbContextTransaction "
>" #
BeginTransaction$ 4
(4 5
)5 6
;6 7
Task		 
Commit		 
(		 !
IDbContextTransaction		 )
transaction		* 5
)		5 6
;		6 7
T

 	

Repository


 
<

 
T

 
>

 
(

 
)

 
where

 
T

  !
:

" #
class

$ )
;

) *
T 	

Repository
 
< 
T 
, 
TS 
> 
( 
) 
where "
T# $
:% &
class' ,
where- 2
TS3 5
:6 7
class8 =
;= >
Task 
Rollback 
( !
IDbContextTransaction +
transaction, 7
)7 8
;8 9
IExecutionStrategy #
CreateExecutionStrategy 2
(2 3
)3 4
;4 5
} 
} æ;
pC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWork\UnitOfWork.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

UnitOfWork& 0
{ 
public 

class 

UnitOfWork 
< 
TContext $
>$ %
:& '
IUnitOfWork( 3
<3 4
TContext4 <
>< =
where> C
TContextD L
:M N
	DbContextO X
,X Y
IDisposableZ e
{		 
private

 
TContext

 
Context

  
{

! "
get

# &
;

& '
}

( )
private 
IServiceProvider  
ServiceProvider! 0
{1 2
get3 6
;6 7
}8 9
public 

UnitOfWork 
( 
TContext "
context# *
,* +
IServiceProvider, <
serviceProvider= L
)L M
{ 	
Context 
= 
context 
??  
throw! &
new' * 
ContextNullException+ ?
(? @
nameof@ F
(F G
contextG N
)N O
)O P
;P Q
ServiceProvider 
= 
serviceProvider -
;- .
} 	
public 
Task 
< !
IDbContextTransaction )
>) *
BeginTransaction+ ;
(; <
)< =
{ 	
return 
Context 
. 
Database #
.# $!
BeginTransactionAsync$ 9
(9 :
): ;
;; <
} 	
public 
Task 
Rollback 
( !
IDbContextTransaction 2
transaction3 >
)> ?
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
RollbackTransaction" 5
(5 6
transaction6 A
)A B
)B C
;C D
} 	
public 
IExecutionStrategy !#
CreateExecutionStrategy" 9
(9 :
): ;
{ 	
return 
Context 
. 
Database #
.# $#
CreateExecutionStrategy$ ;
(; <
)< =
;= >
}   	
public"" 
Task"" 
Commit"" 
("" !
IDbContextTransaction"" 0
transaction""1 <
)""< =
{## 	
return$$ 
Task$$ 
.$$ 
Run$$ 
($$ 
($$ 
)$$ 
=>$$ !
{%% 
if&& 
(&& 
transaction&&  
==&&! #
null&&$ (
)&&( )
{'' 
throw(( 
new(( $
TransactionNullException(( 7
(((7 8
$"((8 :
$str((: w
"((w x
)((x y
;((y z
})) 
try** 
{++ 
transaction,,  
.,,  !
Commit,,! '
(,,' (
),,( )
;,,) *
}-- 
catch.. 
(.. (
DbUpdateConcurrencyException.. 4
ex..5 7
)..7 8
{// 
Console00 
.00 
	WriteLine00 &
(00& '
$"00' )
{00) *
ex00* ,
.00, -
Message00- 4
}004 5
$str005 6
{006 7
ex007 9
.009 :
InnerException00: H
}00H I
"00I J
)00J K
;00K L
RollbackTransaction11 (
(11( )
transaction11) 4
)114 5
;115 6
throw22 
;22 
}33 
catch44 
(44 
	Exception44 !
ex44" $
)44$ %
{55 
Console66 
.66 
	WriteLine66 &
(66& '
$"66' )
{66) *
ex66* ,
.66, -
Message66- 4
}664 5
$str665 6
{666 7
ex667 9
.669 :
InnerException66: H
}66H I
"66I J
)66J K
;66K L
RollbackTransaction77 (
(77( )
transaction77) 4
)774 5
;775 6
throw88 
;88 
}99 
}:: 
):: 
;:: 
};; 	
publicBB 
TBB 

RepositoryBB 
<BB 
TBB 
>BB 
(BB 
)BB  
whereBB! &
TBB' (
:BB) *
classBB+ 0
{CC 	
returnDD 
GetRepositoryDD  
<DD  !
TDD! "
>DD" #
(DD# $
)DD$ %
;DD% &
}EE 	
publicMM 
TMM 

RepositoryMM 
<MM 
TMM 
,MM 
TSMM  
>MM  !
(MM! "
)MM" #
whereMM$ )
TMM* +
:MM, -
classMM. 3
whereMM4 9
TSMM: <
:MM= >
classMM? D
{NN 	
varOO 

repositoryOO 
=OO 
GetRepositoryOO *
<OO* +
TOO+ ,
>OO, -
(OO- .
)OO. /
;OO/ 0
(QQ 

repositoryQQ 
asQQ 

RepositoryQQ %
<QQ% &
TSQQ& (
>QQ( )
)QQ) *
?QQ* +
.QQ+ ,

SetContextQQ, 6
(QQ6 7
ContextQQ7 >
)QQ> ?
;QQ? @
returnSS 

repositorySS 
;SS 
}TT 	
privateVV 
staticVV 
voidVV 
RollbackTransactionVV /
(VV/ 0!
IDbContextTransactionVV0 E
transactionVVF Q
)VVQ R
{WW 	
ifXX 
(XX 
transactionXX 
==XX 
nullXX #
)XX# $
{YY 
throwZZ 
newZZ $
TransactionNullExceptionZZ 2
(ZZ2 3
$"ZZ3 5
$strZZ5 r
"ZZr s
)ZZs t
;ZZt u
}[[ 
transaction]] 
.]] 
Rollback]]  
(]]  !
)]]! "
;]]" #
transaction^^ 
.^^ 
Dispose^^ 
(^^  
)^^  !
;^^! "
}__ 	
privateaa 
Taa 
GetRepositoryaa 
<aa  
Taa  !
>aa! "
(aa" #
)aa# $
whereaa% *
Taa+ ,
:aa- .
classaa/ 4
{bb 	
varcc 
repositoryTypecc 
=cc  
typeofcc! '
(cc' (
Tcc( )
)cc) *
;cc* +
vardd 

repositorydd 
=dd 
ServiceProviderdd ,
.dd, -

GetServicedd- 7
(dd7 8
repositoryTypedd8 F
)ddF G
;ddG H
ifff 
(ff 

repositoryff 
==ff 
nullff "
)ff" #
{gg 
throwhh 
newhh '
RepositoryNotFoundExceptionhh 5
(hh5 6
$"hh6 8
$strhh8 G
{hhG H
repositoryTypehhH V
.hhV W
NamehhW [
}hh[ \
$str	hh\ Æ
"
hhÆ Ø
)
hhØ ∞
;
hh∞ ±
}ii 
returnkk 

repositorykk 
askk  
Tkk! "
;kk" #
}ll 	
}mm 
}nn 