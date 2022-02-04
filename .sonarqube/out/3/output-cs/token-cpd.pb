Â=
™C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Controllers\AccessCodeController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T
ControllersT _
{		 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class  
AccessCodeController %
:% &
ControllerBase' 5
{ 
private 
readonly 
IAccessCodeService +
_AccessCodeService, >
;> ?
public  
AccessCodeController #
(# $
IAccessCodeService$ 6
AccessCodeService7 H
)H I
{ 	
_AccessCodeService 
= 
AccessCodeService 0
;0 1
} 	
[!! 	
HttpGet!!	 
(!! 
$str!! 1
)!!1 2
]!!2 3
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
AccessCodeDto""% 2
)""2 3
,""3 4
StatusCodes""5 @
.""@ A
Status200OK""A L
)""L M
]""M N
[## 	 
ProducesResponseType##	 
(## 
StatusCodes## )
.##) *
Status400BadRequest##* =
)##= >
]##> ?
[$$ 	 
ProducesResponseType$$	 
($$ 
StatusCodes$$ )
.$$) *
Status404NotFound$$* ;
)$$; <
]$$< =
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *(
Status500InternalServerError%%* F
)%%F G
]%%G H
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
>&&& '*
SearchAccessCodebyIdAccesscode&&( F
(&&F G
String&&G M
idaccesscode&&N Z
)&&Z [
{'' 	
Devon4NetLogger(( 
.(( 
Debug(( !
(((! "
$str((" U
)((U V
;((V W
return)) 
Ok)) 
()) 
await)) 
_AccessCodeService)) .
.)). / 
SearchAccessCodebyId))/ C
())C D
idaccesscode))D P
)))P Q
.))Q R
ConfigureAwait))R `
())` a
false))a f
)))f g
)))g h
;))h i
}** 	
[00 	
HttpGet00	 
(00 
$str00 +
)00+ ,
]00, -
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
AccessCodeDto11% 2
)112 3
,113 4
StatusCodes115 @
.11@ A
Status200OK11A L
)11L M
]11M N
[22 	 
ProducesResponseType22	 
(22 
StatusCodes22 )
.22) *
Status400BadRequest22* =
)22= >
]22> ?
[33 	 
ProducesResponseType33	 
(33 
StatusCodes33 )
.33) *
Status404NotFound33* ;
)33; <
]33< =
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *(
Status500InternalServerError44* F
)44F G
]44G H
public55 
async55 
Task55 
<55 
ActionResult55 &
>55& '$
SearchVisitorAccessCodes55( @
(55@ A
string55A G
	idvisitor55H Q
)55Q R
{66 	
Devon4NetLogger77 
.77 
Debug77 !
(77! "
$str77" U
)77U V
;77V W
return88 
Ok88 
(88 
await88 
_AccessCodeService88 .
.88. /$
SearchVisitorAccessCodes88/ G
(88G H
	idvisitor88H Q
)88Q R
.88R S
ConfigureAwait88S a
(88a b
false88b g
)88g h
)88h i
;88i j
}99 	
[@@ 	
HttpPost@@	 
(@@ 
$str@@ $
)@@$ %
]@@% &
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ %
AccessCodeDtoAA% 2
)AA2 3
,AA3 4
StatusCodesAA5 @
.AA@ A
Status201CreatedAAA Q
)AAQ R
]AAR S
[BB 	 
ProducesResponseTypeBB	 
(BB 
StatusCodesBB )
.BB) *
Status400BadRequestBB* =
)BB= >
]BB> ?
[CC 	 
ProducesResponseTypeCC	 
(CC 
StatusCodesCC )
.CC) *
Status404NotFoundCC* ;
)CC; <
]CC< =
[DD 	 
ProducesResponseTypeDD	 
(DD 
StatusCodesDD )
.DD) *(
Status500InternalServerErrorDD* F
)DDF G
]DDG H
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
CreateAccessCodeEE( 8
(EE8 9
stringEE9 ?
	idvisitorEE@ I
,EEI J
stringEEK Q
idqueueEER Y
)EEY Z
{FF 	
Devon4NetLoggerGG 
.GG 
DebugGG !
(GG! "
$strGG" T
)GGT U
;GGU V
varHH 

accesscodeHH 
=HH 
awaitHH "
_AccessCodeServiceHH# 5
.HH5 6
CreateAccessCodeHH6 F
(HHF G
	idvisitorHHG P
,HHP Q
idqueueHHQ X
)HHX Y
.HHY Z
ConfigureAwaitHHZ h
(HHh i
falseHHi n
)HHn o
;HHo p
returnII 

StatusCodeII 
(II 
StatusCodesII )
.II) *
Status201CreatedII* :
,II: ;

accesscodeII< F
)IIF G
;IIG H
}JJ 	
[QQ 	
HttpPostQQ	 
(QQ 
$strQQ $
)QQ$ %
]QQ% &
[RR 	 
ProducesResponseTypeRR	 
(RR 
typeofRR $
(RR$ %
AccessCodeDtoRR% 2
)RR2 3
,RR3 4
StatusCodesRR5 @
.RR@ A
Status200OKRRA L
)RRL M
]RRM N
[SS 	 
ProducesResponseTypeSS	 
(SS 
StatusCodesSS )
.SS) *
Status400BadRequestSS* =
)SS= >
]SS> ?
[TT 	 
ProducesResponseTypeTT	 
(TT 
StatusCodesTT )
.TT) *
Status404NotFoundTT* ;
)TT; <
]TT< =
[UU 	 
ProducesResponseTypeUU	 
(UU 
StatusCodesUU )
.UU) *(
Status500InternalServerErrorUU* F
)UUF G
]UUG H
publicVV 
asyncVV 
TaskVV 
<VV 
ActionResultVV &
>VV& '
DeleteAccessCodeVV( 8
(VV8 9
stringVV9 ?
idaccesscodeVV@ L
)VVL M
{WW 	
Devon4NetLoggerXX 
.XX 
DebugXX !
(XX! "
$"XX" $
$strXX$ e
{XXe f
idaccesscodeXXf r
}XXr s
"XXs t
)XXt u
;XXu v
returnZZ 
OkZZ 
(ZZ 
awaitZZ 
_AccessCodeServiceZZ .
.ZZ. /
DeleteAccessCodeZZ/ ?
(ZZ? @
idaccesscodeZZ@ L
)ZZL M
.ZZM N
ConfigureAwaitZZN \
(ZZ\ ]
falseZZ] b
)ZZb c
)ZZc d
;ZZd e
}[[ 	
}\\ 
}]] ¡

®C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Converters\AccessCodeConverter.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T

ConvertersT ^
{ 
public		 

static		 
class		 
AccessCodeConverter		 +
{

 
public 
static 
AccessCodeDto #

ModelToDto$ .
(. /

AccessCode/ 9
item: >
)> ?
{ 	
if 
( 
item 
== 
null 
) 
return $
new% (
AccessCodeDto) 6
(6 7
)7 8
;8 9
return 
new 
AccessCodeDto $
{ 
IdaccessCode 
= 
item !
.! "
IdaccessCode" .
,. /
TicketNumber 
= 
item !
.! "
TicketNumber" .
,. /
} 
; 
} 	
} 
} ›

