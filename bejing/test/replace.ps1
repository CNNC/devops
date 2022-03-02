# copy-item /Users/vic/Documents/devops-cm/devops/bejing/test/ /Users/vic/Documents/devops-cm/devops/bejing/test/bak  #在替换之前先对文件进行备份

$files = Get-Childitem /Users/vic/Documents/devops-cm/devops/bejing/test/ -Recurse -Include *.yaml

foreach ($file in $files)   #遍历文件

{

 $content = get-content $file.pspath

  clear-content $file.pspath  #清空每个文件内容

   foreach ($line in $content) #对每个文件中的行进行遍历

   {

   $liner = $line.Replace("12345","apiVersion").Replace("12345","apiVersion").Replace("12345","apiVersion").Replace("12345","apiVersion").Replace("12345","apiVersion").Replace("12345","apiVersion").Replace("12345","apiVersion")

   Add-content $file.pspath -Value $liner #附件内容到原文件

   }

 }