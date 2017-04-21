#create user mailbox every username (line in the file) that in the data file 
# the user mailbox will be created in the destenation_database

		$data = Get-Content "C:\Users\nofare\filename.txt"
		foreach ($line in $data)
		{
			$aa = . 'C:\Program Files\Microsoft\Exchange Server\V14\bin\RemoteExchange.ps1'
			$bb = Connect-ExchangeServer -auto
			$destenation_database = database_name
			$command = Enable-Mailbox -Identity $line -Database $database
		}
		Clear-Content C:\Users\nofare\filename.txt