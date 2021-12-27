//%attributes = {}


#DECLARE($n : Integer)->$ms : Integer
var $sum : Real
var $coll : Collection
ARRAY REAL:C219($aReal; $n)

For ($i; 1; $n)
	$aReal{$i}:=123.4
End for 

$coll:=New collection:C1472()
ARRAY TO COLLECTION:C1563($coll; $aReal)

$ms:=Milliseconds:C459
$sum:=$coll.sum()
$ms:=Milliseconds:C459-$ms
