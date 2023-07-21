# XCharter package
# Matthew Bertucci 4/24/2022 for v1.24

#include:iftex
#include:xkeyval
#include:etoolbox
#include:xstring
#include:ifthen
#include:scalefnt
#include:mweights
#include:fontenc
# loads T1 option of fontenc
#include:fontaxes

#keyvals:\usepackage/XCharter#c
aftsolidus=##L
defaultfeatures={%<fontspec features%>}
foresolidus=##L
lf
lining
nofontspec
notextnu
oldSS
oldstyle
oldstyleI
osf
osfI
otfmath#true,false
p
proportional
scaled=%<factor%>
scosf
sups
t
tabular
theoremfont
thmlining
type1
type1text
#endkeyvals

#ifOption:otfmath
#include:fontspec
#include:xcharter-otf
#keyvals:\usepackage/XCharter#c
no-text
tight
loose
fulloldstyle
math-style=#ISO,TeX,french,upright
bold-style=#ISO,TeX,upright
nabla=#italic,upright,literal
partial=#italic,upright,literal
CharacterVariant={%<glyph num list%>:%<variety num%>}
StylisticSet=#4,5,6
Style=#upint,leqslant,smaller,subsetneq,parallelslant
Scale=%<factor%>
#endkeyvals
#endif
#ifOption:otfmath=true
#include:fontspec
#include:xcharter-otf
#keyvals:\usepackage/XCharter#c
no-text
tight
loose
fulloldstyle
math-style=#ISO,TeX,french,upright
bold-style=#ISO,TeX,upright
nabla=#italic,upright,literal
partial=#italic,upright,literal
CharacterVariant={%<glyph num list%>:%<variety num%>}
StylisticSet=#4,5,6
Style=#upint,leqslant,smaller,subsetneq,parallelslant
Scale=%<factor%>
#endkeyvals
#endif

\circledtxt#*
\defigures
\destyle#*
\infigures
\lfstyle
\liningnums
\nufigures
\nustyle#*
\oldstylenums
\osfstyle
\proportionalnums
\sufigures
\tabularnums
\textde{text}#*
\textdenominator{text}
\textfrac{numerator}{denominator}
\textfrac[whole part]{numerator}{denominator}
\textinf{text}
\textinferior{text}#*
\textlf{text}
\textosf{text}
\textosfI{text}
\textnu{text}#S
\textnum{text}#*
\textnumerator{text}
\textruble
\textsu{text}
\textsuperior{text}#*
\textth{text}
\textthit{text}#*
\thdefault#*
\thfamily
\tlfstyle
\tosfstyle
\useosf#*
\useosfI#*
\useproportional#*

# from T1 option of fontenc
\DH#n
\NG#n
\dj#n
\ng#n
\k{arg}#n
\guillemotleft#*n
\guillemotright#*n
\guilsinglleft#n
\guilsinglright#n
\quotedblbase#n
\quotesinglbase#n
\textquotedbl#n
\DJ#n
\th#n
\TH#n
\dh#n
\Hwithstroke#*n
\hwithstroke#*n
\textogonekcentered{arg}#*n
\guillemetleft#n
\guillemetright#n
