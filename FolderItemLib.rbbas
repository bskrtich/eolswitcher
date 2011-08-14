#tag Module
Protected Module FolderItemLib
	#tag Method, Flags = &h0
		Function FileExtension(Extends f As FolderItem) As String
		  
		  Dim NameParts() As String = f.Name.Split( "." )
		  
		  // We should have at least 2 elements ( i.e., upper bound is > 0. )
		  If NameParts.Ubound > 0 Then
		    
		    // The extension is the last array item.
		    Return NameParts( NameParts.Ubound )
		    
		  Else
		    
		    Return ""
		    
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FolderItemErrorMessage(inErrorCode As Integer) As String
		  
		  //-- Returns a _localized_ string explaining the Item.LastErrorCode
		  
		  Select Case inErrorCode
		    
		  Case FolderItem.NoError
		    Return "No error"
		    
		  Case FolderItem.AccessDenied
		    Return "Access denied"
		    
		  Case FolderItem.DestDoesNotExistError
		    Return "Destination doesn't exist"
		    
		  Case FolderItem.FileInUse
		    Return "File in use"
		    
		  Case FolderItem.FileNotFound
		    Return "File not found"
		    
		  Case FolderItem.InvalidName
		    Return "Invalid name"
		    
		  Case FolderItem.NotEnoughMemory
		    Return "Not enough memory"
		    
		  Else
		    Return "Unknown error code -- See platform documentation"
		    
		  End Select
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
