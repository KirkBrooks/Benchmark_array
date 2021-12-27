//%attributes = {}


#DECLARE($n : Integer)->$ms : Integer
var $sum : Real
var $coll : Collection
ARRAY REAL:C219($aReal; $n)

//  we dn't care about speed of building the array
$coll:=New collection:C1472().resize($n)

For ($i; 0; $n-1)
	$coll[$i]:=123.4
End for 


$ms:=Milliseconds:C459
COLLECTION TO ARRAY:C1562($coll; $aReal)
$ms:=Milliseconds:C459-$ms