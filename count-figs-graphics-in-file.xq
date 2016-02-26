let $doc := .
let $figs := $doc//fig
let $graphics := $doc//graphic
return concat("figs: ", count($figs)," graphics: " ,count($graphics))