õC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Dto\AccessCodeDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T
DtoT W
{ 
public 

partial 
class 
AccessCodeDto &
{		 
public 
string 
IdaccessCode "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
TicketNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
CreationTime "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	StartTime 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EndTime 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ≠
¨C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Exceptions\AlreadyHasCodeException.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T

ExceptionsT ^
{ 
[		 
Serializable		 
]		 
public

 

class

 #
AlreadyHasCodeException

 (
:

( )
	Exception

* 3
,

3 4
IWebApiException

5 E
{ 
public 
int 

StatusCode 
=>  
StatusCodes! ,
., -
Status409Conflict- >
;> ?
public 
bool 
ShowMessage 
=>  "
true# '
;' (
public #
AlreadyHasCodeException &
(& '
)' (
{ 	
} 	
public!! #
AlreadyHasCodeException!! &
(!!& '
string!!' -
message!!. 5
)!!5 6
:"" 
base"" 
("" 
message"" 
)"" 
{## 	
}$$ 	
public++ #
AlreadyHasCodeException++ &
(++& '
string++' -
message++. 5
,++5 6
	Exception++7 @
innerException++A O
)++O P
:++Q R
base++S W
(++W X
message++X _
,++_ `
innerException++a o
)++o p
{,, 	
}-- 	
	protected44 #
AlreadyHasCodeException44 )
(44) *
System44* 0
.440 1
Runtime441 8
.448 9
Serialization449 F
.44F G
SerializationInfo44G X
serializationInfo44Y j
,44j k
System44l r
.44r s
Runtime44s z
.44z {
Serialization	44{ à
.
44à â
StreamingContext
44â ô
streamingContext
44ö ™
)
44™ ´
:55 
base55 
(55 
serializationInfo55 $
,55$ %
streamingContext55& 6
)556 7
{66 	
}77 	
}88 
}99 ·9
£C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Service\AccessCodeService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T
ServiceT [
{ 
public 

class 
AccessCodeService "
:# $
Service% ,
<, -

JtqContext- 7
>7 8
,8 9
IAccessCodeService: L
{ 
private 
readonly !
IAccessCodeRepository .!
_AccessCodeRepository/ D
;D E
private 
readonly 
IQueueRepository )
_QueueRepository* :
;: ;
public 
AccessCodeService  
(  !
IUnitOfWork! ,
<, -

JtqContext- 7
>7 8
uoW9 <
)< =
:> ?
base@ D
(D E
uoWE H
)H I
{ 	!
_AccessCodeRepository !
=" #
uoW$ '
.' (

Repository( 2
<2 3!
IAccessCodeRepository3 H
>H I
(I J
)J K
;K L
_QueueRepository 
= 
uoW "
." #

Repository# -
<- .
IQueueRepository. >
>> ?
(? @
)@ A
;A B
} 	
public$$ 
Task$$ 
<$$ 

AccessCode$$ 
>$$  
SearchAccessCodebyId$$  4
($$4 5
string$$5 ;
id$$< >
)$$> ?
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrWhiteSpace&& )
(&&) *
id&&* ,
)&&, -
)&&- .
{'' 
throw(( 
new(( $
NullOrWhiteSpaceArgument(( 2
(((2 3
$str((3 Q
)((Q R
;((R S
})) 
Devon4NetLogger** 
.** 
Debug** !
(**! "
$str**" R
)**R S
;**S T
return++ !
_AccessCodeRepository++ (
.++( ) 
SearchAccessCodebyId++) =
(++= >
id++> @
)++@ A
;++A B
},, 	
public33 
async33 
Task33 
<33 
AccessCodeDto33 '
>33' (
CreateAccessCode33) 9
(339 :
string33: @
	idvisitor33A J
,33J K
string33L R
queue33S X
)33X Y
{44 	
if55 
(55 
string55 
.55 
IsNullOrWhiteSpace55 )
(55) *
	idvisitor55* 3
)553 4
||554 6
string556 <
.55< =
IsNullOrWhiteSpace55= O
(55O P
queue55P U
)55U V
)55V W
{66 
throw77 
new77 $
NullOrWhiteSpaceArgument77 2
(772 3
$str773 R
)77R S
;77S T
}88 
Devon4NetLogger99 
.99 
Debug99 !
(99! "
$str99" Q
)99Q R
;99R S
if;; 
(;; 
!;; 
await;; !
_AccessCodeRepository;; ,
.;;, -
AnyAccessCode;;- :
(;;: ;
	idvisitor;;; D
,;;D E
queue;;F K
);;K L
);;L M
{<< 
var== 

accesscode== 
===  
await==! &!
_AccessCodeRepository==' <
.==< =
CreateAccessCode=== M
(==M N
	idvisitor==N W
,==W X
queue==Y ^
)==^ _
.==_ `
ConfigureAwait==` n
(==n o
false==o t
)==t u
;==u v
await>> 
_QueueRepository>> &
.>>& '
IncrementCustomers>>' 9
(>>9 :
queue>>: ?
)>>? @
.>>@ A
ConfigureAwait>>A O
(>>O P
false>>P U
)>>U V
;>>V W
return?? 
AccessCodeConverter?? *
.??* +

ModelToDto??+ 5
(??5 6

accesscode??6 @
)??@ A
;??A B
}@@ 
throwAA 
newAA #
AlreadyHasCodeExceptionAA -
(AA- .
$"AA. 0
$strAA0 S
{AAS T
queueAAT Y
}AAY Z
$strAAZ `
"AA` a
)AAa b
;AAb c
}BB 	
publicHH 
asyncHH 
TaskHH 
<HH 
stringHH  
>HH  !
DeleteAccessCodeHH" 2
(HH2 3
stringHH3 9
idaccesscodeHH: F
)HHF G
{II 	
ifJJ 
(JJ 
stringJJ 
.JJ 
IsNullOrWhiteSpaceJJ )
(JJ) *
idaccesscodeJJ* 6
)JJ6 7
)JJ7 8
{KK 
throwLL 
newLL $
NullOrWhiteSpaceArgumentLL 2
(LL2 3
$strLL3 Q
)LLQ R
;LLR S
}MM 
Devon4NetLoggerNN 
.NN 
DebugNN !
(NN! "
$"NN" $
$strNN$ c
{NNc d
idaccesscodeNNd p
}NNp q
"NNq r
)NNr s
;NNs t
varOO 
acOO 
=OO 
awaitOO !
_AccessCodeRepositoryOO 0
.OO0 1 
SearchAccessCodebyIdOO1 E
(OOE F
idaccesscodeOOF R
)OOR S
;OOS T
ifPP 
(PP 
acPP 
!=PP 
nullPP 
)PP 
awaitQQ 
_QueueRepositoryQQ &
.QQ& '
DecrementCustomersQQ' 9
(QQ9 :
acQQ: <
.QQ< =
QueueIdQQ= D
)QQD E
.QQE F
ConfigureAwaitQQF T
(QQT U
falseQQU Z
)QQZ [
;QQ[ \
returnSS 
awaitSS !
_AccessCodeRepositorySS .
.SS. /
DeleteAccessCodeSS/ ?
(SS? @
idaccesscodeSS@ L
)SSL M
.SSM N
ConfigureAwaitSSN \
(SS\ ]
falseSS] b
)SSb c
;SSc d
}TT 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IListZZ 
<ZZ  

AccessCodeZZ  *
>ZZ* +
>ZZ+ ,$
SearchVisitorAccessCodesZZ- E
(ZZE F
stringZZF L
	idvisitorZZM V
)ZZV W
{[[ 	
if\\ 
(\\ 
string\\ 
.\\ 
IsNullOrWhiteSpace\\ )
(\\) *
	idvisitor\\* 3
)\\3 4
)\\4 5
{]] 
throw^^ 
new^^ $
NullOrWhiteSpaceArgument^^ 2
(^^2 3
$str^^3 Q
)^^Q R
;^^R S
}__ 
Devon4NetLogger`` 
.`` 
Debug`` !
(``! "
$str``" [
)``[ \
;``\ ]
returnaa 
awaitaa !
_AccessCodeRepositoryaa .
.aa. /$
SearchVisitorAccessCodesaa/ G
(aaG H
	idvisitoraaH Q
)aaQ R
.aaR S
ConfigureAwaitaaS a
(aaa b
falseaab g
)aag h
;aah i
}bb 	
}cc 
}dd ∏
§C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AccessCodeManagement\Service\IAccessCodeService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ? 
AccessCodeManagement? S
.S T
ServiceT [
{ 
public

 

	interface

 
IAccessCodeService

 '
{ 
Task 
< 

AccessCode 
>  
SearchAccessCodebyId -
(- .
string. 4
idaccesscode5 A
)A B
;B C
Task 
< 
AccessCodeDto 
> 
CreateAccessCode ,
(, -
string- 3
	idvisitor4 =
,= >
string? E
idqueueF M
)M N
;N O
Task 
< 
string 
> 
DeleteAccessCode %
(% &
String& ,
idaccesscode- 9
)9 :
;: ;
Task 
< 
IList 
< 

AccessCode 
> 
> $
SearchVisitorAccessCodes  8
(8 9
string9 ?
	idvisitor@ I
)I J
;J K
} 
}   ∞$
∂C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AntiForgeryTokenManagement\Controllers\AntiForgeryTokenController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?&
AntiForgeryTokenManagement? Y
.Y Z
ControllersZ e
{		 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class &
AntiForgeryTokenController +
:, -
ControllerBase. <
{ 
private 
readonly 
IAntiforgery %
_antiForgeryToken& 7
;7 8
public &
AntiForgeryTokenController )
() *
IAntiforgery* 6
antiForgeryToken7 G
)G H
{ 	
_antiForgeryToken 
= 
antiForgeryToken  0
;0 1
} 	
[!! 	
HttpGet!!	 
]!! 
["" 	
Route""	 
("" 
$str"" +
)""+ ,
]"", -
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
string##% +
)##+ ,
,##, -
StatusCodes##. 9
.##9 :
Status200OK##: E
)##E F
]##F G
[$$ 	 
ProducesResponseType$$	 
($$ 
StatusCodes$$ )
.$$) *
Status400BadRequest$$* =
)$$= >
]$$> ?
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *
Status404NotFound%%* ;
)%%; <
]%%< =
[&& 	 
ProducesResponseType&&	 
(&& 
StatusCodes&& )
.&&) *(
Status500InternalServerError&&* F
)&&F G
]&&G H
public'' 
ActionResult'' 
Token'' !
(''! "
)''" #
{(( 	
Devon4NetLogger)) 
.)) 
Debug)) !
())! "
$str))" ^
)))^ _
;))_ `
var** 
token** 
=** 
_antiForgeryToken** )
.**) *
GetAndStoreTokens*** ;
(**; <
HttpContext**< G
)**G H
;**H I
HttpContext++ 
.++ 
Response++  
.++  !
Cookies++! (
.++( )
Append++) /
(++/ 0+
CustomMiddlewareHeaderTypeConst++0 O
.++O P
	XsrfToken++P Y
,++Y Z
token++[ `
.++` a
RequestToken++a m
)++m n
;++n o
return,, 
Ok,, 
(,, 
$",, 
$str,, .
{,,. /+
CustomMiddlewareHeaderTypeConst,,/ N
.,,N O
	XsrfToken,,O X
},,X Y
$str,,Y Z
{,,Z [
token,,[ `
.,,` a
RequestToken,,a m
},,m n
",,n o
),,o p
;,,p q
}-- 	
[33 	
HttpGet33	 
]33 
[44 	
Route44	 
(44 
$str44 2
)442 3
]443 4
[55 	$
ValidateAntiForgeryToken55	 !
]55! "
[66 	 
ProducesResponseType66	 
(66 
typeof66 $
(66$ %
string66% +
)66+ ,
,66, -
StatusCodes66. 9
.669 :
Status200OK66: E
)66E F
]66F G
[77 	 
ProducesResponseType77	 
(77 
StatusCodes77 )
.77) *
Status400BadRequest77* =
)77= >
]77> ?
[88 	 
ProducesResponseType88	 
(88 
StatusCodes88 )
.88) *
Status404NotFound88* ;
)88; <
]88< =
[99 	 
ProducesResponseType99	 
(99 
StatusCodes99 )
.99) *(
Status500InternalServerError99* F
)99F G
]99G H
public:: 
ActionResult:: 
HelloSecured:: (
(::( )
)::) *
{;; 	
Devon4NetLogger<< 
.<< 
Debug<< !
(<<! "
$str<<" e
)<<e f
;<<f g
return== 
Ok== 
(== 
$str== N
)==N O
;==O P
}>> 	
}?? 
}@@ ï=
ûC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AuthManagement\Controllers\AuthController.cs
	namespace

 	
	Devon4Net


 
.

 
Application

 
.

  
WebAPI

  &
.

& '
Implementation

' 5
.

5 6
Business

6 >
.

> ?
AuthManagement

? M
.

M N
Controllers

N Y
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
IJwtHandler 

JwtHandler &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
AuthController 
( 
IJwtHandler )

jwtHandler* 4
)4 5
{ 	

JwtHandler 
= 

jwtHandler #
;# $
} 	
[$$ 	
HttpPost$$	 
]$$ 
[%% 	
HttpOptions%%	 
]%% 
[&& 	
AllowAnonymous&&	 
]&& 
['' 	
Route''	 
('' 
$str'' 
)''  
]''  !
[(( 	 
ProducesResponseType((	 
((( 
typeof(( $
((($ %
LoginResponse((% 2
)((2 3
,((3 4
StatusCodes((5 @
.((@ A
Status200OK((A L
)((L M
]((M N
[)) 	 
ProducesResponseType))	 
()) 
StatusCodes)) )
.))) *
Status400BadRequest))* =
)))= >
]))> ?
[** 	 
ProducesResponseType**	 
(** 
StatusCodes** )
.**) *
Status404NotFound*** ;
)**; <
]**< =
[++ 	 
ProducesResponseType++	 
(++ 
StatusCodes++ )
.++) *(
Status500InternalServerError++* F
)++F G
]++G H
public,, 
IActionResult,, 
Login,, "
(,," #
string,,# )
user,,* .
,,,. /
string,,0 6
password,,7 ?
),,? @
{-- 	
Devon4NetLogger.. 
... 
Debug.. !
(..! "
$str.." R
)..R S
;..S T
var00 
token00 
=00 

JwtHandler00 "
.00" #
CreateClientToken00# 4
(004 5
new005 8
List009 =
<00= >
Claim00> C
>00C D
{11 
new22 
Claim22 
(22 

ClaimTypes22 $
.22$ %
Role22% )
,22) *
	AuthConst22+ 4
.224 5
DevonSampleUserRole225 H
)22H I
,22I J
new33 
Claim33 
(33 

ClaimTypes33 $
.33$ %
Name33% )
,33) *
user33* .
)33. /
,33/ 0
new44 
Claim44 
(44 

ClaimTypes44 $
.44$ %
NameIdentifier44% 3
,443 4
Guid444 8
.448 9
NewGuid449 @
(44@ A
)44A B
.44B C
ToString44C K
(44K L
)44L M
)44M N
,44N O
}55 
)55 
;55 
return77 
Ok77 
(77 
new77 
LoginResponse77 '
{77( )
Token77* /
=770 1
token772 7
}778 9
)779 :
;77: ;
}88 	
[?? 	
HttpGet??	 
]?? 
[@@ 	
HttpOptions@@	 
]@@ 
[AA 	
	AuthorizeAA	 
(AA !
AuthenticationSchemesAA (
=AA) *
	AuthConstAA+ 4
.AA4 5 
AuthenticationSchemeAA5 I
,AAI J
RolesAAK P
=AAQ R
	AuthConstAAS \
.AA\ ]
DevonSampleUserRoleAA] p
)AAp q
]AAq r
[CC 	
RouteCC	 
(CC 
$strCC %
)CC% &
]CC& '
[DD 	 
ProducesResponseTypeDD	 
(DD 
typeofDD $
(DD$ %
CurrentUserResponseDD% 8
)DD8 9
,DD9 :
StatusCodesDD; F
.DDF G
Status200OKDDG R
)DDR S
]DDS T
[EE 	 
ProducesResponseTypeEE	 
(EE 
StatusCodesEE )
.EE) *
Status400BadRequestEE* =
)EE= >
]EE> ?
[FF 	 
ProducesResponseTypeFF	 
(FF 
StatusCodesFF )
.FF) *!
Status401UnauthorizedFF* ?
)FF? @
]FF@ A
[GG 	 
ProducesResponseTypeGG	 
(GG 
StatusCodesGG )
.GG) *
Status403ForbiddenGG* <
)GG< =
]GG= >
[HH 	 
ProducesResponseTypeHH	 
(HH 
StatusCodesHH )
.HH) *(
Status500InternalServerErrorHH* F
)HHF G
]HHG H
publicII 
IActionResultII 
CurrentUserII (
(II( )
)II) *
{JJ 	
Devon4NetLoggerKK 
.KK 
DebugKK !
(KK! "
$strKK" X
)KKX Y
;KKY Z
varMM 
tokenMM 
=MM 
RequestMM 
.MM  
HeadersMM  '
[MM' (
$strMM( 7
]MM7 8
.MM8 9
ToStringMM9 A
(MMA B
)MMB C
.MMC D
ReplaceMMD K
(MMK L
$"MML N
{MMN O
	AuthConstMMO X
.MMX Y 
AuthenticationSchemeMMY m
}MMm n
$strMMn o
"MMo p
,MMp q
stringMMr x
.MMx y
EmptyMMy ~
)MM~ 
;	MM Ä
ifOO 
(OO 
stringOO 
.OO 
IsNullOrEmptyOO $
(OO$ %
tokenOO% *
)OO* +
)OO+ ,
returnOO- 3
UnauthorizedOO4 @
(OO@ A
)OOA B
;OOB C
varQQ 

userClaimsQQ 
=QQ 

JwtHandlerQQ '
.QQ' (
GetUserClaimsQQ( 5
(QQ5 6
tokenQQ6 ;
)QQ; <
.QQ< =
ToListQQ= C
(QQC D
)QQD E
;QQE F
varTT 
resultTT 
=TT 
newTT 
CurrentUserResponseTT 0
{UU 
IdVV 
=VV 

JwtHandlerVV 
.VV  
GetClaimValueVV  -
(VV- .

userClaimsVV. 8
,VV8 9

ClaimTypesVV: D
.VVD E
NameIdentifierVVE S
)VVS T
,VVT U
UserNameWW 
=WW 

JwtHandlerWW %
.WW% &
GetClaimValueWW& 3
(WW3 4

userClaimsWW4 >
,WW> ?

ClaimTypesWW@ J
.WWJ K
NameWWK O
)WWO P
,WWP Q
CorporateInfoXX 
=XX 
newXX  #
ListXX$ (
<XX( )
CorporateBasicInfoXX) ;
>XX; <
{XX= >
newXX? B
CorporateBasicInfoXXC U
{XXV W
IdXXX Z
=XX[ \

ClaimTypesXX] g
.XXg h
RoleXXh l
,XXl m
ValueXXn s
=XXt u

JwtHandler	XXv Ä
.
XXÄ Å
GetClaimValue
XXÅ é
(
XXé è

userClaims
XXè ô
,
XXô ö

ClaimTypes
XXõ •
.
XX• ¶
Role
XX¶ ™
)
XX™ ´
,
XX´ ¨
}
XX≠ Æ
}
XXØ ∞
}YY 
;YY 
return[[ 
Ok[[ 
([[ 
result[[ 
)[[ 
;[[ 
}\\ 	
}]] 
}^^ ›
öC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AuthManagement\Dto\CorporateBasicInfo.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
AuthManagement? M
.M N
DtoN Q
{ 
public 

class 
CorporateBasicInfo #
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Value 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ¯

õC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AuthManagement\Dto\CurrentUserResponse.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
AuthManagement? M
.M N
DtoN Q
{ 
public 

class 
CurrentUserResponse $
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
CorporateBasicInfo &
>& '
CorporateInfo( 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
}   Ω
ïC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\AuthManagement\Dto\LoginResponse.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
AuthManagement? M
.M N
DtoN Q
{ 
public 

class 
LoginResponse 
{ 
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
} €@
¶C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Controllers\EmployeeController.cs
	namespace		 	
	Devon4Net		
 
.		 
Application		 
.		  
WebAPI		  &
.		& '
Implementation		' 5
.		5 6
Business		6 >
.		> ?
EmployeeManagement		? Q
.		Q R
Controllers		R ]
{

 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 

EnableCors 
( 
$str 
) 
] 
public 

class 
EmployeeController #
:# $
ControllerBase% 3
{ 
private 
readonly 
IEmployeeService )
_employeeService* :
;: ;
public 
EmployeeController !
(! "
IEmployeeService# 3
employeeService4 C
)C D
{ 	
_employeeService 
= 
employeeService .
;. /
} 	
[## 	
HttpGet##	 
]## 
[$$ 	 
ProducesResponseType$$	 
($$ 
typeof$$ $
($$$ %
List$$% )
<$$) *
EmployeeDto$$* 5
>$$5 6
)$$6 7
,$$7 8
StatusCodes$$9 D
.$$D E
Status200OK$$E P
)$$P Q
]$$Q R
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *
Status400BadRequest%%* =
)%%= >
]%%> ?
[&& 	 
ProducesResponseType&&	 
(&& 
StatusCodes&& )
.&&) *
Status404NotFound&&* ;
)&&; <
]&&< =
['' 	 
ProducesResponseType''	 
('' 
StatusCodes'' )
.'') *(
Status500InternalServerError''* F
)''F G
]''G H
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
>((& '
GetEmployee((( 3
(((3 4
)((4 5
{)) 	
Devon4NetLogger** 
.** 
Debug** !
(**! "
$str**" \
)**\ ]
;**] ^
return++ 
Ok++ 
(++ 
await++ 
_employeeService++ ,
.++, -
GetEmployee++- 8
(++8 9
)++9 :
.++: ;
ConfigureAwait++; I
(++I J
false++J O
)++O P
)++P Q
;++Q R
},, 	
[22 	
HttpPost22	 
]22 
[33 	 
ProducesResponseType33	 
(33 
typeof33 $
(33$ %
EmployeeDto33% 0
)330 1
,331 2
StatusCodes333 >
.33> ?
Status201Created33? O
)33O P
]33P Q
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *
Status400BadRequest44* =
)44= >
]44> ?
[55 	 
ProducesResponseType55	 
(55 
StatusCodes55 )
.55) *
Status404NotFound55* ;
)55; <
]55< =
[66 	 
ProducesResponseType66	 
(66 
StatusCodes66 )
.66) *(
Status500InternalServerError66* F
)66F G
]66G H
public77 
async77 
Task77 
<77 
ActionResult77 &
>77& '
Create77( .
(77. /
EmployeeDto77/ :
employeeDto77; F
)77F G
{88 	
Devon4NetLogger99 
.99 
Debug99 !
(99! "
$str99" \
)99\ ]
;99] ^
var:: 
result:: 
=:: 
await:: 
_employeeService:: /
.::/ 0
CreateEmployee::0 >
(::> ?
employeeDto::? J
.::J K
Name::K O
,::O P
employeeDto::Q \
.::\ ]
Surname::] d
,::d e
employeeDto::f q
.::q r
Mail::r v
)::v w
.::w x
ConfigureAwait	::x Ü
(
::Ü á
false
::á å
)
::å ç
;
::ç é
return;; 

StatusCode;; 
(;; 
StatusCodes;; )
.;;) *
Status201Created;;* :
,;;: ;
result;;< B
);;B C
;;;C D
}<< 	
[BB 	

HttpDeleteBB	 
]BB 
[CC 	 
ProducesResponseTypeCC	 
(CC 
typeofCC $
(CC$ %
EmployeeDtoCC% 0
)CC0 1
,CC1 2
StatusCodesCC3 >
.CC> ?
Status200OKCC? J
)CCJ K
]CCK L
[DD 	 
ProducesResponseTypeDD	 
(DD 
StatusCodesDD )
.DD) *
Status400BadRequestDD* =
)DD= >
]DD> ?
[EE 	 
ProducesResponseTypeEE	 
(EE 
StatusCodesEE )
.EE) *
Status404NotFoundEE* ;
)EE; <
]EE< =
[FF 	 
ProducesResponseTypeFF	 
(FF 
StatusCodesFF )
.FF) *(
Status500InternalServerErrorFF* F
)FFF G
]FFG H
publicGG 
asyncGG 
TaskGG 
<GG 
ActionResultGG &
>GG& '
DeleteGG( .
(GG. /
[GG/ 0
RequiredGG0 8
]GG8 9
longGG9 =

employeeIdGG> H
)GGH I
{HH 	
Devon4NetLoggerII 
.II 
DebugII !
(II! "
$strII" \
)II\ ]
;II] ^
returnJJ 
OkJJ 
(JJ 
awaitJJ 
_employeeServiceJJ ,
.JJ, -
DeleteEmployeeByIdJJ- ?
(JJ? @

employeeIdJJ@ J
)JJJ K
.JJK L
ConfigureAwaitJJL Z
(JJZ [
falseJJ[ `
)JJ` a
)JJa b
;JJb c
}KK 	
[RR 	
HttpPutRR	 
]RR 
[SS 	 
ProducesResponseTypeSS	 
(SS 
typeofSS $
(SS$ %
EmployeeDtoSS% 0
)SS0 1
,SS1 2
StatusCodesSS3 >
.SS> ?
Status200OKSS? J
)SSJ K
]SSK L
[TT 	 
ProducesResponseTypeTT	 
(TT 
StatusCodesTT )
.TT) *
Status400BadRequestTT* =
)TT= >
]TT> ?
[UU 	 
ProducesResponseTypeUU	 
(UU 
StatusCodesUU )
.UU) *
Status404NotFoundUU* ;
)UU; <
]UU< =
[VV 	 
ProducesResponseTypeVV	 
(VV 
StatusCodesVV )
.VV) *(
Status500InternalServerErrorVV* F
)VVF G
]VVG H
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
>WW& '
ModifyEmployeeWW( 6
(WW6 7
EmployeeDtoWW7 B
employeeDtoWWC N
)WWN O
{XX 	
Devon4NetLoggerYY 
.YY 
DebugYY !
(YY! "
$strYY" _
)YY_ `
;YY` a
ifZZ 
(ZZ 
employeeDtoZZ 
==ZZ 
nullZZ #
||ZZ$ &
employeeDtoZZ' 2
.ZZ2 3
IdZZ3 5
==ZZ6 8
$numZZ9 :
)ZZ: ;
{[[ 
return\\ 

BadRequest\\ !
(\\! "
$str\\" K
)\\K L
;\\L M
}]] 
return^^ 
Ok^^ 
(^^ 
await^^ 
_employeeService^^ ,
.^^, -
ModifyEmployeeById^^- ?
(^^? @
employeeDto^^@ K
.^^K L
Id^^L N
,^^N O
employeeDto^^P [
.^^[ \
Name^^\ `
,^^` a
employeeDto^^b m
.^^m n
Surname^^n u
,^^u v
employeeDto	^^w Ç
.
^^Ç É
Mail
^^É á
)
^^á à
.
^^à â
ConfigureAwait
^^â ó
(
^^ó ò
false
^^ò ù
)
^^ù û
)
^^û ü
;
^^ü †
}__ 	
}`` 
}aa  
§C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Converters\EmployeeConverter.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R

ConvertersR \
{ 
public		 

static		 
class		 
EmployeeConverter		 )
{

 
public 
static 
EmployeeDto !

ModelToDto" ,
(, -
Employee- 5
item6 :
): ;
{ 	
if 
( 
item 
== 
null 
) 
return $
new% (
EmployeeDto) 4
(4 5
)5 6
;6 7
return 
new 
EmployeeDto "
{ 
Id 
= 
item 
. 
Id 
, 
Name 
= 
item 
. 
Name  
,  !
Surname 
= 
item 
. 
Surname &
,& '
Mail 
= 
item 
. 
Mail  
} 
; 
} 	
} 
} £

óC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Dto\EmployeeDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R
DtoR U
{ 
public 

class 
EmployeeDto 
{		 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
Surname 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
Mail 
{ 
get  
;  !
set" %
;% &
}' (
}   
}!! µ
¨C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Exceptions\EmployeeNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R

ExceptionsR \
{ 
[		 
Serializable		 
]		 
public

 

class

 %
EmployeeNotFoundException

 *
:

+ ,
	Exception

- 6
,

6 7
IWebApiException

8 H
{ 
public 
int 

StatusCode 
=>  
StatusCodes! ,
., -
Status404NotFound- >
;> ?
public 
bool 
ShowMessage 
=>  "
true# '
;' (
public %
EmployeeNotFoundException (
(( )
)) *
{ 	
} 	
public!! %
EmployeeNotFoundException!! (
(!!( )
string!!) /
message!!0 7
)!!7 8
:"" 
base"" 
("" 
message"" 
)"" 
{## 	
}$$ 	
public++ %
EmployeeNotFoundException++ (
(++( )
string++) /
message++0 7
,++7 8
	Exception++9 B
innerException++C Q
)++Q R
:++S T
base++U Y
(++Y Z
message++Z a
,++a b
innerException++c q
)++q r
{,, 	
}-- 	
	protected44 %
EmployeeNotFoundException44 +
(44+ ,
System44, 2
.442 3
Runtime443 :
.44: ;
Serialization44; H
.44H I
SerializationInfo44I Z
serializationInfo44[ l
,44l m
System44n t
.44t u
Runtime44u |
.44| }
Serialization	44} ä
.
44ä ã
StreamingContext
44ã õ
streamingContext
44ú ¨
)
44¨ ≠
:55 
base55 
(55 
serializationInfo55 $
,55$ %
streamingContext55& 6
)556 7
{66 	
}77 	
}88 
}99 πC
üC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Service\EmployeeService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R
ServiceR Y
{ 
public 

class 
EmployeeService  
:  !
Service" )
<) *
EmployeeContext* 9
>9 :
,: ;
IEmployeeService< L
{ 
private 
readonly 
IEmployeeRepository ,
_employeeRepository- @
;@ A
public 
EmployeeService 
( 
IUnitOfWork *
<* +
EmployeeContext+ :
>: ;
uoW< ?
)? @
:A B
baseC G
(G H
uoWH K
)K L
{ 	
_employeeRepository 
=  !
uoW" %
.% &

Repository& 0
<0 1
IEmployeeRepository1 D
>D E
(E F
)F G
;G H
} 	
public## 
async## 
Task## 
<## 
IEnumerable## %
<##% &
EmployeeDto##& 1
>##1 2
>##2 3
GetEmployee##4 ?
(##? @

Expression##@ J
<##J K
Func##K O
<##O P
Employee##P X
,##X Y
bool##Z ^
>##^ _
>##_ `
	predicate##a j
