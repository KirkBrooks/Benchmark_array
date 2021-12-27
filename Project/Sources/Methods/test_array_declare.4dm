//%attributes = {}


#DECLARE($n : Integer)->$ms : Integer

$ms:=Milliseconds:C459
ARRAY REAL:C219($aReal; $n)

For ($i; 1; $n)
	$aReal{$i}:=123.4
End for 
$0:=Milliseconds:C459-$ms