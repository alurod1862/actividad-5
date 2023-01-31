New-LocalGroup -Name grupo1 -Description "grupo1"
New-LocalGroup -Name grupo2 -Description "grupo2"
New-LocalGroup -Name grupo3 -Description "grupo3"

$clave=ConvertTo-SecureString "passuser01" -AsPlainText -Force
New-LocalUser "J.Cuantico" -Password $clave -FullName "J.Cuantico" -Description "Usuario1"
$clave=ConvertTo-SecureString "passuser02" -AsPlainText -Force
New-LocalUser "R.Nvidia" -Password $clave -FullName "R.Nvidia" -Description "Usuario2"
$clave=ConvertTo-SecureString "passuser03" -AsPlainText -Force
New-LocalUser "L.PuertaLogica" -Password $clave -FullName "L.PuertaLogica" -Description "Usuario3"


Add-LocalGroupMem -Group "grupo1" -Member user01
Add-LocalGroupMem -Group "grupo2" -Member user02
Add-LocalGroupMem -Group "grupo3" -Member user03
