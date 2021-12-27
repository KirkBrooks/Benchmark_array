//%attributes = {}

#DECLARE($n : Integer)->$ms : Integer
var $sum : Real
ARRAY REAL:C219($aReal; $n)

For ($i; 1; $n)
	$aReal{$i}:=123.4
End for 


$ms:=Milliseconds:C459
$sum:=Sum:C1($aReal)
$ms:=Milliseconds:C459-$ms

