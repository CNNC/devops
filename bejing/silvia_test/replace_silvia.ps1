copy-item /Users/wangsilvia/Documents/devops/bejing/silvia_test/ /Users/wangsilvia/Documents/devops/bejing/silvia_test/bak  #在替换之前先对文件进行备份

$files = Get-Childitem /Users/wangsilvia/Documents/devops/bejing/silvia_test/ -Recurse -Include *.yaml

foreach ($file in $files)   #遍历文件

{

 $content = get-content $file.pspath

  clear-content $file.pspath  #清空每个文件内容

   foreach ($line in $content) #对每个文件中的行进行遍历

   {

   $liner = $line.Replace("ap-beijing","$crossregionid").Replace("","true").Replace("kind: Service","true").Replace("kind: Service","true").Replace("kind: Service","true").Replace("12345","apiVersion").Replace("kind: Service","true")

   Add-content $file.pspath -Value $liner #附件内容到原文件

   }

 }

$cross =zz-dd
$crossregionid =
$subnetId = subnet-or3xp7fd
$loadbalanceid =lb-4lt3b1t7
$tkeexistedlbid =lb-4lt3b1t7
$crossvpcid=123

$servicename='/Users/vic/Documents/devops-cm/devops/bejing/test/' + $cross + '-service.yaml'
$ingressname='/Users/vic/Documents/devops-cm/devops/bejing/test/' + $cross + '-service.yaml'

foreach ($file in $files)   #遍历文件

{

 $content = get-content $file.pspath

  clear-content $file.pspath  #清空每个文件内容

   foreach ($line in $content) #对每个文件中的行进行遍历

   {

   $liner = $line.Replace("ap-beijing","$crossregionid").Replace("subnet-or3xp7fd",$subnetId).Replace("lb-4lt3b1t7",$loadbalanceid).Replace("lb-4lt3b1t7",$tkeexistedlbid).Replace("vpc-2gzmvizm","$crossvpcid")

   
   if ($files.pspath=/Users/vic/Documents/devops-cm/devops/bejing/test/ingress.yaml) 
   {
    $files.pspath=$ingressname
    else {
        $files.pspath=$servicename
    }
   }
   Add-content $file.pspath -Value $liner #附件内容到原文件

   }

 }