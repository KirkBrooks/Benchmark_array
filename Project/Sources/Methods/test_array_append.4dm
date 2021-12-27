//%attributes = {}


#DECLARE($n : Integer)->$ms : Integer
$ms:=Milliseconds:C459
ARRAY REAL:C219($aReal; 0)

For ($i; 1; $n)
	APPEND TO ARRAY:C911($aReal; 123.4)
End for 
$0:=Milliseconds:C459-$ms
