#tag Module
Protected Module Functionality
	#tag Method, Flags = &h0
		Function SwitchToWinEOL(inFile As FolderItem) As Boolean
		  
		  //-- Change the end of line type of the file
		  //   We use a binary stream to avoid manipulating a input and output text stream.
		  
		  If InFile Is Nil Then
		    
		    System.DebugLog CurrentMethodName + ": inFile was Nil."
		    Return False
		    
		  End If
		  
		  // Try to get a BinaryStream in R/W Mode
		  Dim theStream As BinaryStream
		  Try
		    
		    theStream = BinaryStream.Open( inFile, True )
		    
		  Catch theIOException As IOException
		    
		    System.DebugLog CurrentMethodName + ": Catch an IOException. ShellPath is """ + inFile.ShellPath + """."
		    System.DebugLog " -- IOException error # " + Str( theIOException.ErrorNumber ) 
		    System.DebugLog " -- IOException message: " + theIOException.Message
		    Return False
		    
		  End Try
		  
		  // Read the entire file
		  Dim theContent As String = theStream.Read( theStream.Length, Encodings.UTF8 )
		  
		  If theStream.LastErrorCode <> FolderItem.NoError Then
		    
		    System.DebugLog CurrentMethodName + ": Can't read the file """ + inFile.ShellPath + """"
		    System.DebugLog " -- Stream error #" + Str( theStream.LastErrorCode )
		    System.DebugLog " -- Error message: " + FolderItemLib.FolderItemErrorMessage( theStream.LastErrorCode )
		    
		    Return False
		    
		  End If
		  
		  // Convert the EOL
		  Dim theResult As String = ReplaceLineEndings( theContent, EndOfLine.Windows )
		  
		  // Go back to the start of the file and overwrite it
		  theStream.Position = 0
		  theStream.Write( theResult )
		  
		  // Check for error while writing
		  If theStream.LastErrorCode <> FolderItem.NoError Then
		    
		    System.DebugLog CurrentMethodName + ": Can't write to the file """ + inFile.ShellPath + """"
		    System.DebugLog " -- Stream error #" + Str( theStream.LastErrorCode )
		    System.DebugLog " -- Error message: " + FolderItemLib.FolderItemErrorMessage( theStream.LastErrorCode )
		    
		    Return False
		    
		  End If
		  
		  // Close the stream
		  theStream.Close
		  
		  Return True
		  
		Exception theException As OutOfMemoryException
		  
		  // Handle the case were the file is too big to open in memory
		  // NB: This is unlikely to happen
		  System.DebugLog CurrentMethodName + ": Catch an OutOfMemoryException."
		  System.DebugLog " -- Exception error #" + Str( theException.ErrorNumber )
		  System.DebugLog " -- Exception message: " + theException.Message
		  
		  Return false
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
