�
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\Attribute\AopController.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public 

class 
AopController 
{ 
public 
string 
ControllerName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ControllerMethod &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ActionArguments %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 ��
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\Attribute\AopControllerAttribute.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public		 

class		 "
AopControllerAttribute		 '
:		( )!
ActionFilterAttribute		* ?
{

 
private 
bool 
UseAopObjectTrace &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public "
AopControllerAttribute %
(% &
bool& *
useAop+ 1
)1 2
{ 	
UseAopObjectTrace 
= 
useAop  &
;& '
} 	
public "
AopControllerAttribute %
(% &
)& '
{ 	
} 	
public 
override 
void 
OnActionExecuting .
(. /"
ActionExecutingContext/ E
contextF M
)M N
{ 	
try 
{ 
var 
controllerValues $
=% &#
GetControllerProperties' >
(> ?
(? @
	Microsoft@ I
.I J

AspNetCoreJ T
.T U
MvcU X
.X Y
ControllersY d
.d e&
ControllerActionDescriptore 
)	 �
context
� �
.
� �
ActionDescriptor
� �
,
� �
context
� �
.
� �
ActionArguments
� �
)
� �
;
� �
LogEvent 
( 
$str ,
,, -
$". 0
$str0 <
{< =
controllerValues= M
.M N
ControllerNameN \
}\ ]
$str] h
{h i
controllerValuesi y
.y z
ControllerMethod	z �
}
� �
$str
� �
{
� �
controllerValues
� �
.
� �
ActionArguments
� �
}
� �
"
� �
)
� �
;
� �
base 
. 
OnActionExecuting &
(& '
context' .
). /
;/ 0
} 
catch 
( 
	Exception 
ex 
)  
{ 
Devon4NetLogger   
.    
Error    %
(  % &
ex  & (
)  ( )
;  ) *
throw!! 
;!! 
}"" 
}## 	
public%% 
override%% 
void%% 
OnActionExecuted%% -
(%%- .!
ActionExecutedContext%%. C
context%%D K
)%%K L
{&& 	
try'' 
{(( 
if)) 
()) 
context)) 
.)) 
Result)) "
!=))" $
null))$ (
)))( )
LogEvent))* 2
())2 3
$str))3 E
,))E F
context))G N
.))N O
Result))O U
as))V X
	Microsoft))Y b
.))b c

