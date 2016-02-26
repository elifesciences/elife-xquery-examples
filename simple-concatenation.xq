(: example of simple concatentation :)
(: $basex simple-concatentation.xq :) 
let $dir := "elife-articles"
let $docs := file:list($dir , false(), "*.xml")
for $doc in $docs
return concat("the file is ", $dir , "/"  , $doc)
