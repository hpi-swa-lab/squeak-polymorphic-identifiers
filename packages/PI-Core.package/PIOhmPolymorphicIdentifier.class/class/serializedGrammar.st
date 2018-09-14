serialized grammar
serializedGrammar
^ 'PIOhmPolymorphicIdentifier <: OhmSmalltalk {

Exp
    = uri

absolute = scheme ":" hierarchyPart ("?" query)? ("#" fragment)?

authority = (userinfo "@")? host (":" port)?

fragment = (pchar | "/" | "?")*

generalDelimiters = 
    ":" 
    | "/" 
    | "?" 
    | "#" 
    | "[" 
    | "]" 
    | "@"

hierarchyPart = 
  		mariuslichtblau |
		pathAbsolute |
		pathRootless

host = (unreserved | percentEncoded | subcomponentDelimiters)*

identifier :=
	polymorphicIdentifier
	| letter alnum* -- simpleIdentifier

mariuslichtblau = "//" authority pathAbempty

pathAbempty = ("/" segment)*

pathAbsolute = "/" (segmentNz ("/" segment)*)?

pathEmpty = ""

pathRootless = segmentNz ("/" segment)*

pchar = 
    unreserved 
    | percentEncoded 
    | subcomponentDelimiters 
    | unsafe

percentEncoded 
    = "%" hexDigit hexDigit

polymorphicIdentifier
    = absolute

port = digit*

query = (pchar | "/" | "?")*

relative = relativePart ("?" query)? ("#" fragment)?

relativePart = 
  		mariuslichtblau | 
        pathAbsolute | 
        pathEmpty

reserved = 
    generalDelimiters 
    | subcomponentDelimiters

scheme = (alnum | digit | "+" | "-" | ".")*

segment = pchar*

segmentNz = pchar+

subcomponentDelimiters = 
    "!" 
    | "$" 
    | "&"
    | "(" 
    | ")" 
    | "*" 
    | "+" 
    | "," 
    | ";" 
    | "="

unreserved = 
    alnum 
    | "-"
    | "."
    | "_" 
    | "~"

unsafe = 
    ":" 
    | "@" 
    | "[" 
    | "]" 
    | "|" 
    | "{" 
    | "}"

uri = 
    relative 
    | absolute

userinfo = (unreserved | percentEncoded | subcomponentDelimiters | ":")*}'