AspNetCore))c m
.))m n
Mvc))n q
.))q r
ObjectResult))r ~
)))~ 
;	)) �
base** 
.** 
OnActionExecuted** %
(**% &
context**& -
)**- .
;**. /
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
Devon4NetLogger.. 
...  
Error..  %
(..% &
ex..& (
)..( )
;..) *
throw// 
;// 
}00 
}11 	
public33 
override33 
void33 
OnResultExecuting33 .
(33. /"
ResultExecutingContext33/ E
context33F M
)33M N
{44 	
try55 
{66 
base77 
.77 
OnResultExecuting77 &
(77& '
context77' .
)77. /
;77/ 0
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
Devon4NetLogger;; 
.;;  
Error;;  %
(;;% &
ex;;& (
);;( )
;;;) *
throw<< 
;<< 
}== 
}>> 	
public@@ 
override@@ 
void@@ 
OnResultExecuted@@ -
(@@- .!
ResultExecutedContext@@. C
context@@D K
)@@K L
{AA 	
tryBB 
{CC 
ifDD 
(DD 
contextDD 
.DD 
ResultDD "
!=DD# %
nullDD& *
)DD* +
LogEventDD, 4
(DD4 5
$strDD5 G
,DDG H
contextDDI P
.DDP Q
ResultDDQ W
asDDX Z
	MicrosoftDD[ d
.DDd e

AspNetCoreDDe o
.DDo p
MvcDDp s
.DDs t
ObjectResult	DDt �
)
DD� �
;
DD� �
baseEE 
.EE 
OnResultExecutedEE %
(EE% &
contextEE& -
)EE- .
;EE. /
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 
Devon4NetLoggerII 
.II  
ErrorII  %
(II% &
exII& (
)II( )
;II) *
throwJJ 
;JJ 
}KK 
}LL 	
publicNN 
overrideNN 
asyncNN 
TaskNN ""
OnActionExecutionAsyncNN# 9
(NN9 :"
ActionExecutingContextNN: P
contextNNQ X
,NNX Y#
ActionExecutionDelegateNNZ q
nextNNr v
)NNv w
{OO 	
tryPP 
{QQ 
varRR 
controllerValuesRR $
=RR% &#
GetControllerPropertiesRR' >
(RR> ?
(RR? @
	MicrosoftRR@ I
.RRI J

AspNetCoreRRJ T
.RRT U
MvcRRU X
.RRX Y
ControllersRRY d
.RRd e&
ControllerActionDescriptorRRe 
)	RR �
context
RR� �
.
RR� �
ActionDescriptor
RR� �
,
RR� �
context
RR� �
.
RR� �
ActionArguments
RR� �
)
RR� �
;
RR� �
LogEventSS 
(SS 
$strSS 1
,SS1 2
$"SS3 5
$strSS5 A
{SSA B
controllerValuesSSB R
.SSR S
ControllerNameSSS a
}SSa b
$strSSb m
{SSm n
controllerValuesSSn ~
.SS~ 
ControllerMethod	SS �
}
SS� �
$str
SS� �
{
SS� �
controllerValues
SS� �
.
SS� �
ActionArguments
SS� �
}
SS� �
"
SS� �
)
SS� �
;
SS� �
awaitUU 
baseUU 
.UU "
OnActionExecutionAsyncUU 1
(UU1 2
contextUU2 9
,UU9 :
nextUU; ?
)UU? @
.UU@ A
ConfigureAwaitUUA O
(UUO P
falseUUP U
)UUU V
;UUV W
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
Devon4NetLoggerYY 
.YY  
ErrorYY  %
(YY% &
exYY& (
)YY( )
;YY) *
throwZZ 
;ZZ 
}[[ 
}\\ 	
public^^ 
override^^ 
Task^^ "
OnResultExecutionAsync^^ 3
(^^3 4"
ResultExecutingContext^^4 J
context^^K R
,^^R S#
ResultExecutionDelegate^^T k
next^^l p
)^^p q
{__ 	
try`` 
{aa 
ifbb 
(bb 
contextbb 
.bb 
Resultbb "
!=bb# %
nullbb& *
)bb* +
LogEventbb, 4
(bb4 5
$strbb5 M
,bbM N
contextbbO V
.bbV W
ResultbbW ]
asbb^ `
	Microsoftbba j
.bbj k

AspNetCorebbk u
.bbu v
Mvcbbv y
.bby z
ObjectResult	bbz �
)
bb� �
;
bb� �
returncc 
basecc 
.cc "
OnResultExecutionAsynccc 2
(cc2 3
contextcc3 :
,cc: ;
nextcc< @
)cc@ A
;ccA B
}dd 
catchee 
(ee 
	Exceptionee 
exee 
)ee  
{ff 
Devon4NetLoggergg 
.gg  
Errorgg  %
(gg% &
exgg& (
)gg( )
;gg) *
throwhh 
;hh 
}ii 
}jj 	
privatell 
staticll 
voidll 
LogEventll $
(ll$ %
stringll% +
methodll, 2
,ll2 3
	Microsoftll4 =
.ll= >

AspNetCorell> H
.llH I
MvcllI L
.llL M
ObjectResultllM Y
resultllZ `
)ll` a
{mm 	
Devon4NetLoggernn 
.nn 
Informationnn '
(nn' (
$"nn( *
$strnn* 6
{nn6 7
methodnn7 =
}nn= >
$strnn> @
{nn@ A
resultnnA G
.nnG H

StatusCodennH R
}nnR S
$strnnS ]
{nn] ^
GetValuenn^ f
(nnf g
resultnng m
.nnm n
Valuennn s
)nns t
}nnt u
"nnu v
)nnv w
;nnw x
}oo 	
privateqq 
staticqq 
voidqq 
LogEventqq $
(qq$ %
stringqq% +
methodqq, 2
,qq2 3
stringqq4 :
resultqq; A
)qqA B
{rr 	
Devon4NetLoggerss 
.ss 
Informationss '
(ss' (
$"ss( *
$strss* 6
{ss6 7
methodss7 =
}ss= >
$strss> @
{ss@ A
resultssA G
}ssG H
"ssH I
)ssI J
;ssJ K
}tt 	
privatevv 
staticvv 
stringvv 
GetValuevv &
(vv& '
objectvv' -
toPrintvv. 5
)vv5 6
{ww 	
varxx 
resultxx 
=xx 
stringxx 
.xx  
Emptyxx  %
;xx% &
tryyy 
{zz 
result{{ 
={{ 
JsonSerializer{{ '
.{{' (
	Serialize{{( 1
({{1 2
toPrint{{2 9
){{9 :
;{{: ;
}|| 
catch}} 
(}} 
	Exception}} 
ex}} 
)}}  
{~~ 
Devon4NetLogger 
.  
Error  %
(% &
$"& (
$str( s
{s t
ext v
.v w
Messagew ~
}~ 
$str	 �
{
� �
ex
� �
.
� �
InnerException
� �
}
� �
$str
� �
"
� �
)
� �
;
� �
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
string
�� 
PrettyPrint
�� "
(
��" #
object
��# )
toPrint
��* 1
,
��1 2
string
��3 9
	paramName
��: C
=
��D E
$str
��F H
,
��H I
string
��J P
	separator
��Q Z
=
��[ \
$str
��] a
,
��a b
string
��c i
prefix
��j p
=
��q r
$str
��s u
)
��u v
{
�� 	
var
�� 
sb
�� 
=
�� 
new
�� 
StringBuilder
�� &
(
��& '
string
��' -
.
��- .
IsNullOrEmpty
��. ;
(
��; <
	paramName
��< E
)
��E F
?
��G H
string
��I O
.
��O P
Empty
��P U
:
��V W
prefix
��X ^
+
��_ `
	paramName
��a j
+
��k l
$str
��m q
)
��q r
;
��r s
if
�� 
(
�� 
toPrint
�� 
==
�� 
null
�� 
)
��  
{
�� 
return
�� 
sb
�� 
.
�� 
ToString
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
var
�� 

properties
�� 
=
�� 
toPrint
�� $
.
��$ %
GetType
��% ,
(
��, -
)
��- .
.
��. /
GetProperties
��/ <
(
��< =
BindingFlags
��= I
.
��I J
Instance
��J R
|
��S T
BindingFlags
��U a
.
��a b
Public
��b h
|
��i j
BindingFlags
��k w
.
��w x
FlattenHierarchy��x �
)��� �
;��� �
if
�� 
(
�� 

properties
�� 
.
�� 
Length
�� !
==
��" $
$num
��% &
||
��' )
IsBasic
��* 1
(
��1 2
toPrint
��2 9
)
��9 :
)
��: ;
{
�� 
sb
�� 
.
�� 
AppendFormat
�� 
(
��  
prefix
��  &
+
��' (
toPrint
��) 0
+
��1 2
	separator
��3 <
)
��< =
;
��= >
}
�� 
else
�� 
if
�� 
(
�� 
IsEnumerable
�� !
(
��! "
toPrint
��" )
)
��) *
)
��* +
{
�� 
var
�� 
valueToPrint
��  
=
��! "
	separator
��# ,
;
��, -
var
�� 
values
�� 
=
�� 
(
�� 
IEnumerable
�� )
)
��) *
toPrint
��* 1
;
��1 2
valueToPrint
�� 
=
�� 
values
�� %
.
��% &
Cast
��& *
<
��* +
object
��+ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
	Aggregate
��5 >
(
��> ?
valueToPrint
��? K
,
��K L
(
��M N
current
��N U
,
��U V
o
��W X
)
��X Y
=>
��Z \
current
��] d
+
��e f
(
��g h
PrettyPrint
��h s
(
��s t
o
��t u
,
��u v
	separator��w �
:��� �
$str��� �
,��� �
prefix��� �
:��� �
prefix��� �
+��� �
$str��� �
)��� �
)��� �
)��� �
;��� �
sb
�� 
.
�� 
AppendFormat
�� 
(
��  
valueToPrint
��  ,
)
��, -
;
��- .
}
�� 
else
�� 
{
�� 
foreach
�� 
(
�� 
PropertyInfo
�� %
info
��& *
in
��+ -

properties
��. 8
.
��8 9
Where
��9 >
(
��> ?
info
��? C
=>
��D F
info
��G K
.
��K L
PropertyType
��L X
.
��X Y
	Namespace
��Y b
!=
��c e
null
��f j
&&
��k m
(
��n o
info
��o s
.
��s t
Name
��t x
!=
��y {
$str��| �
)��� �
)��� �
)��� �
{
�� 
sb
�� 
.
�� 
AppendFormat
�� #
(
��# $
$str
��$ /
,
��/ 0
prefix
��1 7
,
��7 8
PrettyPrint
��9 D
(
��D E
info
��E I
.
��I J
GetValue
��J R
(
��R S
toPrint
��S Z
,
��Z [
null
��\ `
)
��` a
,
��a b
info
��c g
.
��g h
Name
��h l
,
��l m
string
��n t
.
��t u
Empty
��u z
,
��z {
prefix��| �
)��� �
,��� �
$str��� �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
sb
�� 
.
�� 
ToString
�� 
(
�� 
)
��  
;
��  !
}
�� 	
private
�� 
static
�� 
bool
�� 
IsBasic
�� #
(
��# $
object
��$ *
toPrint
��+ 2
)
��2 3
{
�� 	
return
�� 
toPrint
�� 
.
�� 
GetType
�� "
(
��" #
)
��# $
.
��$ %
IsPrimitive
��% 0
||
��1 3
toPrint
��4 ;
is
��< >
DateTime
��? G
||
��H J
toPrint
��K R
is
��S U
string
��V \
;
��\ ]
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEnumerable
�� (
(
��( )
Object
��) /
obj
��0 3
)
��3 4
{
�� 	
return
�� 
obj
�� 
.
�� 
GetType
�� 
(
�� 
)
��  
.
��  !
IsGenericType
��! .
&&
��/ 1
obj
��2 5
.
��5 6
GetType
��6 =
(
��= >
)
��> ?
.
��? @
GetInterfaces
��@ M
(
��M N
)
��N O
.
��O P
Any
��P S
(
��S T
iface
��T Y
=>
��Z \
iface
��] b
.
��b c&
GetGenericTypeDefinition
��c {
(
��{ |
)
��| }
==��~ �
typeof��� �
(��� �
IEnumerable��� �
<��� �
>��� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
AopController
�� %
GetControllerProperties
�� 5
(
��5 6
	Microsoft
��6 ?
.
��? @

AspNetCore
��@ J
.
��J K
Mvc
��K N
.
��N O
Controllers
��O Z
.
��Z [(
ControllerActionDescriptor
��[ u
actionDescriptor��v �
,��� �
IDictionary��� �
<��� �
string��� �
,��� �
object��� �
>��� �
actionArguments��� �
)��� �
{
�� 	
return
�� 
new
�� 
AopController
�� $
{
��% &
ControllerName
�� 
=
��  
actionDescriptor
��! 1
.
��1 2
ControllerName
��2 @
,
��@ A
ControllerMethod
��  
=
��! "
actionDescriptor
��# 3
.
��3 4

MethodInfo
��4 >
.
��> ?
Name
��? C
,
��C D
ActionArguments
�� 
=
��  !
UseAopObjectTrace
��" 3
?
��4 5
PrettyPrint
��6 A
(
��A B
actionArguments
��B Q
)
��Q R
:
��S T
$str
��U q
}
�� 
;
�� 
}
�� 	
}
�� 
}�� �
|C:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\Attribute\AopExceptionFilterAttribute.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public 

class '
AopExceptionFilterAttribute ,
:- .$
ExceptionFilterAttribute/ G
{ 
public 
override 
void 
OnException (
(( )
ExceptionContext) 9
context: A
)A B
{ 	
	Devon4Net		 
.		 
Infrastructure		 $
.		$ %
Log		% (
.		( )
Devon4NetLogger		) 8
.		8 9
Error		9 >
(		> ?
context		? F
.		F G
	Exception		G P
)		P Q
;		Q R
base

 
.

 
OnException

 
(

 
context

 $
)

$ %
;

% &
} 	
public 
override 
Task 
OnExceptionAsync -
(- .
ExceptionContext. >
context? F
)F G
{ 	
	Devon4Net 
. 
Infrastructure $
.$ %
Log% (
.( )
Devon4NetLogger) 8
.8 9
Error9 >
(> ?
context? F
.F G
	ExceptionG P
)P Q
;Q R
return 
base 
. 
OnExceptionAsync (
(( )
context) 0
)0 1
;1 2
} 	
} 
} �i
gC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\LogConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class 
LogConfiguration (
{ 
private 
const 
string 
DefaultLogFile +
=, -
$str. ;
;; <
private 
const 
string 
DefaultSqliteFile .
=/ 0
$str1 H
;H I
private 
static 
LoggerConfiguration *
LoggerConfiguration+ >
{? @
getA D
;D E
setF I
;I J
}K L
public 
static 
void 
SetupLog #
(# $
this$ (
IServiceCollection) ;
services< D
,D E
IConfigurationF T
configurationU b
)b c
{ 	
var 

logOptions 
= 
services %
.% &
GetTypedOptions& 5
<5 6

LogOptions6 @
>@ A
(A B
configurationB O
,O P
$strQ Z
)Z [
;[ \
if 
( 

logOptions 
== 
null "
)" #
return$ *
;* +
using 
var 
serviceProvider %
=& '
services( 0
.0 1 
BuildServiceProvider1 E
(E F
)F G
;G H
ConfigureLog 
( 

logOptions #
)# $
;$ %
if 
( 

logOptions 
. 
UseAOPTrace &
)& '
{ 
SetupLogAop 
( 
ref 
services  (
,( )

logOptions* 4
)4 5
;5 6
}   
if"" 
("" 

logOptions"" 
."" 

UseGraylog"" %
&&""& (

logOptions"") 3
.""3 4
GrayLog""4 ;
!=""< >
null""? C
)""C D
{## 
SetupGraylog$$ 
($$ 

logOptions$$ '
.$$' (
GrayLog$$( /
)$$/ 0
;$$0 1
}%% 
serviceProvider'' 
.'' 

GetService'' &
<''& '
ILoggerFactory''' 5
>''5 6
(''6 7
)''7 8
.''8 9

AddSerilog''9 C
(''C D
)''D E
;''E F
}(( 	
private** 
static** 
void** 
SetupLogAop** '
(**' (
ref**( +
IServiceCollection**, >
services**? G
,**G H

LogOptions**I S

logOptions**T ^
)**^ _
{++ 	
services,, 
.,, 
AddTransient,, !
<,,! ""
AopControllerAttribute,," 8
>,,8 9
(,,9 :
),,: ;
;,,; <
services-- 
.-- 
AddTransient-- !
<--! "'
AopExceptionFilterAttribute--" =
>--= >
(--> ?
)--? @
;--@ A
services// 
.// 
AddMvc// 
(// 
options// #
=>//$ &
{00 
options11 
.11 
Filters11 
.11  
Add11  #
(11# $
new11$ '"
AopControllerAttribute11( >
(11> ?

logOptions11? I
.11I J
UseAOPTrace11J U
)11U V
)11V W
;11W X
}22 
)22 
;22 
services44 
.44 
AddMvc44 
(44 
options44 #
=>44$ &
{55 
options66 
.66 
Filters66 
.66  
Add66  #
(66# $
new66$ ''
AopExceptionFilterAttribute66( C
(66C D
)66D E
)66E F
;66F G
}77 
)77 
;77 
}88 	
public:: 
static:: 
void:: 
ConfigureLog:: '
(::' (

LogOptions::( 2

logOptions::3 =
)::= >
{;; 	
LoggerConfiguration<< 
=<<  !
new<<" %
LoggerConfiguration<<& 9
(<<9 :
)<<: ;
.<<; <
Enrich<<< B
.<<B C
FromLogContext<<C Q
(<<Q R
)<<R S
.<<S T
WriteTo<<T [
.<<[ \
Console<<\ c
(<<c d
)<<d e
;<<e f
if>> 
(>> 

logOptions>> 
.>> 

UseLogFile>> %
)>>% &
{?? 
var@@ 
logFile@@ 
=@@ 

logOptions@@ (
.@@( )
LogFile@@) 0
!=@@1 3
null@@4 8
?@@9 :
string@@; A
.@@A B
Format@@B H
(@@H I

logOptions@@I S
.@@S T
LogFile@@T [
,@@[ \
DateTime@@] e
.@@e f
Today@@f k
.@@k l
ToShortDateString@@l }
(@@} ~
)@@~ 
.	@@ �
Replace
@@� �
(
@@� �
$str
@@� �
,
@@� �
string
@@� �
.
@@� �
Empty
@@� �
)
@@� �
)
@@� �
:
@@� �
DefaultLogFile
@@� �
;
@@� �
LoggerConfigurationAA #
=AA$ %
LoggerConfigurationAA& 9
.AA9 :
WriteToAA: A
.AAA B
FileAAB F
(AAF G
GetValidPathAAG S
(AAS T
logFileAAT [
,AA[ \
DefaultLogFileAA] k
)AAk l
)AAl m
;AAm n
}BB 
ifDD 
(DD 
!DD 
stringDD 
.DD 
IsNullOrEmptyDD %
(DD% &

logOptionsDD& 0
.DD0 1
SeqLogServerHostDD1 A
)DDA B
)DDB C
{EE 
LoggerConfigurationFF #
=FF$ %
LoggerConfigurationFF& 9
.FF9 :
WriteToFF: A
.FFA B
SeqFFB E
(FFE F

logOptionsFFF P
.FFP Q
SeqLogServerHostFFQ a
)FFa b
;FFb c
}GG 
ifII 
(II 

logOptionsII 
.II 
UseSQLiteDbII &
&&II' )
!II* +
stringII+ 1
.II1 2
IsNullOrEmptyII2 ?
(II? @

logOptionsII@ J
.IIJ K
SqliteDatabaseIIK Y
)IIY Z
)IIZ [
{JJ 
LoggerConfigurationKK #
=KK$ %
LoggerConfigurationKK& 9
.KK9 :
WriteToKK: A
.KKA B
SQLiteKKB H
(KKH I
GetValidPathKKI U
(KKU V

logOptionsKKV `
.KK` a
SqliteDatabaseKKa o
,KKo p
DefaultSqliteFile	KKq �
)
KK� �
)
KK� �
;
KK� �
}LL 
SetLogLevelNN 
(NN 

logOptionsNN "
.NN" #
LogLevelNN# +
.NN+ ,
DefaultNN, 3
,NN3 4
LoggerConfigurationNN5 H
)NNH I
;NNI J
LogPP 
.PP 
LoggerPP 
=PP 
LoggerConfigurationPP ,
.PP, -
CreateLoggerPP- 9
(PP9 :
)PP: ;
;PP; <
}QQ 	
privateSS 
staticSS 
voidSS 
SetupGraylogSS (
(SS( )
GraylogOptionsSS) 7
graylogOptionsSS8 F
)SSF G
{TT 	
ifUU 
(UU 
graylogOptionsUU 
==UU !
nullUU" &
)UU& '
returnUU( .
;UU. /
varVV 
graylogConfigVV 
=VV 
newVV  #$
GraylogSinkConfigurationVV$ <
{WW  
GraylogTransportTypeXX $
=XX% &-
!GetGraylogTransportTypeFromStringXX' H
(XXH I
graylogOptionsXXI W
.XXW X
GrayLogProtocolXXX g
)XXg h
,XXh i
HostYY 
=YY 
graylogOptionsYY %
.YY% &
GrayLogHostYY& 1
,YY1 2
PortZZ 
=ZZ 
graylogOptionsZZ %
.ZZ% &
GrayLogPortZZ& 1
,ZZ1 2
UseSecureConnection[[ #
=[[$ %
graylogOptions[[& 4
.[[4 5
UseSecureConnection[[5 H
,[[H I
UseAsyncLogging\\ 
=\\  !
graylogOptions\\" 0
.\\0 1
UseAsyncLogging\\1 @
,\\@ A

RetryCount]] 
=]] 
graylogOptions]] +
.]]+ ,

RetryCount]], 6
,]]6 7
RetryIntervalMs^^ 
=^^  !
graylogOptions^^" 0
.^^0 1
RetryIntervalMs^^1 @
,^^@ A
MaxUdpMessageSize__ !
=__" #
graylogOptions__$ 2
.__2 3
MaxUdpMessageSize__3 D
}`` 
;`` 
LoggerConfigurationbb 
=bb  !
LoggerConfigurationbb" 5
?bb5 6
.bb6 7
WriteTobb7 >
.bb> ?
Graylogbb? F
(bbF G
graylogConfigbbG T
)bbT U
;bbU V
}cc 	
privateee 
staticee  
GraylogTransportTypeee +-
!GetGraylogTransportTypeFromStringee, M
(eeM N
stringeeN T
transportTypeeeU b
)eeb c
{ff 	
returngg 
transportTypegg  
.gg  !
ToLowergg! (
(gg( )
)gg) *
switchgg+ 1
{hh 
$strii 
=>ii  
GraylogTransportTypeii -
.ii- .
Tcpii. 1
,ii1 2
$strjj 
=>jj  
GraylogTransportTypejj -
.jj- .
Udpjj. 1
,jj1 2
$strkk 
=>kk  
GraylogTransportTypekk .
.kk. /
Httpkk/ 3
,kk3 4
_ll 
=>ll  
GraylogTransportTypell )
.ll) *
Udpll* -
}mm 
;mm 
}nn 	
privatepp 
staticpp 
stringpp 
GetValidPathpp *
(pp* +
stringpp+ 1
	inputPathpp2 ;
,pp; <
stringpp= C
optionalFileNameppD T
)ppT U
{qq 	
ifrr 
(rr 
stringrr 
.rr 
IsNullOrEmptyrr $
(rr$ %
	inputPathrr% .
)rr. /
||rr0 2
stringrr3 9
.rr9 :
IsNullOrEmptyrr: G
(rrG H
PathrrH L
.rrL M
GetFileNamerrM X
(rrX Y
	inputPathrrY b
)rrb c
)rrc d
)rrd e
{ss 
returntt 
Pathtt 
.tt 
Combinett #
(tt# $
FileOperationstt$ 2
.tt2 3
GetApplicationPathtt3 E
(ttE F
)ttF G
,ttG H
optionalFileNamettI Y
)ttY Z
;ttZ [
}uu 
returnww 
Pathww 
.ww 
GetFullPathww #
(ww# $
	inputPathww$ -
)ww- .
;ww. /
}xx 	
privatezz 
staticzz 
voidzz 
SetLogLevelzz '
(zz' (
stringzz( .
logEventLevelzz/ <
,zz< =
LoggerConfigurationzz> Q
loggerConfigurationzzR e
)zze f
{{{ 	
if|| 
(|| 
string|| 
.|| 
IsNullOrEmpty|| $
(||$ %
logEventLevel||% 2
)||2 3
)||3 4
return||5 ;
;||; <
switch}} 
(}} 
logEventLevel}} !
.}}! "
ToLower}}" )
(}}) *
)}}* +
)}}+ ,
{~~ 
case 
$str 
: !
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Warning
��5 <
(
��< =
)
��= >
;
��> ?
return
�� 
;
�� 
case
�� 
$str
�� 
:
�� !
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Verbose
��5 <
(
��< =
)
��= >
;
��> ?
return
�� 
;
�� 
case
�� 
$str
�� 
:
�� !
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Fatal
��5 :
(
��: ;
)
��; <
;
��< =
return
�� 
;
�� 
case
�� 
$str
�� 
:
�� !
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Error
��5 :
(
��: ;
)
��; <
;
��< =
return
�� 
;
�� 
case
�� 
$str
�� "
:
��" #!
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Information
��5 @
(
��@ A
)
��A B
;
��B C
return
�� 
;
�� 
default
�� 
:
�� !
loggerConfiguration
�� '
.
��' (
MinimumLevel
��( 4
.
��4 5
Debug
��5 :
(
��: ;
)
��; <
;
��< =
return
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �2
nC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\Logging\Devon4NetLogger.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
{ 
public 

static 
class 
Devon4NetLogger '
{ 
public 
static 
void 
Debug  
(  !
	Exception! *
	exception+ 4
)4 5
{ 	
Serilog 
. 
Log 
. 
Debug 
( 
GetExceptionMessage 1
(1 2
ref2 5
	exception6 ?
)? @
)@ A
;A B
}		 	
public 
static 
void 
Debug  
(  !
string! '
message( /
)/ 0
{ 	
Serilog 
. 
Log 
. 
Debug 
( 
message %
)% &
;& '
Console 
. 
	WriteLine 
( 
message %
)% &
;& '
} 	
public 
static 
void 
Error  
(  !
string! '
message( /
)/ 0
{ 	
Serilog 
. 
Log 
. 
Error 
( 
message %
)% &
;& '
Console 
. 
	WriteLine 
( 
message %
)% &
;& '
} 	
public 
static 
void 
Error  
(  !
	Exception! *
	exception+ 4
)4 5
{ 	
Serilog 
. 
Log 
. 
Error 
( 
GetExceptionMessage 1
(1 2
ref2 5
	exception6 ?
)? @
)@ A
;A B
} 	
public 
static 
void 
Fatal  
(  !
string! '
message( /
)/ 0
{ 	
Serilog 
. 
Log 
. 
Fatal 
( 
message %
)% &
;& '
Console 
. 
	WriteLine 
( 
message %
)% &
;& '
} 	
public!! 
static!! 
void!! 
Fatal!!  
(!!  !
	Exception!!! *
	exception!!+ 4
)!!4 5
{"" 	
Serilog## 
.## 
Log## 
.## 
Fatal## 
(## 
GetExceptionMessage## 1
(##1 2
ref##2 5
	exception##6 ?
)##? @
)##@ A
;##A B
}$$ 	
public&& 
static&& 
void&& 
Information&& &
(&&& '
string&&' -
message&&. 5
)&&5 6
{'' 	
Serilog(( 
.(( 
Log(( 
.(( 
Information(( #
(((# $
message(($ +
)((+ ,
;((, -
Console)) 
.)) 
	WriteLine)) 
()) 
message)) %
)))% &
;))& '
}** 	
public,, 
static,, 
void,, 
Information,, &
(,,& '
	Exception,,' 0
	exception,,1 :
),,: ;
{-- 	
Serilog.. 
... 
Log.. 
... 
Information.. #
(..# $
GetExceptionMessage..$ 7
(..7 8
ref..8 ;
	exception..< E
)..E F
)..F G
;..G H
}// 	
public11 
static11 
void11 
Warning11 "
(11" #
string11# )
message11* 1
)111 2
{22 	
Serilog33 
.33 
Log33 
.33 
Warning33 
(33  
message33  '
)33' (
;33( )
Console44 
.44 
	WriteLine44 
(44 
message44 %
)44% &
;44& '
}55 	
public77 
static77 
void77 
Warning77 "
(77" #
	Exception77# ,
	exception77- 6
)776 7
{88 	
Serilog99 
.99 
Log99 
.99 
Warning99 
(99  
GetExceptionMessage99  3
(993 4
ref994 7
	exception998 A
)99A B
)99B C
;99C D
}:: 	
private<< 
static<< 
string<< 
GetExceptionMessage<< 1
(<<1 2
ref<<2 5
	Exception<<6 ?
	exception<<@ I
)<<I J
{== 	
var>> 
message>> 
=>> 
!>> 
string>> !
.>>! "
IsNullOrEmpty>>" /
(>>/ 0
	exception>>0 9
.>>9 :
Message>>: A
)>>A B
?>>C D
	exception>>E N
.>>N O
Message>>O V
:>>W X
$str>>Y o
;>>o p
var?? 
innerException?? 
=??  
	exception??! *
.??* +
InnerException??+ 9
!=??: <
null??= A
&&??B D
	exception??E N
.??N O
InnerException??O ]
.??] ^
Message??^ e
!=??f h
null??i m
???n o
	exception??p y
.??y z
InnerException	??z �
.
??� �
Message
??� �
:
??� �
$str
??� �
;
??� �
var@@ 
fullMessage@@ 
=@@ 
$"@@  
$str@@  0
{@@0 1
	exception@@1 :
.@@: ;
GetType@@; B
(@@B C
)@@C D
.@@D E
Name@@E I
}@@I J
$str@@J V
{@@V W
message@@W ^
}@@^ _
$str@@_ r
{@@r s
innerException	@@s �
}
@@� �
"
@@� �
;
@@� �
ConsoleAA 
.AA 
	WriteLineAA 
(AA 
fullMessageAA )
)AA) *
;AA* +
returnBB 
fullMessageBB 
;BB 
}CC 	
}EE 
}FF �
wC:\Users\fferna14\Documents\PruebaDevon\jtq\Modules\Devon4Net.Infrastructure.Logger\Middleware\LogHandlingMiddleware.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '

Middleware' 1
{ 
public 

class *
LogExceptionHandlingMiddleware /
{ 
private		 
readonly		 
RequestDelegate		 (
next		) -
;		- .
public *
LogExceptionHandlingMiddleware -
(- .
RequestDelegate. =
next> B
)B C
{ 	
this 
. 
next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)M N
{ 	
try 
{ 
await 
next 
( 
context "
)" #
.# $
ConfigureAwait$ 2
(2 3
false3 8
)8 9
;9 :
} 
catch 
( 
	Exception 
ex 
)  
{ 
await  
HandleExceptionAsync *
(* +
context+ 2
,2 3
ex4 6
)6 7
.7 8
ConfigureAwait8 F
(F G
falseG L
)L M
;M N
} 
} 	
private 
static 
Task  
HandleExceptionAsync 0
(0 1
HttpContext1 <
context= D
,D E
	ExceptionF O
	exceptionP Y
)Y Z
{ 	
	Devon4Net 
. 
Infrastructure $
.$ %
Log% (
.( )
Devon4NetLogger) 8
.8 9
Error9 >
(> ?
	exception? H
)H I
;I J
var 
result 
= 
JsonConvert $
.$ %
SerializeObject% 4
(4 5
new5 8
{9 :
error; @
=A B
	exceptionC L
.L M
MessageM T
}U V
)V W
;W X
context   
.   
Response   
.   
ContentType   (
=  ) *
$str  + =
;  = >
context!! 
.!! 
Response!! 
.!! 

StatusCode!! '
=!!( )
(!!* +
int!!+ .
)!!. /
HttpStatusCode!!/ =
.!!= >
InternalServerError!!> Q
;!!Q R
return"" 
context"" 
."" 
Response"" #
.""# $

WriteAsync""$ .
("". /
result""/ 5
)""5 6
;""6 7
}## 	
}$$ 
}%% 