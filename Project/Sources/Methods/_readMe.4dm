//%attributes = {}
/*  _readMe ()
 Created by: Kirk as Designer, Created: 12/26/21, 16:22:45
 ------------------
/*  
Test - interp
100,000 elements
20 runs

ARRAYS:
  append : 82 ms
  declare : 58.9 ms
  sum : 0.15 ms

COLLECTIONS:
  push : 152.8 ms
  resize : 83.45 ms
  sum : 1.35 ms
-------
  array to coll : 4.9 ms
  coll to array : 1.8 ms
    --------------------
Test - compiled
100,000 elements
20 runs

ARRAYS:
  append : 14.9 ms
  declare : 0.35 ms
  sum : 0.1 ms

COLLECTIONS:
  push : 31.25 ms
  resize : 2.05 ms
  sum : 1.3 ms
-------
  array to coll : 4.65 ms
  coll to array : 1.55 ms

*/

/*  test w/ 1000k elements
Test - interp
1,000,000 elements
20 runs

ARRAYS:
  append : 813.65 ms
  declare : 592.4 ms
  sum : 1.05 ms

COLLECTIONS:
  push : 1505 ms
  resize : 856.8 ms
  sum : 13.05 ms
-------
  array to coll : 46.5 ms
  coll to array : 18.3 ms
-------
Test - compiled
1,000,000 elements
20 runs

ARRAYS:
  append : 140 ms
  declare : 4.1 ms
  sum : 1 ms

COLLECTIONS:
  push : 299.45 ms
  resize : 22.3 ms
  sum : 13.35 ms
-------
  array to coll : 47.3 ms
  coll to array : 18.35 ms


*/
*/

var $i; $nTests; $nElements : Integer
var $text : Text

$nTests:=20
$nElements:=1000000

$text:="Test - "+Choose:C955(Is compiled mode:C492; "compiled"; "interp")+"\r"
$text:=$text+String:C10($nElements; "###,###,##0")+" elements\r"+String:C10($nTests)+" runs\r"
$text:=$text+"\rARRAYS:\r"
$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_array_append($nElements)
End for 
$text:=$text+"  append : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_array_declare($nElements)
End for 
$text:=$text+"  declare : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_array_sum($nElements)
End for 
$text:=$text+"  sum : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"
/* --------------------------------------------------------

--------------------------------------------------------*/
$text:=$text+"\rCOLLECTIONS:\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_coll_push($nElements)
End for 
$text:=$text+"  push : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_coll_resize($nElements)
End for 
$text:=$text+"  resize : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_coll_sum($nElements)
End for 
$text:=$text+"  sum : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$text:=$text+"-------\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_arrayToCollection($nElements)
End for 
$text:=$text+"  array to coll : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

$avg:=0
For ($i; 1; $nTests)
	$avg:=$avg+test_collectionToArray($nElements)
End for 
$text:=$text+"  coll to array : "+String:C10(Round:C94($avg/$nTests; 2))+" ms\r"

// --------------------------------------------------------
SET TEXT TO PASTEBOARD:C523($text)
ALERT:C41($text)





