Param([string]$fileName, [string]$hashvalue)
$filehash = get-fileHash $fileName -Algorithm md5
$hashvalue = $hashvalue.ToUpper()
if (($filehash.Hash) -eq $hashvalue) {
  echo "hash match"  
}
else {
  $m1 = "File = " + $filehash.Hash
  $m2 = "Hash = " + $hashvalue
  echo "hash doesn't match"
  echo $m1
  echo $m2
}
