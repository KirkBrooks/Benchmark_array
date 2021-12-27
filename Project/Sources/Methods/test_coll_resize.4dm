//%attributes = {}


#DECLARE($n : Integer)->$ms : Integer
$ms:=Milliseconds:C459

var $coll : Collection
$coll:=New collection:C1472().resize($n)

For ($i; 0; $n-1)
	$coll[$i]:=123.4
End for 

$ms:=Milliseconds:C459-$ms
