
#create pst file for every username (line in the file) that in the data file 
# the pst will be created in the destenation_folder
	
	$data = Get-Content "C:\Users\nofare\filename.txt"
	foreach ($line in $data)
	{
		$destenation_folder = New-Item -ItemType directory -Path \\servername\Users\$line;
		$filepath = "servername\Users\$line\$line.pst";
		$ex_connection = . 'C:\Program Files\Microsoft\Exchange Server\V14\bin\RemoteExchange.ps1'
		$ex_connection_server = Connect-ExchangeServer -auto
		$command = New-MailboxExportRequest -Mailbox $line -FilePath \\$filepath
	}
	Clear-Content C:\Users\nofare\filename.txt
	

