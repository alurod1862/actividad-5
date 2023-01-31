New-LocalGroup -Name grupo1 -Description "grupo1"
New-LocalGroup -Name grupo2 -Description "grupo2"
New-LocalGroup -Name grupo3 -Description "grupo3"

$user1 = "user01"
$clave=ConvertTo-SecureString "passuser01" -AsPlainText -Force
New-LocalUser $user1 -Password $clave -FullName "J.Cuantico" -Description "Usuario1"
$user2 = "user02"
$clave=ConvertTo-SecureString "passuser02" -AsPlainText -Force
New-LocalUser $user2 -Password $clave -FullName "R.Nvidia" -Description "Usuario2"
$user3 = "user03"
$clave=ConvertTo-SecureString "passuser03" -AsPlainText -Force
New-LocalUser $user3 -Password $clave -FullName "L.PuertaLogica" -Description "Usuario3"


Add-LocalGroupMember -Group "grupo1" -Member user01
Add-LocalGroupMember -Group "grupo2" -Member user02
Add-LocalGroupMember -Group "grupo3" -Member user03
