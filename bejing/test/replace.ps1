# copy-item /Users/vic/Documents/devops-cm/devops/bejing/test/ /Users/vic/Documents/devops-cm/devops/bejing/test/bak  #在替换之前先对文件进行备份

$files = Get-Childitem /Users/vic/Documents/devops-cm/devops/bejing/test/ -Recurse -Include *.yaml
$cross ='zz-dd'
$crossregionid ='ggf'
$subnetId = 'subnet-or3xp7fd'
$loadbalanceid ='lb-4lt3b1t7'
$tkeexistedlbid ='lb-4lt3b1t7'
$crossvpcid=123

$servicename='/Users/vic/Documents/devops-cm/devops/bejing/test/' + $cross + '-service.yaml'
$ingressname='/Users/vic/Documents/devops-cm/devops/bejing/test/' + $cross + '-ingress.yaml'

foreach ($file in $files)   #遍历文件

{
 
 $content = get-content $file.pspath
 if ($file.pspath='/Users/vic/Documents/devops-cm/devops/bejing/test/ingress.yaml') 
 {
    $file.pspath=$ingressname
     }else {
      $file.pspath=$servicename
     }
#  clear-content $file.pspath  #清空每个文件内容

   foreach ($line in $content) #对每个文件中的行进行遍历

   {

   $liner = $line.Replace("ap-beijing","$crossregionid").Replace("subnet-or3xp7fd",$subnetId).Replace("lb-4lt3b1t7",$loadbalanceid).Replace("lb-4lt3b1t7",$tkeexistedlbid).Replace("vpc-2gzmvizm","$crossvpcid")

  }
   
    
    Add-content $file.pspath -Value $liner #附件内容到新文件
 }