=##k l
null##m q
)##q r
{$$ 	
Devon4NetLogger%% 
.%% 
Debug%% !
(%%! "
$str%%" R
)%%R S
;%%S T
var&& 
result&& 
=&& 
await&& 
_employeeRepository&& 2
.&&2 3
GetEmployee&&3 >
(&&> ?
	predicate&&? H
)&&H I
.&&I J
ConfigureAwait&&J X
(&&X Y
false&&Y ^
)&&^ _
;&&_ `
return'' 
result'' 
.'' 
Select''  
(''  !
EmployeeConverter''! 2
.''2 3

ModelToDto''3 =
)''= >
;''> ?
}(( 	
public// 
Task// 
<// 
Employee// 
>// 
GetEmployeeById// -
(//- .
long//. 2
id//3 5
)//5 6
{00 	
Devon4NetLogger11 
.11 
Debug11 !
(11! "
$"11" $
$str11$ d
{11d e
id11e g
}11g h
"11h i
)11i j
;11j k
return22 
_employeeRepository22 &
.22& '
GetEmployeeById22' 6
(226 7
id227 9
)229 :
;22: ;
}33 	
public<< 
Task<< 
<<< 
Employee<< 
><< 
CreateEmployee<< ,
(<<, -
string<<- 3
name<<4 8
,<<8 9
string<<: @
surName<<A H
,<<H I
string<<J P
mail<<Q U
)<<U V
{== 	
Devon4NetLogger>> 
.>> 
Debug>> !
(>>! "
$">>" $
$str>>$ `
{>>` a
name>>a e
}>>e f
$str>>f h
{>>h i
surName>>i p
}>>p q
$str>>q s
{>>s t
mail>>t x
}>>x y
">>y z
)>>z {
;>>{ |
if@@ 
(@@ 
string@@ 
.@@ 
IsNullOrEmpty@@ $
(@@$ %
name@@% )
)@@) *
||@@+ -
string@@. 4
.@@4 5
IsNullOrWhiteSpace@@5 G
(@@G H
name@@H L
)@@L M
)@@M N
{AA 
throwBB 
newBB 
ArgumentExceptionBB +
(BB+ ,
$strBB, O
)BBO P
;BBP Q
}CC 
ifEE 
(EE 
stringEE 
.EE 
IsNullOrEmptyEE $
(EE$ %
surNameEE% ,
)EE, -
||EE. 0
stringEE1 7
.EE7 8
IsNullOrWhiteSpaceEE8 J
(EEJ K
surNameEEK R
)EER S
)EES T
{FF 
throwGG 
newGG 
ArgumentExceptionGG +
(GG+ ,
$strGG, R
)GGR S
;GGS T
}HH 
ifJJ 
(JJ 
stringJJ 
.JJ 
IsNullOrEmptyJJ $
(JJ$ %
mailJJ% )
)JJ) *
||JJ+ -
stringJJ. 4
.JJ4 5
IsNullOrWhiteSpaceJJ5 G
(JJG H
mailJJH L
)JJL M
)JJM N
{KK 
throwLL 
newLL 
ArgumentExceptionLL +
(LL+ ,
$strLL, O
)LLO P
;LLP Q
}MM 
returnOO 
_employeeRepositoryOO &
.OO& '
CreateOO' -
(OO- .
nameOO. 2
,OO2 3
surNameOO4 ;
,OO; <
mailOO= A
)OOA B
;OOB C
}PP 	
publicWW 
asyncWW 
TaskWW 
<WW 
longWW 
>WW 
DeleteEmployeeByIdWW  2
(WW2 3
longWW3 7
idWW8 :
)WW: ;
{XX 	
Devon4NetLoggerYY 
.YY 
DebugYY !
(YY! "
$"YY" $
$strYY$ g
{YYg h
idYYh j
}YYj k
"YYk l
)YYl m
;YYm n
varZZ 
employeeZZ 
=ZZ 
awaitZZ  
_employeeRepositoryZZ! 4
.ZZ4 5
GetFirstOrDefaultZZ5 F
(ZZF G
tZZG H
=>ZZI K
tZZL M
.ZZM N
IdZZN P
==ZZQ S
idZZT V
)ZZV W
.ZZW X
ConfigureAwaitZZX f
(ZZf g
falseZZg l
)ZZl m
;ZZm n
if\\ 
(\\ 
employee\\ 
==\\ 
null\\  
)\\  !
{]] 
throw^^ 
new^^ 
ArgumentException^^ +
(^^+ ,
$"^^, .
$str^^. >
{^^> ?
id^^? A
}^^A B
$str^^B R
"^^R S
)^^S T
;^^T U
}__ 
returnaa 
awaitaa 
_employeeRepositoryaa ,
.aa, -
DeleteEmployeeByIdaa- ?
(aa? @
idaa@ B
)aaB C
.aaC D
ConfigureAwaitaaD R
(aaR S
falseaaS X
)aaX Y
;aaY Z
}bb 	
publicll 
asyncll 
Taskll 
<ll 
Employeell "
>ll" #
ModifyEmployeeByIdll$ 6
(ll6 7
longll7 ;
idll< >
,ll> ?
stringll@ F
namellG K
,llK L
stringllM S
surNamellT [
,ll[ \
stringll] c
maillld h
)llh i
{mm 	
Devon4NetLoggernn 
.nn 
Debugnn !
(nn! "
$"nn" $
$strnn$ g
{nng h
idnnh j
}nnj k
"nnk l
)nnl m
;nnm n
varoo 
employeeoo 
=oo 
awaitoo  
_employeeRepositoryoo! 4
.oo4 5
GetFirstOrDefaultoo5 F
(ooF G
tooG H
=>ooI K
tooL M
.ooM N
IdooN P
==ooQ S
idooT V
)ooV W
.ooW X
ConfigureAwaitooX f
(oof g
falseoog l
)ool m
;oom n
ifqq 
(qq 
employeeqq 
==qq 
nullqq  
)qq  !
{rr 
throwss 
newss %
EmployeeNotFoundExceptionss 3
(ss3 4
$"ss4 6
$strss6 K
{ssK L
idssL N
}ssN O
$strssO ~
"ss~ 
)	ss Ä
;
ssÄ Å
}tt 
employeevv 
.vv 
Namevv 
=vv 
namevv 
;vv  
employeeww 
.ww 
Surnameww 
=ww 
surNameww &
;ww& '
employeexx 
.xx 
Mailxx 
=xx 
mailxx 
;xx  
returnzz 
awaitzz 
_employeeRepositoryzz ,
.zz, -
Updatezz- 3
(zz3 4
employeezz4 <
)zz< =
.zz= >
ConfigureAwaitzz> L
(zzL M
falsezzM R
)zzR S
;zzS T
}{{ 	
}|| 
}}} µ
†C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Service\IEmployeeService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R
ServiceR Y
{ 
public

 

	interface

 
IEmployeeService

 %
{ 
Task 
< 
IEnumerable 
< 
EmployeeDto $
>$ %
>% &
GetEmployee' 2
(2 3

Expression3 =
<= >
Func> B
<B C
EmployeeC K
,K L
boolM Q
>Q R
>R S
	predicateT ]
=^ _
null` d
)d e
;e f
Task 
< 
Employee 
> 
GetEmployeeById &
(& '
long' +
id, .
). /
;/ 0
Task!! 
<!! 
Employee!! 
>!! 
CreateEmployee!! %
(!!% &
string!!& ,
name!!- 1
,!!1 2
string!!3 9
surName!!: A
,!!A B
string!!C I
mail!!J N
)!!N O
;!!O P
Task(( 
<(( 
long(( 
>(( 
DeleteEmployeeById(( %
(((% &
long((& *
id((+ -
)((- .
;((. /
Task22 
<22 
Employee22 
>22 
ModifyEmployeeById22 )
(22) *
long22* .
id22/ 1
,221 2
string223 9
name22: >
,22> ?
string22@ F
surName22G N
,22N O
string22P V
mail22W [
)22[ \
;22\ ]
}33 
}44 „
™C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\EmployeeManagement\Validators\EmployeeFluentValidator.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
EmployeeManagement? Q
.Q R

ValidatorsR \
{ 
public

 

class

 #
EmployeeFluentValidator

 (
:

) *!
CustomFluentValidator

+ @
<

@ A
Employee

A I
>

I J
{ 
public #
EmployeeFluentValidator &
(& '
bool' +$
launchExceptionWhenError, D
)D E
:F G
baseH L
(L M$
launchExceptionWhenErrorM e
)e f
{ 	
} 	
public 
override 
void 
CustomValidate +
(+ ,
), -
{ 	
RuleFor 
( 
Employee 
=> 
Employee  (
.( )
Name) -
)- .
.. /
NotNull/ 6
(6 7
)7 8
;8 9
RuleFor 
( 
Employee 
=> 
Employee  (
.( )
Name) -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
;9 :
RuleFor 
( 
Employee 
=> 
Employee  (
.( )
Name) -
)- .
.. /
NotNull/ 6
(6 7
)7 8
;8 9
RuleFor 
( 
Employee 
=> 
Employee  (
.( )
Surname) 0
)0 1
.1 2
NotEmpty2 :
(: ;
); <
;< =
} 	
} 
} ®
°C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Commands\CreateTodoCommand.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
CommandsQ Y
{ 
public		 

class		 
CreateTodoCommand		 "
:		# $
CommandBase		% 0
<		0 1
TodoResultDto		1 >
>		> ?
{

 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
CreateTodoCommand  
(  !
string! '
description( 3
)3 4
{ 	
Description 
= 
description %
;% &
} 	
} 
} ß*
§C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Controllers\MediatRController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
ControllersQ \
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 

EnableCors 
( 
$str 
) 
] 
public 

class 
MediatRController "
:# $
ControllerBase% 3
{ 
private 
IMediatRHandler 
MediatRHandler  .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
MediatRController  
(  !
IMediatRHandler! 0
mediatRHandler1 ?
)? @
{ 	
MediatRHandler 
= 
mediatRHandler +
;+ ,
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
HttpOptions&&	 
]&& 
['' 	
AllowAnonymous''	 
]'' 
[(( 	 
ProducesResponseType((	 
((( 
typeof(( $
((($ %
TodoResultDto((% 2
)((2 3
,((3 4
StatusCodes((5 @
.((@ A
Status200OK((A L
)((L M
]((M N
[)) 	 
ProducesResponseType))	 
()) 
StatusCodes)) )
.))) *
Status400BadRequest))* =
)))= >
]))> ?
[** 	 
ProducesResponseType**	 
(** 
StatusCodes** )
.**) *
Status404NotFound*** ;
)**; <
]**< =
[++ 	 
ProducesResponseType++	 
(++ 
StatusCodes++ )
.++) *(
Status500InternalServerError++* F
)++F G
]++G H
[,, 	
Route,,	 
(,, 
$str,, (
),,( )
],,) *
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (
GetTodoById--) 4
(--4 5
long--5 9
todoId--: @
)--@ A
{.. 	
Devon4NetLogger// 
.// 
Debug// !
(//! "
$str//" [
)//[ \
;//\ ]
var00 
query00 
=00 
new00 
GetTodoQuery00 (
(00( )
todoId00) /
)00/ 0
;000 1
return11 
Ok11 
(11 
await11 
MediatRHandler11 *
.11* +

QueryAsync11+ 5
(115 6
query116 ;
)11; <
.11< =
ConfigureAwait11= K
(11K L
false11L Q
)11Q R
)11R S
;11S T
}22 	
[99 	
HttpPost99	 
]99 
[:: 	
HttpOptions::	 
]:: 
[;; 	
AllowAnonymous;;	 
];; 
[<< 	 
ProducesResponseType<<	 
(<< 
typeof<< $
(<<$ %
bool<<% )
)<<) *
,<<* +
StatusCodes<<, 7
.<<7 8
Status200OK<<8 C
)<<C D
]<<D E
[== 	 
ProducesResponseType==	 
(== 
StatusCodes== )
.==) *
Status400BadRequest==* =
)=== >
]==> ?
[>> 	 
ProducesResponseType>>	 
(>> 
StatusCodes>> )
.>>) *
Status404NotFound>>* ;
)>>; <
]>>< =
[?? 	 
ProducesResponseType??	 
(?? 
StatusCodes?? )
.??) *(
Status500InternalServerError??* F
)??F G
]??G H
[@@ 	
Route@@	 
(@@ 
$str@@ '
)@@' (
]@@( )
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (

CreateTodoAA) 3
(AA3 4
stringAA4 :
todoDescriptionAA; J
)AAJ K
{BB 	
ifCC 
(CC 
stringCC 
.CC 
IsNullOrEmptyCC $
(CC$ %
todoDescriptionCC% 4
)CC4 5
)CC5 6
{DD 
returnEE 

StatusCodeEE !
(EE! "
StatusCodesEE" -
.EE- .
Status400BadRequestEE. A
,EEA B
$strEEC u
)EEu v
;EEv w
}FF 
Devon4NetLoggerHH 
.HH 
DebugHH !
(HH! "
$strHH" Z
)HHZ [
;HH[ \
varII 
commandII 
=II 
newII 
CreateTodoCommandII /
(II/ 0
todoDescriptionII0 ?
)II? @
;II@ A
returnJJ 
OkJJ 
(JJ 
awaitJJ 
MediatRHandlerJJ *
.JJ* +

QueryAsyncJJ+ 5
(JJ5 6
commandJJ6 =
)JJ= >
.JJ> ?
ConfigureAwaitJJ? M
(JJM N
falseJJN S
)JJS T
)JJT U
;JJU V
}KK 	
}LL 
}MM Û
òC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Dto\TodoResultDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
DtoQ T
{ 
public 

class 
TodoResultDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
} 
} ú
ßC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Exceptions\TodoNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q

ExceptionsQ [
{ 
[		 
Serializable		 
]		 
public

 

class

 !
TodoNotFoundException

 &
:

' (
	Exception

) 2
,

2 3
IWebApiException

4 D
{ 
public 
int 

StatusCode 
=>  
StatusCodes! ,
., -
Status204NoContent- ?
;? @
public 
bool 
ShowMessage 
=>  "
true# '
;' (
public !
TodoNotFoundException $
($ %
)% &
{ 	
} 	
public!! !
TodoNotFoundException!! $
(!!$ %
string!!% +
message!!, 3
)!!3 4
:"" 
base"" 
("" 
message"" 
)"" 
{## 	
}$$ 	
public++ !
TodoNotFoundException++ $
(++$ %
string++% +
message++, 3
,++3 4
	Exception++5 >
innerException++? M
)++M N
:++O P
base++Q U
(++U V
message++V ]
,++] ^
innerException++_ m
)++m n
{,, 	
}-- 	
	protected44 !
TodoNotFoundException44 '
(44' (
System44( .
.44. /
Runtime44/ 6
.446 7
Serialization447 D
.44D E
SerializationInfo44E V
serializationInfo44W h
,44h i
System44j p
.44p q
Runtime44q x
.44x y
Serialization	44y Ü
.
44Ü á
StreamingContext
44á ó
streamingContext
44ò ®
)
44® ©
:55 
base55 
(55 
serializationInfo55 $
,55$ %
streamingContext55& 6
)556 7
{66 	
}77 	
}88 
}99 â
°C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Handlers\CreateTodoHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
HandlersQ Y
{ 
public 

class 
CreateTodoHandler "
:# $!
MediatrRequestHandler% :
<: ;
CreateTodoCommand; L
,L M
TodoResultDtoN [
>[ \
{ 
private 
ITodoService 
TodoService (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
CreateTodoHandler  
(  !
ITodoService! -
todoService. 9
,9 :!
IMediatRBackupService; P 
mediatRBackupServiceQ e
,e f(
IMediatRBackupLiteDbService	g Ç(
mediatRBackupLiteDbService
É ù
)
ù û
:
ü †
base
° •
(
• ¶"
mediatRBackupService
¶ ∫
,
∫ ª(
mediatRBackupLiteDbService
º ÷
)
÷ ◊
{ 	
Setup 
( 
todoService 
) 
; 
} 	
public   
CreateTodoHandler    
(    !
ITodoService  ! -
todoService  . 9
,  9 :'
IMediatRBackupLiteDbService  ; V&
mediatRBackupLiteDbService  W q
)  q r
:  s t
base  u y
(  y z'
mediatRBackupLiteDbService	  z î
)
  î ï
{!! 	
Setup"" 
("" 
todoService"" 
)"" 
;"" 
}## 	
public** 
CreateTodoHandler**  
(**  !
ITodoService**! -
todoService**. 9
,**9 :!
IMediatRBackupService**; P 
mediatRBackupService**Q e
)**e f
:**g h
base**i m
(**m n!
mediatRBackupService	**n Ç
)
**Ç É
{++ 	
Setup,, 
(,, 
todoService,, 
),, 
;,, 
}-- 	
private// 
void// 
Setup// 
(// 
ITodoService// '
todoService//( 3
)//3 4
{00 	
TodoService11 
=11 
todoService11 %
;11% &
}22 	
public;; 
override;; 
async;; 
Task;; "
<;;" #
TodoResultDto;;# 0
>;;0 1
HandleAction;;2 >
(;;> ?
CreateTodoCommand;;? P
request;;Q X
,;;X Y
CancellationToken;;Z k
cancellationToken;;l }
);;} ~
{<< 	
var>> 
result>> 
=>> 
await>> 
TodoService>> *
.>>* +

CreateTodo>>+ 5
(>>5 6
request>>6 =
.>>= >
Description>>> I
)>>I J
.>>J K
ConfigureAwait>>K Y
(>>Y Z
false>>Z _
)>>_ `
;>>` a
return@@ 
new@@ 
TodoResultDto@@ $
{AA 
IdBB 
=BB 
resultBB 
.BB 
IdBB 
,BB 
DoneCC 
=CC 
resultCC 
.CC 
DoneCC "
,CC" #
DescriptionDD 
=DD 
resultDD $
.DD$ %
DescriptionDD% 0
}EE 
;EE 
}GG 	
}HH 
}II Ò
ûC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Handlers\GetTodoHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
HandlersQ Y
{		 
public 

class 
GetTodoHandler 
:  !!
MediatrRequestHandler" 7
<7 8
GetTodoQuery8 D
,D E
TodoResultDtoF S
>S T
{ 
private 
ITodoService 
TodoService (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
GetTodoHandler 
( 
ITodoService *
todoService+ 6
,6 7!
IMediatRBackupService8 M 
mediatRBackupServiceN b
,b c'
IMediatRBackupLiteDbServiced (
mediatRBackupLiteDbService
Ä ö
)
ö õ
:
ú ù
base
û ¢
(
¢ £"
mediatRBackupService
£ ∑
,
∑ ∏(
mediatRBackupLiteDbService
π ”
)
” ‘
{ 	
Setup 
( 
todoService 
) 
; 
} 	
public!! 
GetTodoHandler!! 
(!! 
ITodoService!! *
todoService!!+ 6
,!!6 7'
IMediatRBackupLiteDbService!!8 S&
mediatRBackupLiteDbService!!T n
)!!n o
:!!p q
base!!r v
(!!v w'
mediatRBackupLiteDbService	!!w ë
)
!!ë í
{"" 	
Setup## 
(## 
todoService## 
)## 
;## 
}$$ 	
public++ 
GetTodoHandler++ 
(++ 
ITodoService++ *
todoService+++ 6
,++6 7!
IMediatRBackupService++8 M 
mediatRBackupService++N b
)++b c
:++d e
base++f j
(++j k 
mediatRBackupService++k 
)	++ Ä
{,, 	
Setup-- 
(-- 
todoService-- 
)-- 
;-- 
}.. 	
private00 
void00 
Setup00 
(00 
ITodoService00 '
todoService00( 3
)003 4
{11 	
TodoService22 
=22 
todoService22 %
;22% &
}33 	
public<< 
override<< 
async<< 
Task<< "
<<<" #
TodoResultDto<<# 0
><<0 1
HandleAction<<2 >
(<<> ?
GetTodoQuery<<? K
request<<L S
,<<S T
CancellationToken<<U f
cancellationToken<<g x
)<<x y
{== 	
var>> 
result>> 
=>> 
await>> 
TodoService>> *
.>>* +
GetTodoById>>+ 6
(>>6 7
request>>7 >
.>>> ?
TodoId>>? E
)>>E F
.>>F G
ConfigureAwait>>G U
(>>U V
false>>V [
)>>[ \
;>>\ ]
if@@ 
(@@ 
result@@ 
==@@ 
null@@ 
)@@ 
{AA 
throwBB 
newBB !
TodoNotFoundExceptionBB /
(BB/ 0
$strBB0 M
)BBM N
;BBN O
}CC 
returnEE 
newEE 
TodoResultDtoEE $
{FF 
IdGG 
=GG 
resultGG 
.GG 
IdGG 
,GG 
DescriptionHH 
=HH 
resultHH $
.HH$ %
DescriptionHH% 0
,HH0 1
DoneII 
=II 
resultII 
.II 
DoneII "
}JJ 
;JJ 
}KK 	
}LL 
}MM ˝
õC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\MediatRManagement\Queries\GetTodoQuery.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
MediatRManagement? P
.P Q
QueriesQ X
{ 
public 

class 
GetTodoQuery 
: 
	QueryBase  )
<) *
TodoResultDto* 7
>7 8
{		 
public 
long 
TodoId 
{ 
get 
;  
set! $
;$ %
}& '
public 
GetTodoQuery 
( 
long  
todoId! '
)' (
{ 	
TodoId 
= 
todoId 
; 
} 	
} 
} ç"
¢C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\PruebaManagement\Controllers\PruebaController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
PruebaManagement? O
.O P
ControllersP [
{		 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PruebaController !
:! "
ControllerBase# 1
{ 
private 
readonly 
IPruebaService '
_pruebaService( 6
;6 7
public 
PruebaController 
(  
IPruebaService! /
pruebaService0 =
)= >
{ 	
_pruebaService 
= 
pruebaService *
;* +
} 	
[!! 	
HttpGet!!	 
]!! 
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
List""% )
<"") *
	PruebaDto""* 3
>""3 4
)""4 5
,""5 6
StatusCodes""7 B
.""B C
Status200OK""C N
)""N O
]""O P
[## 	 
ProducesResponseType##	 
(## 
StatusCodes## )
.##) *
Status400BadRequest##* =
)##= >
]##> ?
[$$ 	 
ProducesResponseType$$	 
($$ 
StatusCodes$$ )
.$$) *
Status404NotFound$$* ;
)$$; <
]$$< =
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *(
Status500InternalServerError%%* F
)%%F G
]%%G H
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
>&&& '
	GetPrueba&&( 1
(&&1 2
)&&2 3
{'' 	
Devon4NetLogger(( 
.(( 
Debug(( !
(((! "
$str((" X
)((X Y
;((Y Z
return)) 
Ok)) 
()) 
await)) 
_pruebaService)) *
.))* +
	GetPrueba))+ 4
())4 5
)))5 6
.))6 7
ConfigureAwait))7 E
())E F
false))F K
)))K L
)))L M
;))M N
}** 	
[// 	
HttpPost//	 
]// 
[00 	 
ProducesResponseType00	 
(00 
typeof00 $
(00$ %
	PruebaDto00% .
)00. /
,00/ 0
StatusCodes001 <
.00< =
Status201Created00= M
)00M N
]00N O
[11 	 
ProducesResponseType11	 
(11 
StatusCodes11 )
.11) *
Status400BadRequest11* =
)11= >
]11> ?
[22 	 
ProducesResponseType22	 
(22 
StatusCodes22 )
.22) *
Status404NotFound22* ;
)22; <
]22< =
[33 	 
ProducesResponseType33	 
(33 
StatusCodes33 )
.33) *(
Status500InternalServerError33* F
)33F G
]33G H
public44 
async44 
Task44 
<44 
ActionResult44 &
>44& '
CreatePrueba44( 4
(444 5
string445 ;
name44< @
)44@ A
{55 	
Devon4NetLogger66 
.66 
Debug66 !
(66! "
$str66" [
)66[ \
;66\ ]
var77 
result77 
=77 
await77 
_pruebaService77 -
.77- .
CreatePrueba77. :
(77: ;
name77; ?
)77? @
.77@ A
ConfigureAwait77A O
(77O P
false77P U
)77U V
;77V W
return88 

StatusCode88 
(88 
StatusCodes88 )
.88) *
Status201Created88* :
,88: ;
result88< B
)88B C
;88C D
}99 	
}:: 
};; Ú	
†C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\PruebaManagement\Converters\PruebaConverter.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
PruebaManagement? O
.O P

ConvertersP Z
{ 
public		 

static		 
class		 
PruebaConverter		 '
{

 
public 
static 
	PruebaDto 

ModelToDto  *
(* +
Prueba+ 1
item2 6
)6 7
{ 	
if 
( 
item 
== 
null 
) 
return $
new% (
	PruebaDto) 2
(2 3
)3 4
;4 5
return 
new 
	PruebaDto  
{ 
Id 
= 
item 
. 
Id 
, 
Nombre 
= 
item 
. 
Nombre #
} 
; 
} 	
} 
} Â
ìC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\PruebaManagement\Dto\PruebaDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
PruebaManagement? O
.O P
DtoP S
{ 
public 

partial 
class 
	PruebaDto "
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ¸
úC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\PruebaManagement\Service\IPruebaService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
PruebaManagement? O
.O P
ServiceP W
{ 
public

 

	interface

 
IPruebaService

 #
{ 
Task 
< 
IEnumerable 
< 
	PruebaDto "
>" #
># $
	GetPrueba% .
(. /

Expression/ 9
<9 :
Func: >
<> ?
Prueba? E
,E F
boolG K
>K L
>L M
	predicateN W
=X Y
nullZ ^
)^ _
;_ `
Task 
< 
Prueba 
> 
CreatePrueba !
(! "
string" (
name) -
)- .
;. /
} 
} ≤
õC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\PruebaManagement\Service\PruebaService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
PruebaManagement? O
.O P
ServiceP W
{ 
public 

class 
PruebaService 
: 
Service  '
<' (

JtqContext( 2
>2 3
,3 4
IPruebaService5 C
{ 
private 
readonly 
IjtqRepository '
_jtqRepository( 6
;6 7
public 
PruebaService 
( 
IUnitOfWork (
<( )

JtqContext) 3
>3 4
uoW5 8
)8 9
:: ;
base< @
(@ A
uoWA D
)D E
{ 	
_jtqRepository 
= 
uoW  
.  !

Repository! +
<+ ,
IjtqRepository, :
>: ;
(; <
)< =
;= >
} 	
public"" 
async"" 
Task"" 
<"" 
IEnumerable"" %
<""% &
	PruebaDto""& /
>""/ 0
>""0 1
	GetPrueba""2 ;
(""; <

Expression""< F
<""F G
Func""G K
<""K L
Prueba""L R
,""R S
bool""T X
>""X Y
>""Y Z
	predicate""[ d
=""e f
null""g k
)""k l
{## 	
Devon4NetLogger$$ 
.$$ 
Debug$$ !
($$! "
$str$$" O
)$$O P
;$$P Q
var%% 
result%% 
=%% 
await%% 
_jtqRepository%% -
.%%- .
	GetPrueba%%. 7
(%%7 8
	predicate%%8 A
)%%A B
.%%B C
ConfigureAwait%%C Q
(%%Q R
false%%R W
)%%W X
;%%X Y
return&& 
result&& 
.&& 
Select&&  
(&&  !
PruebaConverter&&! 0
.&&0 1

ModelToDto&&1 ;
)&&; <
;&&< =
}'' 	
public-- 
Task-- 
<-- 
Prueba-- 
>-- 
CreatePrueba-- (
(--( )
string--) /
name--0 4
)--4 5
{.. 	
Devon4NetLogger// 
.// 
Debug// !
(//! "
$"//" $
$str//$ Y
{//Y Z
name//Z ^
}//^ _
"//_ `
)//` a
;//a b
if11 
(11 
string11 
.11 
IsNullOrEmpty11 $
(11$ %
name11% )
)11) *
||11+ -
string11. 4
.114 5
IsNullOrWhiteSpace115 G
(11G H
name11H L
)11L M
)11M N
{22 
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, V
)33V W
;33W X
}44 
return66 
_jtqRepository66 !
.66! "
CreatePrueba66" .
(66. /
name66/ 3
)663 4
;664 5
}77 	
}88 
}99 á 
†C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\QueueManagement\Controllers\QueueController.cs
	namespace		 	
	Devon4Net		
 
