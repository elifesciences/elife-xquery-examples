let $docs := collection("elife-articles")
for $doc in $docs
	return
	try {
		for $kwd in $doc//kwd-group[@kwd-group-type="author-keywords"]/kwd
			where $kwd//italic
			return concat(document-uri($doc), " " ,$kwd)
	  } catch * {
	    <error>Caught error {$err:code}: {$err:description}</error>
	  }
