#tag Module
Protected Module Functionality
	#tag Method, Flags = &h0
		Function CollectFolderItem(inRootFolder As FolderItem) As FolderItem()
		  
		  //-- Collects all source code file that needs to be converted
		  
		  Dim theStack(), theCollectedFiles() As FolderItem
		  Dim theFileName() As String
		  
		  // Precondition
		  If Not inRootFolder.Directory Then
		    
		    Break 'For debug purpose only
		    Return theCollectedFiles
		    
		  End If
		  
		  // --- Let's do it ---
		  
		  // Push the first directory on the stack
		  theStack.Append inRootFolder
		  
		  Do
		    
		    // Get the next directory on the stack
		    Dim theCurrentFolder As FolderItem = theStack.Pop
		    Dim theCount As Integer = theCurrentFolder.Count
		    
		    For i As Integer = 1 To theCount
		      
		      Dim theItem As FolderItem = theCurrentFolder.TrueItem( i )
		      
		      // Discard invisible item
		      If theItem.Visible Then
		        
		        // If it's a directory...
		        If theItem.Directory Then
		          
		          // ...Push it on the stack
		          theStack.Append theItem
		          
		          // Otherwise, is it an eligible file?
		        Elseif InStr( Functionality.kAllowedExtensions, theItem.FileExtension ) > 0 Then
		          
		          // Yes, so we add it to the collected files array
		          theCollectedFiles.Append theItem
		          // and the filename for a later sorting purpose
		          theFileName.Append theItem.AbsolutePath
		          
		        End If
		        
		      End If
		      
		    Next
		    
		    // Are we done?
		    If theStack.Ubound < 0 Then
		      
		      // No more directory to explore, then we can exit the loop
		      Exit
		      
		    End If
		    
		  Loop ' We use an infinite loop, but there is an exit condition in the loop
		  
		  // Sort the collected items based on their file name
		  theFileName.SortWith( theCollectedFiles )
		  
		  Return theCollectedFiles
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SwitchToUnixEOL(inFile As FolderItem) As Boolean
		  
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
		  Dim theResult As String = ReplaceLineEndings( theContent, EndOfLine.Unix )
		  
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


	#tag Constant, Name = kAllowedExtensions, Type = String, Dynamic = False, Default = \"rbvcp\x2Crbbas\x2Crbfrm\x2Crbmnu", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