.		 
Application		 
.		  
WebAPI		  &
.		& '
Implementation		' 5
.		5 6
Business		6 >
.		> ?
QueueManagement		? N
.		N O
Controllers		O Z
{

 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
QueueController  
:  !
ControllerBase" 0
{ 
private 
readonly 
IQueueService &
_QueueService' 4
;4 5
public 
QueueController 
( 
IQueueService  -
QueueService. :
): ;
{ 	
_QueueService 
= 
QueueService (
;( )
} 	
["" 	
HttpGet""	 
("" 
$str"" 
)""  
]""  !
[## 	 
ProducesResponseType##	 
(## 
typeof## $
(##$ %
List##% )
<##) *
QueueDto##* 2
>##2 3
)##3 4
,##4 5
StatusCodes##6 A
.##A B
Status200OK##B M
)##M N
]##N O
[$$ 	 
ProducesResponseType$$	 
($$ 
StatusCodes$$ )
.$$) *
Status400BadRequest$$* =
)$$= >
]$$> ?
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *
Status404NotFound%%* ;
)%%; <
]%%< =
[&& 	 
ProducesResponseType&&	 
(&& 
StatusCodes&& )
.&&) *(
Status500InternalServerError&&* F
)&&F G
]&&G H
public'' 
async'' 
Task'' 
<'' 
ActionResult'' &
>''& '
GetActiveQueues''( 7
(''7 8
)''8 9
{(( 	
Devon4NetLogger)) 
.)) 
Debug)) !
())! "
$str))" V
)))V W
;))W X
return** 
Ok** 
(** 
await** 
_QueueService** )
.**) *
GetActiveQueues*** 9
(**9 :
)**: ;
.**; <
ConfigureAwait**< J
(**J K
false**K P
)**P Q
)**Q R
;**R S
}++ 	
[11 	
HttpPost11	 
(11 
$str11 
)11  
]11  !
[22 	 
ProducesResponseType22	 
(22 
typeof22 $
(22$ %
Queue22% *
)22* +
,22+ ,
StatusCodes22- 8
.228 9
Status200OK229 D
)22D E
]22E F
[33 	 
ProducesResponseType33	 
(33 
StatusCodes33 )
.33) *
Status400BadRequest33* =
)33= >
]33> ?
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *(
Status500InternalServerError44* F
)44F G
]44G H
public55 
async55 
Task55 
<55 
ActionResult55 &
>55& '
CreateQueue55( 3
(553 4
string554 :
name55; ?
)55? @
{66 	
Devon4NetLogger77 
.77 
Debug77 !
(77! "
$str77" K
)77K L
;77L M
return88 
Ok88 
(88 
await88 
_QueueService88 )
.88) *
CreateQueue88* 5
(885 6
name886 :
)88: ;
.88; <
ConfigureAwait88< J
(88J K
false88K P
)88P Q
)88Q R
;88R S
}99 	
}:: 
};; ´
ûC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\QueueManagement\Converters\QueueConverter.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
QueueManagement? N
.N O

ConvertersO Y
{ 
public

 

static

 
class

 
QueueConverter

 &
{ 
public 
static 
QueueDto 

ModelToDto )
() *
Queue* /
item0 4
)4 5
{ 	
if 
( 
item 
== 
null 
) 
return $
new% (
QueueDto) 1
(1 2
)2 3
;3 4
return 
new 
QueueDto 
{ 
Idqueue 
= 
item 
. 
Idqueue &
,& '
Name 
= 
item 
. 
Name 
,  
Logo 
= 
item 
. 
Logo 
,  
CurrentNumber 
= 
item #
.# $
CurrentNumber$ 1
,1 2
AttentionTime 
= 
item #
.# $
AttentionTime$ 1
,1 2
MinAttentionTime  
=  !
item" &
.& '
AttentionTime' 4
,4 5
Active 
= 
item 
. 
Active #
,# $
} 
; 
} 	
}!! 
}"" ≤
ëC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\QueueManagement\Dto\QueueDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
QueueManagement? N
.N O
DtoO R
{ 
public

 

partial

 
class

 
QueueDto

 !
{ 
public 
string 
Idqueue 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Logo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
CurrentNumber #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public## 
string## 
AttentionTime## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public(( 
string(( 
MinAttentionTime(( &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
public-- 
bool-- 
?-- 
Active-- 
{-- 
get-- !
;--! "
set--# &
;--& '
}--( )
public22 
int22 
?22 
	Customers22 
{22 
get22  #
;22# $
set22% (
;22( )
}22* +
}33 
}44 ®
öC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\QueueManagement\Service\IQueueService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
QueueManagement? N
.N O
ServiceO V
{ 
public		 

	interface		 
IQueueService		 "
{

 
Task 
< 
IEnumerable 
< 
QueueDto !
>! "
>" #
GetActiveQueues$ 3
(3 4
)4 5
;5 6
Task 
< 
Queue 
> 
CreateQueue 
(  
string  &
name' +
)+ ,
;, -
} 
} è
ôC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\QueueManagement\Service\QueueService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
QueueManagement? N
.N O
ServiceO V
{ 
public 

class 
QueueService 
: 
Service &
<& '

JtqContext' 1
>1 2
,2 3
IQueueService4 A
{ 
private 
readonly 
IQueueRepository )
_QueueRepository* :
;: ;
public 
QueueService 
( 
IUnitOfWork '
<' (

JtqContext( 2
>2 3
uoW4 7
)7 8
:9 :
base; ?
(? @
uoW@ C
)C D
{ 	
_QueueRepository 
= 
uoW "
." #

Repository# -
<- .
IQueueRepository. >
>> ?
(? @
)@ A
;A B
} 	
public   
async   
Task   
<   
IEnumerable   %
<  % &
QueueDto  & .
>  . /
>  / 0
GetActiveQueues  1 @
(  @ A
)  B C
{!! 	
Devon4NetLogger"" 
."" 
Debug"" !
(""! "
$str""" O
)""O P
;""P Q
var## 
result## 
=## 
await## 
_QueueRepository## /
.##/ 0
GetActiveQueues##0 ?
(##? @
)##@ A
.##A B
ConfigureAwait##B P
(##P Q
false##Q V
)##V W
;##W X
return$$ 
result$$ 
.$$ 
Select$$  
($$  !
QueueConverter$$! /
.$$/ 0

ModelToDto$$0 :
)$$: ;
;$$; <
}%% 	
public++ 
Task++ 
<++ 
Queue++ 
>++ 
CreateQueue++ &
(++& '
string++' -
name++. 2
)++2 3
{,, 	
if-- 
(-- 
string-- 
.-- 
IsNullOrWhiteSpace-- )
(--) *
name--* .
)--. /
)--/ 0
{.. 
throw// 
new// $
NullOrWhiteSpaceArgument// 2
(//2 3
$str//3 R
)//R S
;//S T
}00 
Devon4NetLogger11 
.11 
Debug11 !
(11! "
$str11" H
)11H I
;11I J
return22 
_QueueRepository22 #
.22# $
CreateQueue22$ /
(22/ 0
name220 4
)224 5
;225 6
}33 	
}44 
}55 ı
úC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\RabbitMqManagement\Commands\TodoCommand.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
RabbitMqManagement? Q
.Q R
CommandsR Z
{ 
public 

class 
TodoCommand 
: 
Command &
{		 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} –$
¶C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\RabbitMqManagement\Controllers\RabbitMqController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
RabbitMqManagement? Q
.Q R
ControllersR ]
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 

EnableCors 
( 
$str 
) 
] 
public 

class 
RabbitMqController #
:$ %
ControllerBase& 4
{ 
private 
TodoRabbitMqHandler #
TodoRabbitMqHandler$ 7
{8 9
get: =
;= >
set? B
;B C
}D E
private 
RabbitMqOptions 
RabbitMqOptions  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
RabbitMqController !
(! "
TodoRabbitMqHandler" 5
todoRabbitMqHandler6 I
,I J
IOptionsK S
<S T
RabbitMqOptionsT c
>c d
rabbitMqOptionse t
)t u
{ 	
TodoRabbitMqHandler   
=    !
todoRabbitMqHandler  " 5
;  5 6
RabbitMqOptions!! 
=!! 
rabbitMqOptions!! -
?!!- .
.!!. /
Value!!/ 4
;!!4 5
}"" 	
[)) 	
HttpPost))	 
])) 
[** 	
HttpOptions**	 
]** 
[++ 	
AllowAnonymous++	 
]++ 
[,, 	 
ProducesResponseType,,	 
(,, 
typeof,, $
(,,$ %
bool,,% )
),,) *
,,,* +
StatusCodes,,, 7
.,,7 8
Status200OK,,8 C
),,C D
],,D E
[-- 	 
ProducesResponseType--	 
(-- 
StatusCodes-- )
.--) *
Status400BadRequest--* =
)--= >
]--> ?
[.. 	 
ProducesResponseType..	 
(.. 
StatusCodes.. )
...) *
Status404NotFound..* ;
)..; <
]..< =
[// 	 
ProducesResponseType//	 
(// 
StatusCodes// )
.//) *(
Status500InternalServerError//* F
)//F G
]//G H
[00 	
Route00	 
(00 
$str00 (
)00( )
]00) *
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (

CreateTodo11) 3
(113 4
string114 :
todoDescription11; J
)11J K
{22 	
Devon4NetLogger33 
.33 
Debug33 !
(33! "
$str33" [
)33[ \
;33\ ]
if55 
(55 
RabbitMqOptions55 
?55  
.55  !
Hosts55! &
==55' )
null55* .
||55/ 1
!552 3
RabbitMqOptions553 B
.55B C
Hosts55C H
.55H I
Any55I L
(55L M
)55M N
)55N O
return66 

StatusCode66 !
(66! "
StatusCodes66" -
.66- .(
Status500InternalServerError66. J
,66J K
$str66L i
)66i j
;66j k
if88 
(88 
string88 
.88 
IsNullOrEmpty88 $
(88$ %
todoDescription88% 4
)884 5
)885 6
{99 
return:: 

StatusCode:: !
(::! "
StatusCodes::" -
.::- .
Status400BadRequest::. A
,::A B
$str::C u
)::u v
;::v w
};; 
var== 
todoCommand== 
=== 
new== !
TodoCommand==" -
{==. /
Description==0 ;
===< =
todoDescription==> M
}==M N
;==N O
var>> 
	published>> 
=>> 
await>> !
TodoRabbitMqHandler>>" 5
.>>5 6
Publish>>6 =
(>>= >
todoCommand>>> I
)>>I J
.>>J K
ConfigureAwait>>K Y
(>>Y Z
false>>Z _
)>>_ `
;>>` a
return?? 
Ok?? 
(?? 
	published?? 
)??  
;??  !
}@@ 	
}AA 
}BB ç"
§C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\RabbitMqManagement\Handlers\TodoRabbitMqHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
RabbitMqManagement? Q
.Q R
HandlersR Z
{		 
public 

class 
TodoRabbitMqHandler $
:$ %
RabbitMqHandler& 5
<5 6
TodoCommand6 A
>A B
{ 
private 
ITodoService 
TodoService (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
TodoRabbitMqHandler "
(" #
IServiceCollection# 5
services6 >
,> ?
IBus@ D

serviceBusE O
,O P
boolQ U
subscribeToChannelV h
=i j
falsek p
)p q
:r s
baset x
(x y
services	y Å
,
Å Ç

serviceBus
É ç
,
ç é 
subscribeToChannel
è °
)
° ¢
{ 	
} 	
public"" 
TodoRabbitMqHandler"" "
(""" #
IServiceCollection""# 5
services""6 >
,""> ?
IBus""@ D

serviceBus""E O
,""O P"
IRabbitMqBackupService""Q g!
rabbitMqBackupService""h }
,""} ~
bool	"" É 
subscribeToChannel
""Ñ ñ
=
""ó ò
false
""ô û
)
""û ü
:
""† °
base
""¢ ¶
(
""¶ ß
services
""ß Ø
,
""Ø ∞

serviceBus
""± ª
,
""ª º#
rabbitMqBackupService
""Ω “
,
""“ ” 
subscribeToChannel
""‘ Ê
)
""Ê Á
{## 	
}$$ 	
public-- 
TodoRabbitMqHandler-- "
(--" #
IServiceCollection--# 5
services--6 >
,--> ?
IBus--@ D

serviceBus--E O
,--O P(
IRabbitMqBackupLiteDbService--Q m(
rabbitMqBackupLiteDbService	--n â
,
--â ä
bool
--ã è 
subscribeToChannel
--ê ¢
=
--£ §
false
--• ™
)
--™ ´
:
--¨ ≠
base
--Æ ≤
(
--≤ ≥
services
--≥ ª
,
--ª º

serviceBus
--Ω «
,
--« »)
rabbitMqBackupLiteDbService
--… ‰
,
--‰ Â 
subscribeToChannel
--Ê ¯
)
--¯ ˘
{.. 	
}// 	
public99 
TodoRabbitMqHandler99 "
(99" #
IServiceCollection99# 5
services996 >
,99> ?
IBus99@ D

serviceBus99E O
,99O P"
IRabbitMqBackupService99Q g!
rabbitMqBackupService99h }
,99} ~)
IRabbitMqBackupLiteDbService	99 õ)
rabbitMqBackupLiteDbService
99ú ∑
,
99∑ ∏
bool
99π Ω 
subscribeToChannel
99æ –
=
99— “
false
99” ÿ
)
99ÿ Ÿ
:
99⁄ €
base
99‹ ‡
(
99‡ ·
services
99· È
,
99È Í

serviceBus
99Î ı
,
99ı ˆ#
rabbitMqBackupService
99˜ å
,
99å ç)
rabbitMqBackupLiteDbService
99é ©
,
99© ™ 
subscribeToChannel
99´ Ω
)
99Ω æ
{:: 	
};; 	
publicBB 
overrideBB 
asyncBB 
TaskBB "
<BB" #
boolBB# '
>BB' (
HandleCommandBB) 6
(BB6 7
TodoCommandBB7 B
commandBBC J
)BBJ K
{CC 	
TodoServiceDD 
=DD 
GetInstanceDD %
<DD% &
ITodoServiceDD& 2
>DD2 3
(DD3 4
)DD4 5
;DD5 6
varFF 
resultFF 
=FF 
awaitFF 
TodoServiceFF *
.FF* +

CreateTodoFF+ 5
(FF5 6
commandFF6 =
.FF= >
DescriptionFF> I
)FFI J
.FFJ K
ConfigureAwaitFFK Y
(FFY Z
falseFFZ _
)FF_ `
;FF` a
returnGG 
resultGG 
!=GG 
nullGG 
;GG  
}HH 	
}II 
}JJ ¥9
ûC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Controllers\TodoController.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N
ControllersN Y
{		 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
TodoController 
:  
ControllerBase! /
{ 
private 
readonly 
ITodoService %
_todoService& 2
;2 3
public 
TodoController 
( 
ITodoService +
todoService, 7
)7 8
{ 	
_todoService 
= 
todoService &
;& '
} 	
[!! 	
HttpGet!!	 
]!! 
["" 	 
ProducesResponseType""	 
("" 
typeof"" $
(""$ %
List""% )
<"") *
TodoDto""* 1
>""1 2
)""2 3
,""3 4
StatusCodes""5 @
.""@ A
Status200OK""A L
)""L M
]""M N
[## 	 
ProducesResponseType##	 
(## 
StatusCodes## )
.##) *
Status400BadRequest##* =
)##= >
]##> ?
[$$ 	 
ProducesResponseType$$	 
($$ 
StatusCodes$$ )
.$$) *
Status404NotFound$$* ;
)$$; <
]$$< =
[%% 	 
ProducesResponseType%%	 
(%% 
StatusCodes%% )
.%%) *(
Status500InternalServerError%%* F
)%%F G
]%%G H
public&& 
async&& 
Task&& 
<&& 
ActionResult&& &
>&&& '
GetTodo&&( /
(&&/ 0
)&&0 1
{'' 	
Devon4NetLogger(( 
.(( 
Debug(( !
(((! "
$str((" T
)((T U
;((U V
return)) 
Ok)) 
()) 
await)) 
_todoService)) (
.))( )
GetTodo))) 0
())0 1
)))1 2
.))2 3
ConfigureAwait))3 A
())A B
false))B G
)))G H
)))H I
;))I J
}** 	
[00 	
HttpPost00	 
]00 
[11 	 
ProducesResponseType11	 
(11 
typeof11 $
(11$ %
TodoDto11% ,
)11, -
,11- .
StatusCodes11/ :
.11: ;
Status201Created11; K
)11K L
]11L M
[22 	 
ProducesResponseType22	 
(22 
StatusCodes22 )
.22) *
Status400BadRequest22* =
)22= >
]22> ?
[33 	 
ProducesResponseType33	 
(33 
StatusCodes33 )
.33) *
Status404NotFound33* ;
)33; <
]33< =
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *(
Status500InternalServerError44* F
)44F G
]44G H
public55 
async55 
Task55 
<55 
ActionResult55 &
>55& '
Create55( .
(55. /
string55/ 5
todoDescription556 E
)55E F
{66 	
Devon4NetLogger77 
.77 
Debug77 !
(77! "
$str77" T
)77T U
;77U V
var88 
result88 
=88 
await88 
_todoService88 +
.88+ ,

CreateTodo88, 6
(886 7
todoDescription887 F
)88F G
.88G H
ConfigureAwait88H V
(88V W
false88W \
)88\ ]
;88] ^
return99 

StatusCode99 
(99 
StatusCodes99 )
.99) *
Status201Created99* :
,99: ;
result99< B
)99B C
;99C D
}:: 	
[@@ 	

HttpDelete@@	 
]@@ 
[AA 	 
ProducesResponseTypeAA	 
(AA 
typeofAA $
(AA$ %
longAA% )
)AA) *
,AA* +
StatusCodesAA, 7
.AA7 8
Status200OKAA8 C
)AAC D
]AAD E
[BB 	 
ProducesResponseTypeBB	 
(BB 
StatusCodesBB )
.BB) *
Status400BadRequestBB* =
)BB= >
]BB> ?
[CC 	 
ProducesResponseTypeCC	 
(CC 
StatusCodesCC )
.CC) *
Status404NotFoundCC* ;
)CC; <
]CC< =
[DD 	 
ProducesResponseTypeDD	 
(DD 
StatusCodesDD )
.DD) *(
Status500InternalServerErrorDD* F
)DDF G
]DDG H
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
DeleteEE( .
(EE. /
longEE/ 3
todoIdEE4 :
)EE: ;
{FF 	
Devon4NetLoggerGG 
.GG 
DebugGG !
(GG! "
$strGG" T
)GGT U
;GGU V
returnHH 
OkHH 
(HH 
awaitHH 
_todoServiceHH (
.HH( )
DeleteTodoByIdHH) 7
(HH7 8
todoIdHH8 >
)HH> ?
.HH? @
ConfigureAwaitHH@ N
(HHN O
falseHHO T
)HHT U
)HHU V
;HHV W
}II 	
[OO 	
HttpPutOO	 
]OO 
[PP 	 
ProducesResponseTypePP	 
(PP 
typeofPP $
(PP$ %
TodoDtoPP% ,
)PP, -
,PP- .
StatusCodesPP/ :
.PP: ;
Status200OKPP; F
)PPF G
]PPG H
[QQ 	 
ProducesResponseTypeQQ	 
(QQ 
StatusCodesQQ )
.QQ) *
Status400BadRequestQQ* =
)QQ= >
]QQ> ?
[RR 	 
ProducesResponseTypeRR	 
(RR 
StatusCodesRR )
.RR) *
Status404NotFoundRR* ;
)RR; <
]RR< =
[SS 	 
ProducesResponseTypeSS	 
(SS 
StatusCodesSS )
.SS) *(
Status500InternalServerErrorSS* F
)SSF G
]SSG H
[TT 	
HttpOptionsTT	 
]TT 
publicUU 
asyncUU 
TaskUU 
<UU 
ActionResultUU &
>UU& '

