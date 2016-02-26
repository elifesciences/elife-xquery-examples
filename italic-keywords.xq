let $dir := "elife-articles"
let $docs := file:list($dir , false(), "*.xml")
for $doc in $docs
	let $fulldoc := doc(concat($dir,"/",$doc))
	return
	try {
		for $kwd in $fulldoc//kwd-group[@kwd-group-type="author-keywords"]/kwd
			where $kwd//italic
			return concat($doc, " " ,$kwd)
	  } catch * {
	    <error>Caught error {$err:code}: {$err:description}</error>
	  }
