#tag Module
Protected Module FileLib
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


End Module
#tag EndModule