ModifyTodoUU( 2
(UU2 3
longUU3 7
todoIdUU8 >
)UU> ?
{VV 	
Devon4NetLoggerWW 
.WW 
DebugWW !
(WW! "
$strWW" W
)WWW X
;WWX Y
returnXX 
OkXX 
(XX 
awaitXX 
_todoServiceXX (
.XX( )
ModifyTodoByIdXX) 7
(XX7 8
todoIdXX8 >
)XX> ?
.XX? @
ConfigureAwaitXX@ N
(XXN O
falseXXO T
)XXT U
)XXU V
;XXV W
}YY 	
}ZZ 
}[[ Ì	
úC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Converters\TodoConverter.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N

ConvertersN X
{ 
public		 

static		 
class		 
TodoConverter		 %
{

 
public 
static 
TodoDto 

ModelToDto (
(( )
Todos) .
item/ 3
)3 4
{ 	
if 
( 
item 
== 
null 
) 
return $
new% (
TodoDto) 0
(0 1
)1 2
;2 3
return 
new 
TodoDto 
{ 
Id 
= 
item 
. 
Id 
, 
Description 
= 
item "
." #
Description# .
} 
; 
} 	
} 
} ·
èC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Dto\TodoDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N
DtoN Q
{ 
public 

class 
TodoDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
} 
} ˘
òC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Service\ITodoService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N
ServiceN U
{ 
public

 

	interface

 
ITodoService

 !
{ 
Task 
< 
IEnumerable 
< 
TodoDto  
>  !
>! "
GetTodo# *
(* +

Expression+ 5
<5 6
Func6 :
<: ;
Todos; @
,@ A
boolB F
>F G
>G H
	predicateI R
=S T
nullU Y
)Y Z
;Z [
Task 
< 
Todos 
> 
GetTodoById 
(  
long  $
id% '
)' (
;( )
Task 
< 
Todos 
> 

CreateTodo 
( 
string %
description& 1
)1 2
;2 3
Task&& 
<&& 
long&& 
>&& 
DeleteTodoById&& !
(&&! "
long&&" &
id&&' )
)&&) *
;&&* +
Task-- 
<-- 
Todos-- 
>-- 
ModifyTodoById-- "
(--" #
long--# '
id--( *
)--* +
;--+ ,
}.. 
}// ∂6
óC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Service\TodoService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N
ServiceN U
{ 
public 

class 
TodoService 
: 
Service %
<% &
TodoContext& 1
>1 2
,2 3
ITodoService4 @
{ 
private 
readonly 
ITodoRepository (
_todoRepository) 8
;8 9
public 
TodoService 
( 
IUnitOfWork &
<& '
TodoContext' 2
>2 3
uoW4 7
)7 8
:9 :
base; ?
(? @
uoW@ C
)C D
{ 	
_todoRepository 
= 
uoW !
.! "

Repository" ,
<, -
ITodoRepository- <
>< =
(= >
)> ?
;? @
} 	
public"" 
async"" 
Task"" 
<"" 
IEnumerable"" %
<""% &
TodoDto""& -
>""- .
>"". /
GetTodo""0 7
(""7 8

Expression""8 B
<""B C
Func""C G
<""G H
Todos""H M
,""M N
bool""O S
>""S T
>""T U
	predicate""V _
=""` a
null""b f
)""f g
{## 	
Devon4NetLogger$$ 
.$$ 
Debug$$ !
($$! "
$str$$" K
)$$K L
;$$L M
var%% 
result%% 
=%% 
await%% 
_todoRepository%% .
.%%. /
GetTodo%%/ 6
(%%6 7
	predicate%%7 @
)%%@ A
.%%A B
ConfigureAwait%%B P
(%%P Q
false%%Q V
)%%V W
;%%W X
return&& 
result&& 
.&& 
Select&&  
(&&  !
TodoConverter&&! .
.&&. /

ModelToDto&&/ 9
)&&9 :
;&&: ;
}'' 	
public.. 
Task.. 
<.. 
Todos.. 
>.. 
GetTodoById.. &
(..& '
long..' +
id.., .
)... /
{// 	
Devon4NetLogger00 
.00 
Debug00 !
(00! "
$"00" $
$str00$ ]
{00] ^
id00^ `
}00` a
"00a b
)00b c
;00c d
return11 
_todoRepository11 "
.11" #
GetTodoById11# .
(11. /
id11/ 1
)111 2
;112 3
}22 	
public99 
Task99 
<99 
Todos99 
>99 

CreateTodo99 %
(99% &
string99& ,
description99- 8
)998 9
{:: 	
Devon4NetLogger;; 
.;; 
Debug;; !
(;;! "
$";;" $
$str;;$ Y
{;;Y Z
description;;Z e
};;e f
";;f g
);;g h
;;;h i
if== 
(== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
description==% 0
)==0 1
||==2 4
string==5 ;
.==; <
IsNullOrWhiteSpace==< N
(==N O
description==O Z
)==Z [
)==[ \
{>> 
throw?? 
new?? 
ArgumentException?? +
(??+ ,
$str??, V
)??V W
;??W X
}@@ 
returnBB 
_todoRepositoryBB "
.BB" #
CreateBB# )
(BB) *
descriptionBB* 5
)BB5 6
;BB6 7
}CC 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
longJJ 
>JJ 
DeleteTodoByIdJJ  .
(JJ. /
longJJ/ 3
idJJ4 6
)JJ6 7
{KK 	
Devon4NetLoggerLL 
.LL 
DebugLL !
(LL! "
$"LL" $
$strLL$ `
{LL` a
idLLa c
}LLc d
"LLd e
)LLe f
;LLf g
varMM 
todoMM 
=MM 
awaitMM 
_todoRepositoryMM ,
.MM, -
GetFirstOrDefaultMM- >
(MM> ?
tMM? @
=>MMA C
tMMD E
.MME F
IdMMF H
==MMI K
idMML N
)MMN O
.MMO P
ConfigureAwaitMMP ^
(MM^ _
falseMM_ d
)MMd e
;MMe f
ifOO 
(OO 
todoOO 
==OO 
nullOO 
)OO 
{PP 
throwQQ 
newQQ 
ArgumentExceptionQQ +
(QQ+ ,
$"QQ, .
$strQQ. >
{QQ> ?
idQQ? A
}QQA B
$strQQB R
"QQR S
)QQS T
;QQT U
}RR 
returnTT 
awaitTT 
_todoRepositoryTT (
.TT( )
DeleteTodoByIdTT) 7
(TT7 8
idTT8 :
)TT: ;
.TT; <
ConfigureAwaitTT< J
(TTJ K
falseTTK P
)TTP Q
;TTQ R
}UU 	
public\\ 
async\\ 
Task\\ 
<\\ 
Todos\\ 
>\\  
ModifyTodoById\\! /
(\\/ 0
long\\0 4
id\\5 7
)\\7 8
{]] 	
Devon4NetLogger^^ 
.^^ 
Debug^^ !
(^^! "
$"^^" $
$str^^$ `
{^^` a
id^^a c
}^^c d
"^^d e
)^^e f
;^^f g
var`` 
todo`` 
=`` 
await`` 
_todoRepository`` ,
.``, -
GetFirstOrDefault``- >
(``> ?
t``? @
=>``A C
t``D E
.``E F
Id``F H
==``I K
id``L N
)``N O
.``O P
ConfigureAwait``P ^
(``^ _
false``_ d
)``d e
;``e f
ifbb 
(bb 
todobb 
==bb 
nullbb 
)bb 
{cc 
throwdd 
newdd 
ArgumentExceptiondd +
(dd+ ,
$"dd, .
$strdd. >
{dd> ?
iddd? A
}ddA B
$strddB R
"ddR S
)ddS T
;ddT U
}ee 
todogg 
.gg 
Donegg 
=gg 
!gg 
todogg 
.gg 
Donegg "
;gg" #
returnii 
awaitii 
_todoRepositoryii (
.ii( )
Updateii) /
(ii/ 0
todoii0 4
)ii4 5
.ii5 6
ConfigureAwaitii6 D
(iiD E
falseiiE J
)iiJ K
;iiK L
}jj 	
}kk 
}ll á
£C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\TodoManagement\Validators\TodosFluentValidator.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
TodoManagement? M
.M N

ValidatorsN X
{ 
public

 

class

  
TodosFluentValidator

 %
:

& '!
CustomFluentValidator

( =
<

= >
Todos

> C
>

C D
{ 
public  
TodosFluentValidator #
(# $
bool$ ($
launchExceptionWhenError) A
)A B
:C D
baseE I
(I J$
launchExceptionWhenErrorJ b
)b c
{ 	
} 	
public 
override 
void 
CustomValidate +
(+ ,
), -
{ 	
RuleFor 
( 
todo 
=> 
todo  
.  !
Description! ,
), -
.- .
NotNull. 5
(5 6
)6 7
;7 8
RuleFor 
( 
todo 
=> 
todo  
.  !
Description! ,
), -
.- .
NotEmpty. 6
(6 7
)7 8
;8 9
} 	
} 
} Ÿ4
§C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Controllers\VisitorController.cs
	namespace

 	
	Devon4Net


 
.

 
Application

 
.

  
WebAPI

  &
.

& '
Implementation

' 5
.

5 6
Business

6 >
.

> ?
VisitorManagement

? P
.

P Q
Controllers

Q \
{ 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
VisitorController "
:" #
ControllerBase$ 2
{ 
private 
IJwtHandler 
_jwtHandler '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
private 
readonly 
IVisitorService (
_visitorService) 8
;8 9
public 
VisitorController  
(  !
IVisitorService! 0
visitorService1 ?
,? @
IJwtHandlerA L

JwtHandlerM W
)W X
{X Y
_visitorService 
= 
visitorService ,
;, -
_jwtHandler   
=   

JwtHandler   $
;  $ %
}!! 	
['' 	
HttpPost''	 
('' 
$str'' !
)''! "
]''" #
[(( 	 
ProducesResponseType((	 
((( 
typeof(( $
((($ %

VisitorDto((% /
)((/ 0
,((0 1
StatusCodes((2 =
.((= >
Status201Created((> N
)((N O
]((O P
[)) 	 
ProducesResponseType))	 
()) 
StatusCodes)) )
.))) *
Status400BadRequest))* =
)))= >
]))> ?
[** 	 
ProducesResponseType**	 
(** 
StatusCodes** )
.**) *
Status404NotFound*** ;
)**; <
]**< =
[++ 	 
ProducesResponseType++	 
(++ 
StatusCodes++ )
.++) *(
Status500InternalServerError++* F
)++F G
]++G H
public,, 
async,, 
Task,, 
<,, 
ActionResult,, &
>,,& '
CreateVisitor,,( 5
(,,5 6
string,,6 <
username,,= E
,,,E F
string,,G M
name,,N R
,,,R S
string,,T Z
pass,,[ _
,,,_ `
string,,a g
tlf,,h k
,,,k l
bool,,m q
acceptedCommercial	,,r Ñ
,
,,Ñ Ö
bool
,,Ü ä
acceptedTerms
,,ã ò
)
,,ò ô
{.. 	
Devon4NetLogger00 
.00 
Debug00 !
(00! "
$"00" $
$str00$ i
{00i j
username00j r
}00r s
$str00s ~
{00~ 
pass	00 É
}
00É Ñ
"
00Ñ Ö
)
00Ö Ü
;
00Ü á
var11 
result11 
=11 
await11 
_visitorService11 .
.11. /
CreateVisitor11/ <
(11< =
username11= E
,11E F
name11G K
,11K L
pass11M Q
,11Q R
tlf11S V
,11V W
acceptedCommercial11X j
,11j k
acceptedTerms11l y
)11y z
.11z {
ConfigureAwait	11{ â
(
11â ä
false
11ä è
)
11è ê
;
11ê ë
return22 

StatusCode22 
(22 
StatusCodes22 )
.22) *
Status201Created22* :
,22: ;
result22< B
)22B C
;22C D
}33 	
[99 	
HttpPost99	 
(99 
$str99 
)99 
]99 
[:: 	 
ProducesResponseType::	 
(:: 
typeof:: $
(::$ %
LoginResponseToken::% 7
)::7 8
,::8 9
StatusCodes::: E
.::E F
Status200OK::F Q
)::Q R
]::R S
[;; 	 
ProducesResponseType;;	 
(;; 
StatusCodes;; )
.;;) *
Status400BadRequest;;* =
);;= >
];;> ?
[<< 	 
ProducesResponseType<<	 
(<< 
StatusCodes<< )
.<<) *
Status404NotFound<<* ;
)<<; <
]<<< =
[== 	 
ProducesResponseType==	 
(== 
StatusCodes== )
.==) *(
Status500InternalServerError==* F
)==F G
]==G H
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
Login>>) .
(>>. /
LoginDto>>/ 7
loginDto>>8 @
)>>@ A
{?? 	
Devon4NetLogger@@ 
.@@ 
Debug@@ !
(@@! "
$str@@" J
)@@J K
;@@K L
varAA 
checkAA 
=AA 
awaitAA 
_visitorServiceAA +
.AA+ ,
LoginAA, 1
(AA1 2
loginDtoAA2 :
.AA: ;
UsernameAA; C
,AAC D
loginDtoAAE M
.AAM N
PasswordAAN V
)AAV W
.AAW X
ConfigureAwaitAAX f
(AAf g
falseAAg l
)AAl m
;AAm n
ifBB 
(BB 
checkBB 
)BB 
{BB 
varCC 
tokenCC 
=CC 
_jwtHandlerCC '
.CC' (
CreateClientTokenCC( 9
(CC9 :
newCC: =
ListCC> B
<CCB C
ClaimCCC H
>CCH I
{DD 
newEE 
ClaimEE 
(EE 

ClaimTypesEE (
.EE( )
NameEE) -
,EE- .
loginDtoEE. 6
.EE6 7
UsernameEE7 ?
)EE? @
,EE@ A
newFF 
ClaimFF 
(FF 

ClaimTypesFF (
.FF( )
NameIdentifierFF) 7
,FF7 8
GuidFF8 <
.FF< =
NewGuidFF= D
(FFD E
)FFE F
.FFF G
ToStringFFG O
(FFO P
)FFP Q
)FFQ R
}GG 
)GG 
;GG 
returnHH 
OkHH 
(HH 
newHH 
LoginResponseTokenHH 0
{HH1 2
TokenHH3 8
=HH9 :
tokenHH; @
}HH@ A
)HHA B
;HHB C
}II 
returnJJ 

BadRequestJJ 
(JJ 
)JJ 
;JJ  
}KK 	
}LL 
}MM ÿ
ìC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Dto\LoginDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
VisitorManagement? P
.P Q
DtoQ T
{ 
public 

class 
LoginDto 
{		 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Õ
ùC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Dto\LoginResponseToken.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
VisitorManagement? P
.P Q
DtoQ T
{ 
public 

class 
LoginResponseToken #
{ 
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ©
ïC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Dto\VisitorDto.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
VisitorManagement? P
.P Q
DtoQ T
{ 
public 

class 

VisitorDto 
{		 
public 
string 
	Idvisitor 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public"" 
bool"" 
?"" 
AcceptedCommercial"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
public&& 
bool&& 
?&& 
AcceptedTerms&& "
{&&# $
get&&% (
;&&( )
set&&* -
;&&- .
}&&/ 0
public** 
bool** 
?** 
UserType** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public.. 
virtual.. 
ICollection.. "
<.." #

AccessCode..# -
>..- .
AccessCodes../ :
{..; <
get..= @
;..@ A
set..B E
;..E F
}..G H
}// 
}00 ˘
°C:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Exceptions\MustAcceptTerms.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
VisitorManagement? P
.P Q

ExceptionsQ [
{ 
[		 
Serializable		 
]		 
public

 

class

 
MustAcceptTerms

  
:

! "
	Exception

# ,
,

, -
IWebApiException

. >
{ 
public 
int 

StatusCode 
=>  
StatusCodes! ,
., -
Status400BadRequest- @
;@ A
public 
bool 
ShowMessage 
=>  "
true# '
;' (
public 
MustAcceptTerms 
( 
)  
{ 	
} 	
public!! 
MustAcceptTerms!! 
(!! 
string!! %
message!!& -
)!!- .
:"" 
base"" 
("" 
message"" 
)"" 
{## 	
}$$ 	
public++ 
MustAcceptTerms++ 
(++ 
string++ %
message++& -
,++- .
	Exception++/ 8
innerException++9 G
)++G H
:++I J
base++K O
(++O P
message++P W
,++W X
innerException++Y g
)++g h
{,, 	
}-- 	
	protected44 
MustAcceptTerms44 !
(44! "
System44" (
.44( )
Runtime44) 0
.440 1
Serialization441 >
.44> ?
SerializationInfo44? P
serializationInfo44Q b
,44b c
System44d j
.44j k
Runtime44k r
.44r s
Serialization	44s Ä
.
44Ä Å
StreamingContext
44Å ë
streamingContext
44í ¢
)
44¢ £
:55 
base55 
(55 
serializationInfo55 $
,55$ %
streamingContext55& 6
)556 7
{66 	
}77 	
}88 
}99 Ú	
ûC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Service\IVisitorService.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Business6 >
.> ?
VisitorManagement? P
.P Q
ServiceQ X
{ 
public 

	interface 
IVisitorService $
{		 
Task 
< 
Visitor 
> 
CreateVisitor #
(# $
string$ *
username+ 3
,3 4
string5 ;
name< @
,@ A
stringB H
passI M
,M N
stringO U
tlfV Y
,Y Z
bool[ _
acceptedCommercial` r
,r s
boolt x
acceptedTerms	y Ü
)
Ü á
;
á à
Task 
< 
bool 
> 
Login 
( 
String 
username  (
,( )
String* 0
pass1 5
)5 6
;6 7
} 
} í"
ùC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Business\VisitorManagement\Service\VisitorService.cs
	namespace

 	
	Devon4Net


 
.

 
Application

 
.

  
WebAPI

  &
.

& '
Implementation

' 5
.

5 6
Business

6 >
.

> ?
VisitorManagement

? P
.

P Q
Service

Q X
{ 
public 

class 
VisitorService 
:  
Service! (
<( )

JtqContext) 3
>3 4
,4 5
IVisitorService6 E
{ 
private 
readonly 
IVisitorRepository +
_VisitorRepository, >
;> ?
public 
VisitorService 
( 
IUnitOfWork )
<) *

JtqContext* 4
>4 5
uow6 9
)9 :
:; <
base= A
(A B
uowB E
)E F
{ 	
_VisitorRepository 
=  
uow! $
.$ %

Repository% /
</ 0
IVisitorRepository0 B
>B C
(C D
)D E
;E F
} 	
public'' 
Task'' 
<'' 
Visitor'' 
>'' 
CreateVisitor'' *
(''* +
string''+ 1
username''2 :
,'': ;
string''< B
name''C G
,''G H
string''I O
pass''P T
,''T U
string''V \
tlf''] `
,''` a
bool''b f
acceptedCommercial''g y
,''y z
bool''{ 
acceptedTerms
''Ä ç
)
''ç é
{(( 	
if)) 
()) 
string)) 
.)) 
IsNullOrWhiteSpace)) )
())) *
username))* 2
)))2 3
||))4 6
string))7 =
.))= >
IsNullOrWhiteSpace))> P
())P Q
name))Q U
)))U V
||))W Y
string))Z `
.))` a
IsNullOrWhiteSpace))a s
())s t
pass))t x
)))x y
||))z |
string	))} É
.
))É Ñ 
IsNullOrWhiteSpace
))Ñ ñ
(
))ñ ó
tlf
))ó ö
)
))ö õ
)
))õ ú
throw** 
new** $
NullOrWhiteSpaceArgument** 2
(**2 3
$str**3 Q
)**Q R
;**R S
if,, 
(,, 
!,, 
acceptedTerms,, 
),, 
throw-- 
new-- 
MustAcceptTerms-- )
(--) *
$str--* G
)--G H
;--H I
Devon4NetLogger// 
.// 
Debug// !
(//! "
$"//" $
$str//$ c
{//c d
username//d l
}//l m
$str//m n
{//n o
pass//o s
}//s t
"//t u
)//u v
;//v w
return00 
_VisitorRepository00 %
.00% &
CreateVisitor00& 3
(003 4
username004 <
,00< =
name00= A
,00A B
pass00B F
,00F G
tlf00G J
,00J K
acceptedCommercial00K ]
,00] ^
acceptedTerms00^ k
)00k l
;00l m
}11 	
public88 
Task88 
<88 
bool88 
>88 
Login88 
(88  
string88  &
username88' /
,88/ 0
string881 7
pass888 <
)88< =
{99 	
if:: 
(:: 
string:: 
.:: 
IsNullOrWhiteSpace:: )
(::) *
username::* 2
)::2 3
||::4 6
string::7 =
.::= >
IsNullOrWhiteSpace::> P
(::P Q
pass::Q U
)::U V
)::V W
throw;; 
new;; $
NullOrWhiteSpaceArgument;; 2
(;;2 3
$str;;3 Q
);;Q R
;;;R S
Devon4NetLogger== 
.== 
Debug== !
(==! "
$str==" 1
)==1 2
;==2 3
return>> 
_VisitorRepository>> %
.>>% &
Login>>& +
(>>+ ,
username>>, 4
,>>4 5
pass>>5 9
)>>9 :
;>>: ;
}?? 	
}@@ 
}AA Ò8
åC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Configuration\DevonConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Configuration6 C
{ 
public   

static   
class   
DevonConfiguration   *
{!! 
public++ 
static++ 
void++ )
SetupDevonDependencyInjection++ 8
(++8 9
this++9 =
IServiceCollection++> P
services++Q Y
,++Y Z
IConfiguration++[ i
configuration++j w
)++w x
{,, 	
SetupDatabase-- 
(-- 
services-- "
,--" #
configuration--$ 1
)--1 2
;--2 3
SetupJwtPolicies.. 
(.. 
services.. %
)..% &
;..& '!
SetupFluentValidators// !
(//! "
services//" *
)//* +
;//+ ,
using11 
var11 
serviceProvider11 %
=11& '
services11( 0
.110 1 
BuildServiceProvider111 E
(11E F
)11F G
;11G H
var33 
mediatR33 
=33 
serviceProvider33 )
.33) *

GetService33* 4
<334 5
IOptions335 =
<33= >
MediatROptions33> L
>33L M
>33M N
(33N O
)33O P
;33P Q
var44 
rabbitMq44 
=44 
serviceProvider44 *
.44* +

GetService44+ 5
<445 6
IOptions446 >
<44> ?
RabbitMqOptions44? N
>44N O
>44O P
(44P Q
)44Q R
;44R S
if66 
(66 
rabbitMq66 
?66 
.66 
Value66 
!=66  "
null66# '
&&66( *
rabbitMq66+ 3
.663 4
Value664 9
.669 :
EnableRabbitMq66: H
)66H I
{77 
SetupRabbitHandlers88 #
(88# $
services88$ ,
)88, -
;88- .
}99 
if;; 
(;; 
mediatR;; 
?;; 
.;; 
Value;; 
!=;; !
null;;" &
&&;;' )
mediatR;;* 1
.;;1 2
Value;;2 7
.;;7 8
EnableMediatR;;8 E
);;E F
{<<  
SetupMediatRHandlers== $
(==$ %
services==% -
)==- .
;==. /
}>> 
}?? 	
privateAA 
staticAA 
voidAA 
SetupRabbitHandlersAA /
(AA/ 0
IServiceCollectionAA0 B
servicesAAC K
)AAK L
{BB 	
servicesCC 
.CC 
AddRabbitMqHandlerCC '
<CC' (%
UserSampleRabbitMqHandlerCC( A
>CCA B
(CCB C
trueCCC G
)CCG H
;CCH I
servicesDD 
.DD 
AddRabbitMqHandlerDD '
<DD' (
TodoRabbitMqHandlerDD( ;
>DD; <
(DD< =
trueDD= A
)DDA B
;DDB C
}EE 	
privateGG 
staticGG 
voidGG  
SetupMediatRHandlersGG 0
(GG0 1
IServiceCollectionGG1 C
servicesGGD L
)GGL M
{HH 	
servicesII 
.II 
AddTransientII !
(II! "
typeofII" (
(II( )
IRequestHandlerII) 8
<II8 9
GetUserQueryII9 E
,IIE F
UserDtoIIG N
>IIN O
)IIO P
,IIP Q
typeofIIR X
(IIX Y
GetUserhandlerIIY g
)IIg h
)IIh i
;IIi j
servicesJJ 
.JJ 
AddTransientJJ !
(JJ! "
typeofJJ" (
(JJ( )
IRequestHandlerJJ) 8
<JJ8 9
GetTodoQueryJJ9 E
,JJE F
TodoResultDtoJJG T
>JJT U
)JJU V
,JJV W
typeofJJX ^
(JJ^ _
GetTodoHandlerJJ_ m
)JJm n
)JJn o
;JJo p
servicesKK 
.KK 
AddTransientKK !
(KK! "
typeofKK" (
(KK( )
IRequestHandlerKK) 8
<KK8 9
CreateTodoCommandKK9 J
,KKJ K
TodoResultDtoKKL Y
>KKY Z
)KKZ [
,KK[ \
typeofKK] c
(KKc d
CreateTodoHandlerKKd u
)KKu v
)KKv w
;KKw x
}LL 	
privateNN 
staticNN 
voidNN !
SetupFluentValidatorsNN 1
(NN1 2
IServiceCollectionNN2 D
servicesNNE M
)NNM N
{OO 	
servicesPP 
.PP 
AddFluentValidationPP (
<PP( ) 
TodosFluentValidatorPP) =
>PP= >
(PP> ?
truePP? C
)PPC D
;PPD E
servicesQQ 
.QQ 
AddFluentValidationQQ (
<QQ( )#
EmployeeFluentValidatorQQ) @
>QQ@ A
(QQA B
trueQQB F
)QQF G
;QQG H
}RR 	
private\\ 
static\\ 
void\\ 
SetupDatabase\\ )
(\\) *
IServiceCollection\\* <
services\\= E
,\\E F
IConfiguration\\G U
configuration\\V c
)\\c d
{]] 	
services^^ 
.^^ 
SetupDatabase^^ "
<^^" #
TodoContext^^# .
>^^. /
(^^/ 0
configuration^^0 =
,^^= >
$str^^? H
,^^H I
DatabaseType^^J V
.^^V W
InMemory^^W _
)^^_ `
.^^` a
ConfigureAwait^^a o
(^^o p
false^^p u
)^^u v
;^^v w
services__ 
.__ 
SetupDatabase__ "
<__" #
EmployeeContext__# 2
>__2 3
(__3 4
configuration__4 A
,__A B
$str__C M
,__M N
DatabaseType__O [
.__[ \
InMemory__\ d
)__d e
.__e f
ConfigureAwait__f t
(__t u
false__u z
)__z {
;__{ |
services`` 
.`` 
SetupDatabase`` "
<``" #

JtqContext``# -
>``- .
(``. /
configuration``/ <
,``< =
$str``> C
,``C D
DatabaseType``E Q
.``Q R
MySql``R W
,``W X
migrate``Y `
:``` a
true``a e
)``e f
.``f g
ConfigureAwait``g u
(``u v
false``v {
)``{ |
;``| }
}aa 	
privatecc 
staticcc 
voidcc 
SetupJwtPoliciescc ,
(cc, -
IServiceCollectioncc- ?
servicescc@ H
)ccH I
{dd 	
servicesee 
.ee 
AddJwtPolicyee !
(ee! "
	AuthConstee" +
.ee+ ,
DevonSamplePolicyee, =
,ee= >

ClaimTypesee? I
.eeI J
RoleeeJ N
,eeN O
	AuthConsteeP Y
.eeY Z
DevonSampleUserRoleeeZ m
)eem n
;een o
}ff 	
}gg 
}hh Á,
íC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\AccessCodeRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Data6 :
.: ;
Repositories; G
{ 
public 

class  
AccessCodeRepository %
:& '

Repository( 2
<2 3

AccessCode3 =
>= >
,> ?!
IAccessCodeRepository@ U
{ 
public  
AccessCodeRepository #
(# $

JtqContext$ .
context/ 6
)6 7
:8 9
base: >
(> ?
context? F
)F G
{ 	
} 	
public 
async 
Task 
< 

AccessCode $
>$ %
CreateAccessCode& 6
(6 7
string7 =
	idvisitor> G
,G H
stringI O
idqueueP W
)W X
{ 	
Devon4NetLogger 
. 
Debug !
(! "
$str" `
)` a
;a b
var   
	numticket   
=   
await   
Count    %
(  % &
t  & '
=>  ' )
t  * +
.  + ,
QueueId  , 3
==  3 5
idqueue  5 <
)  < =
.  = >
ConfigureAwait  > L
(  L M
false  M R
)  R S
;  S T
	numticket!! 
++!! 
;!! 
var"" 

AccessCode"" 
="" 
new"" 

AccessCode"" )
("") *
)""* +
;""+ ,

AccessCode## 
.## 
IdaccessCode## #
=### $
Guid##$ (
.##( )
NewGuid##) 0
(##0 1
)##1 2
.##2 3
ToString##3 ;
(##; <
)##< =
;##= >

AccessCode$$ 
.$$ 
TicketNumber$$ #
=$$# $
	numticket$$$ -
.$$- .
ToString$$. 6
($$6 7
)$$7 8
;$$8 9

AccessCode%% 
.%% 
	VisitorId%%  
=%%  !
	idvisitor%%! *
;%%* +

AccessCode&& 
.&& 
QueueId&& 
=&& 
idqueue&& &
;&&& '
return'' 
await'' 
Create'' 
(''  

AccessCode''  *
)''* +
;''+ ,
}(( 	
public// 
async// 
Task// 
<// 
string//  
>//  !
DeleteAccessCode//" 2
(//2 3
string//3 9
idaccesscode//: F
)//F G
{00 	
Devon4NetLogger11 
.11 
Debug11 !
(11! "
$str11" `
)11` a
;11a b
var22 
deleted22 
=22 
await22 
Delete22  &
(22& '
t22( )
=>22* ,
t22- .
.22. /
IdaccessCode22/ ;
==22; =
idaccesscode22= I
)22I J
.22J K
ConfigureAwait22K Y
(22Y Z
false22Z _
)22_ `
;22` a
return44 
idaccesscode44 
;44  
}55 	
public<< 
async<< 
Task<< 
<<< 

AccessCode<< $
><<$ % 
SearchAccessCodebyId<<& :
(<<: ;
string<<; A
idaccesscode<<B N
)<<N O
{== 	
Devon4NetLogger>> 
.>> 
Debug>> !
(>>! "
$str>>" n
)>>n o
;>>o p
return?? 
await?? 
GetFirstOrDefault?? *
(??* +
t??+ ,
=>??, .
t??. /
.??/ 0
IdaccessCode??0 <
==??< >
idaccesscode??> J
)??J K
.??K L
ConfigureAwait??L Z
(??Z [
false??[ `
)??` a
;??a b
}@@ 	
publicHH 
asyncHH 
TaskHH 
<HH 
boolHH 
>HH 
AnyAccessCodeHH  -
(HH- .
stringHH. 4
queueidHH5 <
,HH< =
stringHH> D
	visitoridHHE N
)HHN O
{II 	
Devon4NetLoggerJJ 
.JJ 
DebugJJ !
(JJ! "
$strJJ" ^
)JJ^ _
;JJ_ `
varKK 
checkKK 
=KK 
awaitKK 
GetKK !
(KK! "
tKK" #
=>KK# %
tKK& '
.KK' (
	VisitorIdKK( 1
==KK1 3
queueidKK3 :
&&KK; =
tKK> ?
.KK? @
QueueIdKK@ G
==KKG I
	visitoridKKI R
)KKR S
.KKS T
ConfigureAwaitKKT b
(KKb c
falseKKc h
)KKh i
;KKi j
returnLL 
checkLL 
==LL 
nullLL 
||LL  
checkLL  %
.LL% &
AnyLL& )
(LL) *
)LL* +
;LL+ ,
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
IListOO 
<OO  

AccessCodeOO  *
>OO* +
>OO+ ,$
SearchVisitorAccessCodesOO- E
(OOE F
stringOOF L
	idvisitorOOM V
)OOV W
{PP 	
returnQQ 
awaitQQ 
GetQQ 
(QQ 
tQQ 
=>QQ !
tQQ" #
.QQ# $
	VisitorIdQQ$ -
==QQ- /
	idvisitorQQ/ 8
)QQ8 9
;QQ9 :
}RR 	
}TT 
}UU ‚ 
êC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\EmployeeRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Data6 :
.: ;
Repositories; G
{		 
public 

class 
EmployeeRepository #
:$ %

Repository& 0
<0 1
Employee1 9
>9 :
,: ;
IEmployeeRepository< O
{ 
public 
EmployeeRepository !
(! "
EmployeeContext" 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
} 	
public 
Task 
< 
IList 
< 
Employee "
>" #
># $
GetEmployee% 0
(0 1

Expression1 ;
<; <
Func< @
<@ A
EmployeeA I
,I J
boolK O
>O P
>P Q
	predicateR [
=\ ]
null^ b
)b c
{ 	
Devon4NetLogger 
. 
Debug !
(! "
$str" ]
)] ^
;^ _
return 
Get 
( 
	predicate  
)  !
;! "
}   	
public'' 
Task'' 
<'' 
Employee'' 
>'' 
GetEmployeeById'' -
(''- .
long''. 2
id''3 5
)''5 6
{(( 	
Devon4NetLogger)) 
.)) 
Debug)) !
())! "
$"))" $
$str))$ g
{))g h
id))h j
}))j k
"))k l
)))l m
;))m n
return** 
GetFirstOrDefault** $
(**$ %
t**% &
=>**' )
t*** +
.**+ ,
Id**, .
==**/ 1
id**2 4
)**4 5
;**5 6
}++ 	
public44 
Task44 
<44 
Employee44 
>44 
Create44 $
(44$ %
string44% +
name44, 0
,440 1
string442 8
surName449 @
,44@ A
string44B H
mail44I M
)44M N
{55 	
Devon4NetLogger66 
.66 
Debug66 !
(66! "
$"66" $
$str66$ c
{66c d
name66d h
}66h i
"66i j
)66j k
;66k l
return77 
Create77 
(77 
new77 
Employee77 &
{77& '
Name77' +
=77, -
name77. 2
,772 3
Surname774 ;
=77< =
surName77> E
,77E F
Mail77G K
=77L M
mail77N R
}77R S
)77S T
;77T U
}88 	
public?? 
async?? 
Task?? 
<?? 
long?? 
>?? 
DeleteEmployeeById??  2
(??2 3
long??3 7
id??8 :
)??: ;
{@@ 	
Devon4NetLoggerAA 
.AA 
DebugAA !
(AA! "
$"AA" $
$strAA$ j
{AAj k
idAAk m
}AAm n
"AAn o
)AAo p
;AAp q
varBB 
deletedBB 
=BB 
awaitBB 
DeleteBB  &
(BB& '
tBB' (
=>BB) +
tBB, -
.BB- .
IdBB. 0
==BB1 3
idBB4 6
)BB6 7
.BB7 8
ConfigureAwaitBB8 F
(BBF G
falseBBG L
)BBL M
;BBM N
ifDD 
(DD 
deletedDD 
)DD 
{EE 
returnFF 
idFF 
;FF 
}GG 
throwII 
newII 
ArgumentExceptionII (
(II( )
$"II) +
$strII+ ?
{II? @
idII@ B
}IIB C
$strIIC Y
"IIY Z
)IIZ [
;II[ \
}JJ 	
}KK 
}LL Ü
ãC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\jtqRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Data6 :
.: ;
Repositories; G
{		 
public 

class 
jtqRepository 
:  

Repository! +
<+ ,
Prueba, 2
>2 3
,3 4
IjtqRepository5 C
{ 
public 
jtqRepository 
( 

JtqContext '
context( /
)/ 0
:1 2
base3 7
(7 8
context8 ?
)? @
{ 	
} 	
public 
Task 
< 
IList 
< 
Prueba  
>  !
>! "
	GetPrueba# ,
(, -

Expression- 7
<7 8
Func8 <
<< =
Prueba= C
,C D
boolE I
>I J
>J K
	predicateL U
=V W
nullX \
)\ ]
{ 	
return 
Get 
( 
	predicate  
)  !
;! "
} 	
public%% 
Task%% 
<%% 
Prueba%% 
>%% 
CreatePrueba%% (
(%%( )
string%%) /
name%%0 4
)%%4 5
{&& 	
Devon4NetLogger'' 
.'' 
Debug'' !
(''! "
$"''" $
$str''$ Z
{''Z [
name''[ _
}''_ `
"''` a
)''a b
;''b c
var(( 
prueba(( 
=(( 
new(( 
Prueba(( #
{(($ %
Nombre((% +
=((, -
name((. 2
,((2 3
Id((4 6
=((7 8
Guid((9 =
.((= >
NewGuid((> E
(((E F
)((F G
.((G H
ToString((H P
(((P Q
)((Q R
}((R S
;((S T
return** 
Create** 
(** 
prueba**  
)**  !
;**! "
}++ 	
}-- 
}.. ß%
çC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\QueueRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Data6 :
.: ;
Repositories; G
{ 
public 

class 
QueueRepository  
:! "

Repository# -
<- .
Queue. 3
>3 4
,4 5
IQueueRepository6 F
{ 
public 
QueueRepository 
( 

JtqContext )
context* 1
)1 2
:3 4
base5 9
(9 :
context: A
)A B
{ 	
} 	
public 
async 
Task 
< 
IList 
<  
Queue  %
>% &
>& '
GetActiveQueues( 7
(7 8
)8 9
{ 	
return 
await 
Get 
( 
t 
=> !
t" #
.# $
Active$ *
==* ,
true, 0
)0 1
.1 2
ConfigureAwait2 @
(@ A
falseA F
)F G
;G H
;H I
} 	
public!! 
async!! 
Task!! 
<!! 
Queue!! 
>!!  
CreateQueue!!! ,
(!!, -
string!!- 3
name!!4 8
)!!8 9
{"" 	
var## 
queue## 
=## 
new## 
Queue## !
{$$ 
Idqueue%% 
=%% 
Guid%% 
.%% 
NewGuid%% &
(%%& '
)%%' (
.%%( )
ToString%%) 1
(%%1 2
)%%2 3
,%%3 4
Name&& 
=&& 
name&& 
,&& 
Active'' 
='' 
true'' 
,'' 
CurrentNumber(( 
=(( 
$num((  !
.((! "
ToString((" *
(((* +
)((+ ,
,((, -
MinAttentionTime))  
=))! "
$num))# $
.))$ %
ToString))% -
())- .
))). /
,))/ 0
AttentionTime** 
=** 
$num**  !
.**! "
ToString**" *
(*** +
)**+ ,
,**, -
	Customers++ 
=++ 
$num++ 
},, 
;,, 
return-- 
await-- 
Create-- 
(--  
queue--  %
)--% &
.--& '
ConfigureAwait--' 5
(--5 6
false--6 ;
)--; <
;--< =
}.. 	
public33 
async33 
Task33 
<33 
int33 
?33 
>33 
IncrementCustomers33  2
(332 3
string333 9
idqueue33: A
)33A B
{44 	
var55 
q55 
=55 
await55 
GetFirstOrDefault55 +
(55+ ,
t55, -
=>55. 0
t551 2
.552 3
Idqueue553 :
==55; =
idqueue55> E
)55E F
.55F G
ConfigureAwait55G U
(55U V
false55V [
)55[ \
;55\ ]
q66 
.66 
	Customers66 
++66 
;66 
await77 
Update77 
(77 
q77 
)77 
.77 
ConfigureAwait77 *
(77* +
false77+ 0
)770 1
;771 2
return88 
q88 
.88 
	Customers88 
;88 
}99 	
public>> 
async>> 
Task>> 
<>> 
int>> 
?>> 
>>> 
DecrementCustomers>>  2
(>>2 3
string>>3 9
idqueue>>: A
)>>A B
{?? 	
var@@ 
q@@ 
=@@ 
await@@ 
GetFirstOrDefault@@ +
(@@+ ,
t@@, -
=>@@. 0
t@@1 2
.@@2 3
Idqueue@@3 :
==@@; =
idqueue@@> E
)@@E F
.@@F G
ConfigureAwait@@G U
(@@U V
false@@V [
)@@[ \
;@@\ ]
qAA 
.AA 
	CustomersAA 
--AA 
;AA 
awaitBB 
UpdateBB 
(BB 
qBB 
)BB 
.BB 
ConfigureAwaitBB *
(BB* +
falseBB+ 0
)BB0 1
;BB1 2
returnCC 
qCC 
.CC 
	CustomersCC 
;CC 
}DD 	
}EE 
}FF ô&
åC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\TodoRepository.cs
	namespace		 	
	Devon4Net		
 
.		 
Application		 
.		  
WebAPI		  &
.		& '
Implementation		' 5
.		5 6
Data		6 :
.		: ;
Repositories		; G
{

 
public 

class 
TodoRepository 
:  !

Repository" ,
<, -
Todos- 2
>2 3
,3 4
ITodoRepository5 D
{ 
private  
TodosFluentValidator $
TodosValidator% 3
{4 5
get6 9
;9 :
}; <
public 
TodoRepository 
( 
TodoContext )
context* 1
,1 2 
TodosFluentValidator3 G
todosValidatorH V
)V W
:X Y
baseZ ^
(^ _
context_ f
)f g
{ 	
TodosValidator 
= 
todosValidator +
;+ ,
} 	
public!! 
Task!! 
<!! 
IList!! 
<!! 
Todos!! 
>!!  
>!!  !
GetTodo!!" )
(!!) *

Expression!!* 4
<!!4 5
Func!!5 9
<!!9 :
Todos!!: ?
,!!? @
bool!!A E
>!!E F
>!!F G
	predicate!!H Q
=!!R S
null!!T X
)!!X Y
{"" 	
Devon4NetLogger## 
.## 
Debug## !
(##! "
$str##" R
)##R S
;##S T
return$$ 
Get$$ 
($$ 
	predicate$$  
)$$  !
;$$! "
}%% 	
public,, 
Task,, 
<,, 
Todos,, 
>,, 
GetTodoById,, &
(,,& '
long,,' +
id,,, .
),,. /
{-- 	
Devon4NetLogger.. 
... 
Debug.. !
(..! "
$".." $
$str..$ `
{..` a
id..a c
}..c d
"..d e
)..e f
;..f g
return// 
GetFirstOrDefault// $
(//$ %
t//% &
=>//' )
t//* +
.//+ ,
Id//, .
==/// 1
id//2 4
)//4 5
;//5 6
}00 	
public77 
Task77 
<77 
Todos77 
>77 
Create77 !
(77! "
string77" (
description77) 4
)774 5
{88 	
Devon4NetLogger99 
.99 
Debug99 !
(99! "
$"99" $
$str99$ \
{99\ ]
description99] h
}99h i
"99i j
)99j k
;99k l
var;; 
todo;; 
=;; 
new;; 
Todos;;  
{;;! "
Description;;" -
=;;. /
description;;0 ;
};;; <
;;;< =
var<< 
result<< 
=<< 
TodosValidator<< '
.<<' (
Validate<<( 0
(<<0 1
todo<<1 5
)<<5 6
;<<6 7
if>> 
(>> 
!>> 
result>> 
.>> 
IsValid>> 
)>>  
{?? 
throw@@ 
new@@ 
ArgumentException@@ +
(@@+ ,
$"@@, .
$str@@. V
{@@V W
result@@W ]
.@@] ^
Errors@@^ d
}@@d e
"@@e f
)@@f g
;@@g h
}AA 
returnCC 
CreateCC 
(CC 
todoCC 
)CC 
;CC  
}DD 	
publicKK 
asyncKK 
TaskKK 
<KK 
longKK 
>KK 
DeleteTodoByIdKK  .
(KK. /
longKK/ 3
idKK4 6
)KK6 7
{LL 	
Devon4NetLoggerMM 
.MM 
DebugMM !
(MM! "
$"MM" $
$strMM$ c
{MMc d
idMMd f
}MMf g
"MMg h
)MMh i
;MMi j
varNN 
deletedNN 
=NN 
awaitNN 
DeleteNN  &
(NN& '
tNN' (
=>NN) +
tNN, -
.NN- .
IdNN. 0
==NN1 3
idNN4 6
)NN6 7
.NN7 8
ConfigureAwaitNN8 F
(NNF G
falseNNG L
)NNL M
;NNM N
ifPP 
(PP 
deletedPP 
)PP 
{QQ 
returnRR 
idRR 
;RR 
}SS 
throwUU 
newUU 
ArgumentExceptionUU (
(UU( )
$"UU) +
$strUU+ ;
{UU; <
idUU< >
}UU> ?
$strUU? U
"UUU V
)UUV W
;UUW X
}VV 	
}WW 
}XX Î
èC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Data\Repositories\VisitorRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Data6 :
.: ;
Repositories; G
{ 
public 

class 
VisitorRepository "
:# $

Repository% /
</ 0
Visitor0 7
>7 8
,8 9
IVisitorRepository: L
{ 
public 
VisitorRepository  
(  !

JtqContext! +
context, 3
)3 4
:5 6
base7 ;
(; <
context< C
)C D
{ 	
} 	
public 
Task 
< 
Visitor 
> 
CreateVisitor *
(* +
string+ 1
username2 :
,: ;
string< B
nameC G
,G H
stringI O
passP T
,T U
stringV \
tlf] `
,` a
boolb f
acceptedCommercialg y
,y z
bool{ 
acceptedTerms
Ä ç
)
ç é
{ 	
var   
visitor   
=   
new   
Visitor   #
(  # $
)  $ %
;  % &
visitor!! 
.!! 
	Idvisitor!! 
=!! 
Guid!! "
.!!" #
NewGuid!!# *
(!!* +
)!!+ ,
.!!, -
ToString!!- 5
(!!5 6
)!!6 7
;!!7 8
visitor"" 
."" 
Username"" 
="" 
username"" %
;""% &
visitor## 
.## 
Name## 
=## 
name## 
;## 
visitor$$ 
.$$ 
Password$$ 
=$$ 
pass$$ !
;$$! "
visitor%% 
.%% 
PhoneNumber%% 
=%%  
tlf%%  #
;%%# $
visitor&& 
.&& 
AcceptedCommercial&& &
=&&& '
acceptedCommercial&&' 9
;&&9 :
visitor'' 
.'' 
AcceptedTerms'' !
=''! "
acceptedTerms''" /
;''/ 0
visitor(( 
.(( 
UserType(( 
=(( 
false(( "
;((" #
return** 
Create** 
(** 
visitor** !
)**! "
;**" #
}++ 	
public22 
async22 
Task22 
<22 
bool22 
>22 
Login22  %
(22% &
string22& ,
username22- 5
,225 6
string227 =
pass22> B
)22B C
{33 	
var44 
list44 
=44 
await44 
Get44  
(44  !
t44! "
=>44# %
t44& '
.44' (
Username44( 0
==440 2
username442 :
&&44; =
t44> ?
.44? @
Password44@ H
==44H J
pass44J N
)44N O
.44O P
ConfigureAwait44P ^
(44^ _
false44_ d
)44d e
;44e f
return66 
list66 
!=66 
null66 
&&66 
list66 #
.66# $
Any66$ '
(66' (
)66( )
;66) *
}77 	
}88 
}99 ’
ãC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Database\EmployeeContext.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Database= E
{ 
public		 

class		 
EmployeeContext		  
:		! "
	DbContext		# ,
{

 
public 
EmployeeContext 
( 
DbContextOptions /
</ 0
EmployeeContext0 ?
>? @
optionsA H
)H I
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
Employee %
>% &
Employee' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  
Employee  (
>( )
() *
entity* 0
=>1 3
{   
entity!! 
.!! 
Property!! 
(!!  
e!!  !
=>!!" $
e!!% &
.!!& '
Name!!' +
)!!+ ,
."" 

IsRequired"" 
(""  
)""  !
.## 
HasMaxLength## !
(##! "
$num##" %
)##% &
;##& '
entity$$ 
.$$ 
Property$$ 
($$  
e$$  !
=>$$" $
e$$% &
.$$& '
Surname$$' .
)$$. /
.%% 

IsRequired%% 
(%%  
)%%  !
.&& 
HasMaxLength&& !
(&&! "
$num&&" %
)&&% &
;&&& '
entity'' 
.'' 
Property'' 
(''  
e''  !
=>''" $
e''% &
.''& '
Mail''' +
)''+ ,
.(( 

IsRequired(( 
(((  
)((  !
.)) 
HasMaxLength)) !
())! "
$num))" %
)))% &
;))& '
}** 
)** 
;** 
}++ 	
},, 
}-- çÖ
ÜC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Database\JtqContext.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Database= E
{ 
public		 

partial		 
class		 

JtqContext		 #
:		$ %
	DbContext		& /
{

 
public 

JtqContext 
( 
) 
{ 	
} 	
public 

JtqContext 
( 
DbContextOptions *
<* +

JtqContext+ 5
>5 6
options7 >
)> ?
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 

AccessCode '
>' (
AccessCodes) 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
DbSet 
< 
Prueba #
># $
Pruebas% ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
virtual 
DbSet 
< 
Queue "
>" #
Queues$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
virtual 
DbSet 
< 
Visitor $
>$ %
Visitors& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
UseCollation %
(% &
$str& :
): ;
. 

HasCharSet 
( 
$str %
)% &
;& '
modelBuilder 
. 
Entity 
<  

AccessCode  *
>* +
(+ ,
entity, 2
=>3 5
{ 
entity   
.   
HasKey   
(   
e   
=>    "
e  # $
.  $ %
IdaccessCode  % 1
)  1 2
.!! 
HasName!! 
(!! 
$str!! &
)!!& '
;!!' (
entity## 
.## 
ToTable## 
(## 
$str## +
)##+ ,
;##, -
entity%% 
.%% 

HasCharSet%% !
(%%! "
$str%%" (
)%%( )
.&& 
UseCollation&& !
(&&! "
$str&&" 3
)&&3 4
;&&4 5
entity(( 
.(( 
HasIndex(( 
(((  
e((  !
=>((" $
e((% &
.((& '
	VisitorId((' 0
,((0 1
$str((2 A
)((A B
;((B C
entity** 
.** 
HasIndex** 
(**  
e**  !
=>**" $
e**% &
.**& '
QueueId**' .
,**. /
$str**0 A
)**A B
;**B C
entity,, 
.,, 
Property,, 
(,,  
e,,  !
=>,," $
e,,% &
.,,& '
IdaccessCode,,' 3
),,3 4
.-- 
HasMaxLength-- !
(--! "
$num--" %
)--% &
... 
HasColumnName.. "
(.." #
$str..# 1
)..1 2
;..2 3
entity00 
.00 
Property00 
(00  
e00  !
=>00" $
e00% &
.00& '
CreationTime00' 3
)003 4
.11 
HasMaxLength11 !
(11! "
$num11" %
)11% &
.22 
HasColumnName22 "
(22" #
$str22# 1
)221 2
;222 3
entity44 
.44 
Property44 
(44  
e44  !
=>44" $
e44% &
.44& '
EndTime44' .
)44. /
.55 
HasMaxLength55 !
(55! "
$num55" %
)55% &
.66 
HasColumnName66 "
(66" #
$str66# ,
)66, -
;66- .
entity88 
.88 
Property88 
(88  
e88  !
=>88" $
e88% &
.88& '
QueueId88' .
)88. /
.99 

IsRequired99 
(99  
)99  !
.:: 
HasMaxLength:: !
(::! "
$num::" %
)::% &
.;; 
HasColumnName;; "
(;;" #
$str;;# ,
);;, -
;;;- .
entity== 
.== 
Property== 
(==  
e==  !
=>==" $
e==% &
.==& '
	StartTime==' 0
)==0 1
.>> 
HasMaxLength>> !
(>>! "
$num>>" %
)>>% &
.?? 
HasColumnName?? "
(??" #
$str??# .
)??. /
;??/ 0
entityAA 
.AA 
PropertyAA 
(AA  
eAA  !
=>AA" $
eAA% &
.AA& '
TicketNumberAA' 3
)AA3 4
.BB 

IsRequiredBB 
(BB  
)BB  !
.CC 
HasMaxLengthCC !
(CC! "
$numCC" %
)CC% &
.DD 
HasColumnNameDD "
(DD" #
$strDD# 1
)DD1 2
;DD2 3
entityFF 
.FF 
PropertyFF 
(FF  
eFF  !
=>FF" $
eFF% &
.FF& '
	VisitorIdFF' 0
)FF0 1
.GG 

IsRequiredGG 
(GG  
)GG  !
.HH 
HasMaxLengthHH !
(HH! "
$numHH" %
)HH% &
.II 
HasColumnNameII "
(II" #
$strII# .
)II. /
;II/ 0
entityKK 
.KK 
HasOneKK 
(KK 
dKK 
=>KK  "
dKK# $
.KK$ %
QueueKK% *
)KK* +
.LL 
WithManyLL 
(LL 
pLL 
=>LL  "
pLL# $
.LL$ %
AccessCodesLL% 0
)LL0 1
.MM 
HasForeignKeyMM "
(MM" #
dMM# $
=>MM% '
dMM( )
.MM) *
QueueIdMM* 1
)MM1 2
.NN 
OnDeleteNN 
(NN 
DeleteBehaviorNN ,
.NN, -
ClientSetNullNN- :
)NN: ;
.OO 
HasConstraintNameOO &
(OO& '
$strOO' 8
)OO8 9
;OO9 :
entityQQ 
.QQ 
HasOneQQ 
(QQ 
dQQ 
=>QQ  "
dQQ# $
.QQ$ %
VisitorQQ% ,
)QQ, -
.RR 
WithManyRR 
(RR 
pRR 
=>RR  "
pRR# $
.RR$ %
AccessCodesRR% 0
)RR0 1
.SS 
HasForeignKeySS "
(SS" #
dSS# $
=>SS% '
dSS( )
.SS) *
	VisitorIdSS* 3
)SS3 4
.TT 
OnDeleteTT 
(TT 
DeleteBehaviorTT ,
.TT, -
ClientSetNullTT- :
)TT: ;
.UU 
HasConstraintNameUU &
(UU& '
$strUU' 6
)UU6 7
;UU7 8
}VV 
)VV 
;VV 
modelBuilderXX 
.XX 
EntityXX 
<XX  
PruebaXX  &
>XX& '
(XX' (
entityXX( .
=>XX/ 1
{YY 
entityZZ 
.ZZ 
ToTableZZ 
(ZZ 
$strZZ '
)ZZ' (
;ZZ( )
entity\\ 
.\\ 

HasCharSet\\ !
(\\! "
$str\\" (
)\\( )
.]] 
UseCollation]] !
(]]! "
$str]]" 3
)]]3 4
;]]4 5
entity__ 
.__ 
Property__ 
(__  
e__  !
=>__" $
e__% &
.__& '
Id__' )
)__) *
.`` 
HasMaxLength`` !
(``! "
$num``" %
)``% &
.aa 
HasColumnNameaa "
(aa" #
$straa# '
)aa' (
;aa( )
entitycc 
.cc 
Propertycc 
(cc  
ecc  !
=>cc" $
ecc% &
.cc& '
Nombrecc' -
)cc- .
.cc. /
HasMaxLengthcc/ ;
(cc; <
$numcc< ?
)cc? @
;cc@ A
}dd 
)dd 
;dd 
modelBuilderff 
.ff 
Entityff 
<ff  
Queueff  %
>ff% &
(ff& '
entityff' -
=>ff. 0
{gg 
entityhh 
.hh 
HasKeyhh 
(hh 
ehh 
=>hh  "
ehh# $
.hh$ %
Idqueuehh% ,
)hh, -
.ii 
HasNameii 
(ii 
$strii &
)ii& '
;ii' (
entitykk 
.kk 
ToTablekk 
(kk 
$strkk &
)kk& '
;kk' (
entitymm 
.mm 

HasCharSetmm !
(mm! "
$strmm" (
)mm( )
.nn 
UseCollationnn !
(nn! "
$strnn" 3
)nn3 4
;nn4 5
entitypp 
.pp 
Propertypp 
(pp  
epp  !
=>pp" $
epp% &
.pp& '
Idqueuepp' .
)pp. /
.qq 
HasMaxLengthqq !
(qq! "
$numqq" %
)qq% &
.rr 
HasColumnNamerr "
(rr" #
$strrr# ,
)rr, -
;rr- .
entitytt 
.tt 
Propertytt 
(tt  
ett  !
=>tt" $
ett% &
.tt& '
AttentionTimett' 4
)tt4 5
.uu 
HasMaxLengthuu !
(uu! "
$numuu" %
)uu% &
.vv 
HasColumnNamevv "
(vv" #
$strvv# 2
)vv2 3
;vv3 4
entityxx 
.xx 
Propertyxx 
(xx  
exx  !
=>xx" $
exx% &
.xx& '
CurrentNumberxx' 4
)xx4 5
.yy 
HasMaxLengthyy !
(yy! "
$numyy" %
)yy% &
.zz 
HasColumnNamezz "
(zz" #
$strzz# 2
)zz2 3
.{{ 
HasDefaultValueSql{{ '
({{' (
$str{{( -
){{- .
;{{. /
entity}} 
.}} 
Property}} 
(}}  
e}}  !
=>}}" $
e}}% &
.}}& '
	Customers}}' 0
)}}0 1
.~~ 
HasColumnName~~ "
(~~" #
$str~~# .
)~~. /
. 
HasDefaultValueSql '
(' (
$str( -
)- .
;. /
entity
ÅÅ 
.
ÅÅ 
Property
ÅÅ 
(
ÅÅ  
e
ÅÅ  !
=>
ÅÅ" $
e
ÅÅ% &
.
ÅÅ& '
Logo
ÅÅ' +
)
ÅÅ+ ,
.
ÇÇ 
HasMaxLength
ÇÇ !
(
ÇÇ! "
$num
ÇÇ" %
)
ÇÇ% &
.
ÉÉ 
HasColumnName
ÉÉ "
(
ÉÉ" #
$str
ÉÉ# )
)
ÉÉ) *
;
ÉÉ* +
entity
ÖÖ 
.
ÖÖ 
Property
ÖÖ 
(
ÖÖ  
e
ÖÖ  !
=>
ÖÖ" $
e
ÖÖ% &
.
ÖÖ& '
MinAttentionTime
ÖÖ' 7
)
ÖÖ7 8
.
ÜÜ 
HasMaxLength
ÜÜ !
(
ÜÜ! "
$num
ÜÜ" %
)
ÜÜ% &
.
áá 
HasColumnName
áá "
(
áá" #
$str
áá# 5
)
áá5 6
;
áá6 7
entity
ââ 
.
ââ 
Property
ââ 
(
ââ  
e
ââ  !
=>
ââ" $
e
ââ% &
.
ââ& '
Name
ââ' +
)
ââ+ ,
.
ää 

IsRequired
ää 
(
ää  
)
ää  !
.
ãã 
HasMaxLength
ãã !
(
ãã! "
$num
ãã" %
)
ãã% &
.
åå 
HasColumnName
åå "
(
åå" #
$str
åå# )
)
åå) *
;
åå* +
}
çç 
)
çç 
;
çç 
modelBuilder
èè 
.
èè 
Entity
èè 
<
èè  
Visitor
èè  '
>
èè' (
(
èè( )
entity
èè) /
=>
èè0 2
{
êê 
entity
ëë 
.
ëë 
HasKey
ëë 
(
ëë 
e
ëë 
=>
ëë  "
e
ëë# $
.
ëë$ %
	Idvisitor
ëë% .
)
ëë. /
.
íí 
HasName
íí 
(
íí 
$str
íí &
)
íí& '
;
íí' (
entity
îî 
.
îî 
ToTable
îî 
(
îî 
$str
îî (
)
îî( )
;
îî) *
entity
ññ 
.
ññ 

HasCharSet
ññ !
(
ññ! "
$str
ññ" (
)
ññ( )
.
óó 
UseCollation
óó !
(
óó! "
$str
óó" 3
)
óó3 4
;
óó4 5
entity
ôô 
.
ôô 
Property
ôô 
(
ôô  
e
ôô  !
=>
ôô" $
e
ôô% &
.
ôô& '
	Idvisitor
ôô' 0
)
ôô0 1
.
öö 
HasMaxLength
öö !
(
öö! "
$num
öö" %
)
öö% &
.
õõ 
HasColumnName
õõ "
(
õõ" #
$str
õõ# .
)
õõ. /
;
õõ/ 0
entity
ùù 
.
ùù 
Property
ùù 
(
ùù  
e
ùù  !
=>
ùù" $
e
ùù% &
.
ùù& ' 
AcceptedCommercial
ùù' 9
)
ùù9 :
.
ùù: ;
HasColumnName
ùù; H
(
ùùH I
$str
ùùI ]
)
ùù] ^
;
ùù^ _
entity
üü 
.
üü 
Property
üü 
(
üü  
e
üü  !
=>
üü" $
e
üü% &
.
üü& '
AcceptedTerms
üü' 4
)
üü4 5
.
üü5 6
HasColumnName
üü6 C
(
üüC D
$str
üüD S
)
üüS T
;
üüT U
entity
°° 
.
°° 
Property
°° 
(
°°  
e
°°  !
=>
°°" $
e
°°% &
.
°°& '
Name
°°' +
)
°°+ ,
.
¢¢ 

IsRequired
¢¢ 
(
¢¢  
)
¢¢  !
.
££ 
HasMaxLength
££ !
(
££! "
$num
££" %
)
££% &
.
§§ 
HasColumnName
§§ "
(
§§" #
$str
§§# )
)
§§) *
;
§§* +
entity
¶¶ 
.
¶¶ 
Property
¶¶ 
(
¶¶  
e
¶¶  !
=>
¶¶" $
e
¶¶% &
.
¶¶& '
Password
¶¶' /
)
¶¶/ 0
.
ßß 

IsRequired
ßß 
(
ßß  
)
ßß  !
.
®® 
HasMaxLength
®® !
(
®®! "
$num
®®" %
)
®®% &
.
©© 
HasColumnName
©© "
(
©©" #
$str
©©# -
)
©©- .
;
©©. /
entity
´´ 
.
´´ 
Property
´´ 
(
´´  
e
´´  !
=>
´´" $
e
´´% &
.
´´& '
PhoneNumber
´´' 2
)
´´2 3
.
¨¨ 
HasMaxLength
¨¨ !
(
¨¨! "
$num
¨¨" %
)
¨¨% &
.
≠≠ 
HasColumnName
≠≠ "
(
≠≠" #
$str
≠≠# 0
)
≠≠0 1
;
≠≠1 2
entity
ØØ 
.
ØØ 
Property
ØØ 
(
ØØ  
e
ØØ  !
=>
ØØ" $
e
ØØ% &
.
ØØ& '
UserType
ØØ' /
)
ØØ/ 0
.
ØØ0 1
HasColumnName
ØØ1 >
(
ØØ> ?
$str
ØØ? I
)
ØØI J
;
ØØJ K
entity
±± 
.
±± 
Property
±± 
(
±±  
e
±±  !
=>
±±" $
e
±±% &
.
±±& '
Username
±±' /
)
±±/ 0
.
≤≤ 

IsRequired
≤≤ 
(
≤≤  
)
≤≤  !
.
≥≥ 
HasMaxLength
≥≥ !
(
≥≥! "
$num
≥≥" %
)
≥≥% &
.
¥¥ 
HasColumnName
¥¥ "
(
¥¥" #
$str
¥¥# -
)
¥¥- .
;
¥¥. /
}
µµ 
)
µµ 
;
µµ $
OnModelCreatingPartial
∑∑ "
(
∑∑" #
modelBuilder
∑∑# /
)
∑∑/ 0
;
∑∑0 1
}
∏∏ 	
partial
∫∫ 
void
∫∫ $
OnModelCreatingPartial
∫∫ +
(
∫∫+ ,
ModelBuilder
∫∫, 8
modelBuilder
∫∫9 E
)
∫∫E F
;
∫∫F G
}
ªª 
}ºº ö
áC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Database\TodoContext.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Database= E
{ 
public		 

class		 
TodoContext		 
:		 
	DbContext		 (
{

 
public 
TodoContext 
( 
DbContextOptions +
<+ ,
TodoContext, 7
>7 8
options9 @
)@ A
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
Todos "
>" #
Todos$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  
Todos  %
>% &
(& '
entity' -
=>. 0
{   
entity!! 
.!! 
Property!! 
(!!  
e!!  !
=>!!" $
e!!% &
.!!& '
Description!!' 2
)!!2 3
."" 

IsRequired"" 
(""  
)""  !
.## 
HasMaxLength## !
(##! "
$num##" %
)##% &
;##& '
}$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ≠
ÜC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\AccessCode.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 

AccessCode #
{ 
public 
string 
IdaccessCode "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
TicketNumber		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
string

 
CreationTime

 "
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
string 
	StartTime 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
EndTime 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	VisitorId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
QueueId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
Queue 
Queue "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
Visitor 
Visitor &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ⁄
ÑC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\Employee.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 
Employee !
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Surname 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Mail 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ß
ÇC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\Prueba.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 
Prueba 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public		 
string		 
Nombre		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} ˘
ÅC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\Queue.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 
Queue 
{ 
public 
Queue 
( 
) 
{		 	
AccessCodes

 
=

 
new

 
HashSet

 %
<

% &

AccessCode

& 0
>

0 1
(

1 2
)

2 3
;

3 4
} 	
public 
string 
Idqueue 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Logo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
CurrentNumber #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
AttentionTime #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
MinAttentionTime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
? 
Active 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
	Customers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
ICollection "
<" #

AccessCode# -
>- .
AccessCodes/ :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} æ
ÅC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\Todos.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 
Todos 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Done 
{ 
get 
; 
set  #
;# $
}% &
} 
} î
ÉC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\Entities\Visitor.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< =
Entities= E
{ 
public 

partial 
class 
Visitor  
{ 
public 
Visitor 
( 
) 
{		 	
AccessCodes

 
=

 
new

 
HashSet

 %
<

% &

AccessCode

& 0
>

0 1
(

1 2
)

2 3
;

3 4
} 	
public 
string 
	Idvisitor 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
AcceptedCommercial '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
? 
AcceptedTerms "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
? 
UserType 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
ICollection "
<" #

AccessCode# -
>- .
AccessCodes/ :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} Í
ùC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\IAccessCodeRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public		 

	interface		 !
IAccessCodeRepository		 *
{

 
Task 
< 

AccessCode 
>  
SearchAccessCodebyId -
(- .
String. 4
id5 7
)7 8
;8 9
Task 
< 
string 
> 
DeleteAccessCode %
(% &
String& ,

accesscode- 7
)7 8
;8 9
Task 
< 

AccessCode 
> 
CreateAccessCode )
() *
string* 0
	idvisitor1 :
,: ;
string< B
queueC H
)H I
;I J
Task 
< 
bool 
> 
AnyAccessCode  
(  !
string! '
queueid( /
,/ 0
string1 7
	visitorid8 A
)A B
;B C
Task"" 
<"" 
IList"" 
<"" 

AccessCode"" 
>"" 
>"" $
SearchVisitorAccessCodes""  8
(""8 9
string""9 ?
	idvisitor""@ I
)""I J
;""J K
}## 
}$$ É
õC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\IEmployeeRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public

 

	interface

 
IEmployeeRepository

 (
:

) *
IRepository

+ 6
<

6 7
Employee

7 ?
>

? @
{ 
Task 
< 
IList 
< 
Employee 
> 
> 
GetEmployee )
() *

Expression* 4
<4 5
Func5 9
<9 :
Employee: B
,B C
boolD H
>H I
>I J
	predicateK T
=U V
nullW [
)[ \
;\ ]
Task 
< 
Employee 
> 
GetEmployeeById &
(& '
long' +
id, .
). /
;/ 0
Task!! 
<!! 
Employee!! 
>!! 
Create!! 
(!! 
string!! $
name!!% )
,!!) *
string!!+ 1
surName!!2 9
,!!9 :
string!!; A
mail!!B F
)!!F G
;!!G H
Task(( 
<(( 
long(( 
>(( 
DeleteEmployeeById(( %
(((% &
long((& *
id((+ -
)((- .
;((. /
})) 
}** ß	
ñC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\IjtqRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public

 

	interface

 
IjtqRepository

 #
:

$ %
IRepository

& 1
<

1 2
Prueba

2 8
>

8 9
{ 
Task 
< 
IList 
< 
Prueba 
> 
> 
	GetPrueba %
(% &

Expression& 0
<0 1
Func1 5
<5 6
Prueba6 <
,< =
bool> B
>B C
>C D
	predicateE N
=O P
nullQ U
)U V
;V W
Task 
< 
Prueba 
> 
CreatePrueba !
(! "
string" (
nombre) /
)/ 0
;0 1
} 
} ‰

òC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\IQueueRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public

 

	interface

 
IQueueRepository

 %
:

& '
IRepository

( 3
<

3 4
Queue

4 9
>

9 :
{ 
Task 
< 
IList 
< 
Queue 
> 
> 
GetActiveQueues *
(* +
)+ ,
;, -
Task 
< 
Queue 
> 
CreateQueue 
(  
string  &
name' +
)+ ,
;, -
Task 
< 
int 
? 
> 
IncrementCustomers %
(% &
string& ,
idqueue- 4
)4 5
;5 6
Task"" 
<"" 
int"" 
?"" 
>"" 
DecrementCustomers"" %
(""% &
string""& ,
idqueue""- 4
)""4 5
;""5 6
}## 
}$$ ˙
óC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\ITodoRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public

 

	interface

 
ITodoRepository

 $
:

% &
IRepository

' 2
<

2 3
Todos

3 8
>

8 9
{ 
Task 
< 
IList 
< 
Todos 
> 
> 
GetTodo "
(" #

Expression# -
<- .
Func. 2
<2 3
Todos3 8
,8 9
bool: >
>> ?
>? @
	predicateA J
=K L
nullM Q
)Q R
;R S
Task 
< 
Todos 
> 
GetTodoById 
(  
long  $
id% '
)' (
;( )
Task 
< 
Todos 
> 
Create 
( 
string !
description" -
)- .
;. /
Task&& 
<&& 
long&& 
>&& 
DeleteTodoById&& !
(&&! "
long&&" &
id&&' )
)&&) *
;&&* +
}'' 
}(( ©

öC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Domain\RepositoryInterfaces\IVisitorRepository.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6
Domain6 <
.< = 
RepositoryInterfaces= Q
{ 
public		 

	interface		 
IVisitorRepository		 '
:		( )
IRepository		* 5
<		5 6
Visitor		6 =
>		= >
{

 
Task 
< 
Visitor 
> 
CreateVisitor #
(# $
string$ *
username+ 3
,3 4
string5 ;
name< @
,@ A
stringB H
passI M
,M N
stringO U
tlfV Y
,Y Z
bool[ _
acceptedCommercial` r
,r s
boolt x
acceptedTerms	y Ü
)
Ü á
;
á à
Task 
< 
bool 
> 
Login 
( 
String 
username  (
,( )
String* 0
pass1 5
)5 6
;6 7
} 
} ¡
èC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Exceptions\NullOrWhiteSpaceArgument.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6

Exceptions6 @
{ 
[		 
Serializable		 
]		 
public

 

class

 $
NullOrWhiteSpaceArgument

 )
:

* +
	Exception

, 5
,

5 6
IWebApiException

7 G
{ 
public 
int 

StatusCode 
=>  
StatusCodes! ,
., -
Status400BadRequest- @
;@ A
public 
bool 
ShowMessage 
=>  "
true# '
;' (
public $
NullOrWhiteSpaceArgument '
(' (
)( )
{ 	
} 	
public!! $
NullOrWhiteSpaceArgument!! '
(!!' (
string!!( .
message!!/ 6
)!!6 7
:"" 
base"" 
("" 
message"" 
)"" 
{## 	
}$$ 	
public++ $
NullOrWhiteSpaceArgument++ '
(++' (
string++( .
message++/ 6
,++6 7
	Exception++8 A
innerException++B P
)++P Q
:++R S
base++T X
(++X Y
message++Y `
,++` a
innerException++b p
)++p q
{,, 	
}-- 	
	protected44 $
NullOrWhiteSpaceArgument44 *
(44* +
System44+ 1
.441 2
Runtime442 9
.449 :
Serialization44: G
.44G H
SerializationInfo44H Y
serializationInfo44Z k
,44k l
System44m s
.44s t
Runtime44t {
.44{ |
Serialization	44| â
.
44â ä
StreamingContext
44ä ö
streamingContext
44õ ´
)
44´ ¨
:55 
base55 
(55 
serializationInfo55 $
,55$ %
streamingContext55& 6
)556 7
{66 	
}77 	
}88 
}99 ≤ú
ìC:\Users\fferna14\Documents\PruebaDevon\jtq\Templates\WebAPI\Devon4Net.Application.WebAPI.Implementation\Migrations\20220114112513_InitialCreate.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Implementation' 5
.5 6

Migrations6 @
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
AlterDatabase *
(* +
)+ ,
. 

Annotation 
( 
$str +
,+ ,
$str- 6
)6 7
;7 8
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
ID 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 B
,B C
	maxLengthD M
:M N
$numO R
,R S
nullableT \
:\ ]
false^ c
,c d
	collatione n
:n o
$str	p Å
)
Å Ç
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 ;
); <
,< =
Nombre 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 F
,F G
	maxLengthH Q
:Q R
$numS V
,V W
nullableX `
:` a
trueb f
,f g
	collationh q
:q r
$str	s Ñ
)
Ñ Ö
. 

Annotation #
(# $
$str$ 3
,3 4
$str5 ;
); <
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 0
,0 1
x2 3
=>4 6
x7 8
.8 9
ID9 ;
); <
;< =
} 
) 
. 

Annotation 
( 
$str +
,+ ,
$str- 3
)3 4
. 

Annotation 
( 
$str 2
,2 3
$str4 E
)E F
;F G
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns   
:   
table   
=>   !
new  " %
{!! 
IDQueue"" 
="" 
table"" #
.""# $
Column""$ *
<""* +
string""+ 1
>""1 2
(""2 3
type""3 7
:""7 8
$str""9 G
,""G H
	maxLength""I R
:""R S
$num""T W
,""W X
nullable""Y a
:""a b
false""c h
,""h i
	collation""j s
:""s t
$str	""u Ü
)
""Ü á
.## 

Annotation## #
(### $
$str##$ 3
,##3 4
$str##5 ;
)##; <
,##< =
name$$ 
=$$ 
table$$  
.$$  !
Column$$! '
<$$' (
string$$( .
>$$. /
($$/ 0
type$$0 4
:$$4 5
$str$$6 D
,$$D E
	maxLength$$F O
:$$O P
$num$$Q T
,$$T U
nullable$$V ^
:$$^ _
false$$` e
,$$e f
	collation$$g p
:$$p q
$str	$$r É
)
$$É Ñ
.%% 

Annotation%% #
(%%# $
$str%%$ 3
,%%3 4
$str%%5 ;
)%%; <
,%%< =
logo&& 
=&& 
table&&  
.&&  !
Column&&! '
<&&' (
string&&( .
>&&. /
(&&/ 0
type&&0 4
:&&4 5
$str&&6 D
,&&D E
	maxLength&&F O
:&&O P
$num&&Q T
,&&T U
nullable&&V ^
:&&^ _
true&&` d
,&&d e
	collation&&f o
:&&o p
$str	&&q Ç
)
&&Ç É
.'' 

Annotation'' #
(''# $
$str''$ 3
,''3 4
$str''5 ;
)''; <
,''< =
currentNumber(( !
=((" #
table(($ )
.(() *
Column((* 0
<((0 1
string((1 7
>((7 8
(((8 9
type((9 =
:((= >
$str((? M
,((M N
	maxLength((O X
:((X Y
$num((Z ]
,((] ^
nullable((_ g
:((g h
true((i m
,((m n
defaultValueSql((o ~
:((~ 
$str
((Ä Ö
,
((Ö Ü
	collation
((á ê
:
((ê ë
$str
((í £
)
((£ §
.)) 

Annotation)) #
())# $
$str))$ 3
,))3 4
$str))5 ;
))); <
,))< =
attentionTime** !
=**" #
table**$ )
.**) *
Column*** 0
<**0 1
string**1 7
>**7 8
(**8 9
type**9 =
:**= >
$str**? M
,**M N
	maxLength**O X
:**X Y
$num**Z ]
,**] ^
nullable**_ g
:**g h
true**i m
,**m n
	collation**o x
:**x y
$str	**z ã
)
**ã å
.++ 

Annotation++ #
(++# $
$str++$ 3
,++3 4
$str++5 ;
)++; <
,++< =
minAttentionTime,, $
=,,% &
table,,' ,
.,,, -
Column,,- 3
<,,3 4
string,,4 :
>,,: ;
(,,; <
type,,< @
:,,@ A
$str,,B P
,,,P Q
	maxLength,,R [
:,,[ \
$num,,] `
,,,` a
nullable,,b j
:,,j k
true,,l p
,,,p q
	collation,,r {
:,,{ |
$str	,,} é
)
,,é è
.-- 

Annotation-- #
(--# $
$str--$ 3
,--3 4
$str--5 ;
)--; <
,--< =
Active.. 
=.. 
table.. "
..." #
Column..# )
<..) *
bool..* .
>... /
(../ 0
type..0 4
:..4 5
$str..6 B
,..B C
nullable..D L
:..L M
true..N R
)..R S
,..S T
	customers// 
=// 
table//  %
.//% &
Column//& ,
<//, -
int//- 0
>//0 1
(//1 2
type//2 6
://6 7
$str//8 =
,//= >
nullable//? G
://G H
true//I M
,//M N
defaultValueSql//O ^
://^ _
$str//` e
)//e f
}00 
,00 
constraints11 
:11 
table11 "
=>11# %
{22 
table33 
.33 

PrimaryKey33 $
(33$ %
$str33% .
,33. /
x330 1
=>332 4
x335 6
.336 7
IDQueue337 >
)33> ?
;33? @
}44 
)44 
.55 

Annotation55 
(55 
$str55 +
,55+ ,
$str55- 3
)553 4
.66 

Annotation66 
(66 
$str66 2
,662 3
$str664 E
)66E F
;66F G
migrationBuilder88 
.88 
CreateTable88 (
(88( )
name99 
:99 
$str99 
,99  
columns:: 
::: 
table:: 
=>:: !
new::" %
{;; 
	IDVisitor<< 
=<< 
table<<  %
.<<% &
Column<<& ,
<<<, -
string<<- 3
><<3 4
(<<4 5
type<<5 9
:<<9 :
$str<<; I
,<<I J
	maxLength<<K T
:<<T U
$num<<V Y
,<<Y Z
nullable<<[ c
:<<c d
false<<e j
,<<j k
	collation<<l u
:<<u v
$str	<<w à
)
<<à â
.== 

Annotation== #
(==# $
$str==$ 3
,==3 4
$str==5 ;
)==; <
,==< =
username>> 
=>> 
table>> $
.>>$ %
Column>>% +
<>>+ ,
string>>, 2
>>>2 3
(>>3 4
type>>4 8
:>>8 9
$str>>: H
,>>H I
	maxLength>>J S
:>>S T
$num>>U X
,>>X Y
nullable>>Z b
:>>b c
false>>d i
,>>i j
	collation>>k t
:>>t u
$str	>>v á
)
>>á à
.?? 

Annotation?? #
(??# $
$str??$ 3
,??3 4
$str??5 ;
)??; <
,??< =
name@@ 
=@@ 
table@@  
.@@  !
Column@@! '
<@@' (
string@@( .
>@@. /
(@@/ 0
type@@0 4
:@@4 5
$str@@6 D
,@@D E
	maxLength@@F O
:@@O P
$num@@Q T
,@@T U
nullable@@V ^
:@@^ _
false@@` e
,@@e f
	collation@@g p
:@@p q
$str	@@r É
)
@@É Ñ
.AA 

AnnotationAA #
(AA# $
$strAA$ 3
,AA3 4
$strAA5 ;
)AA; <
,AA< =
passwordBB 
=BB 
tableBB $
.BB$ %
ColumnBB% +
<BB+ ,
stringBB, 2
>BB2 3
(BB3 4
typeBB4 8
:BB8 9
$strBB: H
,BBH I
	maxLengthBBJ S
:BBS T
$numBBU X
,BBX Y
nullableBBZ b
:BBb c
falseBBd i
,BBi j
	collationBBk t
:BBt u
$str	BBv á
)
BBá à
.CC 

AnnotationCC #
(CC# $
$strCC$ 3
,CC3 4
$strCC5 ;
)CC; <
,CC< =
phoneNumberDD 
=DD  !
tableDD" '
.DD' (
ColumnDD( .
<DD. /
stringDD/ 5
>DD5 6
(DD6 7
typeDD7 ;
:DD; <
$strDD= K
,DDK L
	maxLengthDDM V
:DDV W
$numDDX [
,DD[ \
nullableDD] e
:DDe f
trueDDg k
,DDk l
	collationDDm v
:DDv w
$str	DDx â
)
DDâ ä
.EE 

AnnotationEE #
(EE# $
$strEE$ 3
,EE3 4
$strEE5 ;
)EE; <
,EE< =
acceptedCommercialFF &
=FF' (
tableFF) .
.FF. /
ColumnFF/ 5
<FF5 6
boolFF6 :
>FF: ;
(FF; <
typeFF< @
:FF@ A
$strFFB N
,FFN O
nullableFFP X
:FFX Y
trueFFZ ^
)FF^ _
,FF_ `
acceptedTermsGG !
=GG" #
tableGG$ )
.GG) *
ColumnGG* 0
<GG0 1
boolGG1 5
>GG5 6
(GG6 7
typeGG7 ;
:GG; <
$strGG= I
,GGI J
nullableGGK S
:GGS T
trueGGU Y
)GGY Z
,GGZ [
userTypeHH 
=HH 
tableHH $
.HH$ %
ColumnHH% +
<HH+ ,
boolHH, 0
>HH0 1
(HH1 2
typeHH2 6
:HH6 7
$strHH8 D
,HHD E
nullableHHF N
:HHN O
trueHHP T
)HHT U
}II 
,II 
constraintsJJ 
:JJ 
tableJJ "
=>JJ# %
{KK 
tableLL 
.LL 

PrimaryKeyLL $
(LL$ %
$strLL% .
,LL. /
xLL0 1
=>LL2 4
xLL5 6
.LL6 7
	IDVisitorLL7 @
)LL@ A
;LLA B
}MM 
)MM 
.NN 

AnnotationNN 
(NN 
$strNN +
,NN+ ,
$strNN- 3
)NN3 4
.OO 

AnnotationOO 
(OO 
$strOO 2
,OO2 3
$strOO4 E
)OOE F
;OOF G
migrationBuilderQQ 
.QQ 
CreateTableQQ (
(QQ( )
nameRR 
:RR 
$strRR "
,RR" #
columnsSS 
:SS 
tableSS 
=>SS !
newSS" %
{TT 
IDAccessCodeUU  
=UU! "
tableUU# (
.UU( )
ColumnUU) /
<UU/ 0
stringUU0 6
>UU6 7
(UU7 8
typeUU8 <
:UU< =
$strUU> L
,UUL M
	maxLengthUUN W
:UUW X
$numUUY \
,UU\ ]
nullableUU^ f
:UUf g
falseUUh m
,UUm n
	collationUUo x
:UUx y
$str	UUz ã
)
UUã å
.VV 

AnnotationVV #
(VV# $
$strVV$ 3
,VV3 4
$strVV5 ;
)VV; <
,VV< =
ticketNumberWW  
=WW! "
tableWW# (
.WW( )
ColumnWW) /
<WW/ 0
stringWW0 6
>WW6 7
(WW7 8
typeWW8 <
:WW< =
$strWW> L
,WWL M
	maxLengthWWN W
:WWW X
$numWWY \
,WW\ ]
nullableWW^ f
:WWf g
falseWWh m
,WWm n
	collationWWo x
:WWx y
$str	WWz ã
)
WWã å
.XX 

AnnotationXX #
(XX# $
$strXX$ 3
,XX3 4
$strXX5 ;
)XX; <
,XX< =
creationTimeYY  
=YY! "
tableYY# (
.YY( )
ColumnYY) /
<YY/ 0
stringYY0 6
>YY6 7
(YY7 8
typeYY8 <
:YY< =
$strYY> L
,YYL M
	maxLengthYYN W
:YYW X
$numYYY \
,YY\ ]
nullableYY^ f
:YYf g
trueYYh l
,YYl m
	collationYYn w
:YYw x
$str	YYy ä
)
YYä ã
.ZZ 

AnnotationZZ #
(ZZ# $
$strZZ$ 3
,ZZ3 4
$strZZ5 ;
)ZZ; <
,ZZ< =
	startTime[[ 
=[[ 
table[[  %
.[[% &
Column[[& ,
<[[, -
string[[- 3
>[[3 4
([[4 5
type[[5 9
:[[9 :
$str[[; I
,[[I J
	maxLength[[K T
:[[T U
$num[[V Y
,[[Y Z
nullable[[[ c
:[[c d
true[[e i
,[[i j
	collation[[k t
:[[t u
$str	[[v á
)
[[á à
.\\ 

Annotation\\ #
(\\# $
$str\\$ 3
,\\3 4
$str\\5 ;
)\\; <
,\\< =
endTime]] 
=]] 
table]] #
.]]# $
Column]]$ *
<]]* +
string]]+ 1
>]]1 2
(]]2 3
type]]3 7
:]]7 8
$str]]9 G
,]]G H
	maxLength]]I R
:]]R S
$num]]T W
,]]W X
nullable]]Y a
:]]a b
true]]c g
,]]g h
	collation]]i r
:]]r s
$str	]]t Ö
)
]]Ö Ü
.^^ 

Annotation^^ #
(^^# $
$str^^$ 3
,^^3 4
$str^^5 ;
)^^; <
,^^< =
	visitorID__ 
=__ 
table__  %
.__% &
Column__& ,
<__, -
string__- 3
>__3 4
(__4 5
type__5 9
:__9 :
$str__; I
,__I J
	maxLength__K T
:__T U
$num__V Y
,__Y Z
nullable__[ c
:__c d
false__e j
,__j k
	collation__l u
:__u v
$str	__w à
)
__à â
.`` 

Annotation`` #
(``# $
$str``$ 3
,``3 4
$str``5 ;
)``; <
,``< =
queueIDaa 
=aa 
tableaa #
.aa# $
Columnaa$ *
<aa* +
stringaa+ 1
>aa1 2
(aa2 3
typeaa3 7
:aa7 8
$straa9 G
,aaG H
	maxLengthaaI R
:aaR S
$numaaT W
,aaW X
nullableaaY a
:aaa b
falseaac h
,aah i
	collationaaj s
:aas t
$str	aau Ü
)
aaÜ á
.bb 

Annotationbb #
(bb# $
$strbb$ 3
,bb3 4
$strbb5 ;
)bb; <
}cc 
,cc 
constraintsdd 
:dd 
tabledd "
=>dd# %
{ee 
tableff 
.ff 

PrimaryKeyff $
(ff$ %
$strff% .
,ff. /
xff0 1
=>ff2 4
xff5 6
.ff6 7
IDAccessCodeff7 C
)ffC D
;ffD E
tablegg 
.gg 

ForeignKeygg $
(gg$ %
namehh 
:hh 
$strhh -
,hh- .
columnii 
:ii 
xii  !
=>ii" $
xii% &
.ii& '
	visitorIDii' 0
,ii0 1
principalTablejj &
:jj& '
$strjj( 1
,jj1 2
principalColumnkk '
:kk' (
$strkk) 4
)kk4 5
;kk5 6
tablell 
.ll 

ForeignKeyll $
(ll$ %
namemm 
:mm 
$strmm /
,mm/ 0
columnnn 
:nn 
xnn  !
=>nn" $
xnn% &
.nn& '
queueIDnn' .
,nn. /
principalTableoo &
:oo& '
$stroo( /
,oo/ 0
principalColumnpp '
:pp' (
$strpp) 2
)pp2 3
;pp3 4
}qq 
)qq 
.rr 

Annotationrr 
(rr 
$strrr +
,rr+ ,
$strrr- 3
)rr3 4
.ss 

Annotationss 
(ss 
$strss 2
,ss2 3
$strss4 E
)ssE F
;ssF G
migrationBuilderuu 
.uu 
CreateIndexuu (
(uu( )
namevv 
:vv 
$strvv %
,vv% &
tableww 
:ww 
$strww #
,ww# $
columnxx 
:xx 
$strxx #
)xx# $
;xx$ %
migrationBuilderzz 
.zz 
CreateIndexzz (
(zz( )
name{{ 
:{{ 
$str{{ '
,{{' (
table|| 
:|| 
$str|| #
,||# $
column}} 
:}} 
$str}} !
)}}! "
;}}" #
}~~ 	
	protected
ÄÄ 
override
ÄÄ 
void
ÄÄ 
Down
ÄÄ  $
(
ÄÄ$ %
MigrationBuilder
ÄÄ% 5
migrationBuilder
ÄÄ6 F
)
ÄÄF G
{
ÅÅ 	
migrationBuilder
ÇÇ 
.
ÇÇ 
	DropTable
ÇÇ &
(
ÇÇ& '
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ "
)
ÉÉ" #
;
ÉÉ# $
migrationBuilder
ÖÖ 
.
ÖÖ 
	DropTable
ÖÖ &
(
ÖÖ& '
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ 
)
ÜÜ 
;
ÜÜ  
migrationBuilder
àà 
.
àà 
	DropTable
àà &
(
àà& '
name
ââ 
:
ââ 
$str
ââ 
)
ââ  
;
ââ  !
migrationBuilder
ãã 
.
ãã 
	DropTable
ãã &
(
ãã& '
name
åå 
:
åå 
$str
åå 
)
åå 
;
åå 
}
çç 	
}
éé 
}èè 