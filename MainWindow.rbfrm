#tag Window
Begin Window MainWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   5.03e+2
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   158
   MaximizeButton  =   False
   MaxWidth        =   400
   MenuBar         =   538456395
   MenuBarVisible  =   True
   MinHeight       =   158
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   False
   Title           =   "EOL Switcher"
   Visible         =   True
   Width           =   4.0e+2
   Begin StaticText Label
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   "Folder To Process:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "SmallSystem"
      TextSize        =   0
      TextUnit        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   197
   End
   Begin StaticText LabelFilePath
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "SmallSystem"
      TextSize        =   0
      TextUnit        =   0
      Top             =   46
      Underline       =   ""
      Visible         =   True
      Width           =   360
   End
   Begin PushButton ButtonChoose
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Choose"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   300
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0
      TextUnit        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton ButtonProcess
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Process"
      Default         =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   300
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0
      TextUnit        =   0
      Top             =   118
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin StaticText LabelInfos
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "No folder selected"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "SmallSystem"
      TextSize        =   0
      TextUnit        =   0
      Top             =   118
      Underline       =   ""
      Visible         =   True
      Width           =   268
   End
   Begin Listbox ListFiles
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   ""
      ColumnWidths    =   "60,,60"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   2
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   333
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#	Name	Type"
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   150
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   360
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub CollectFolderItem(inBaseFolder As FolderItem)
		  
		  //-- Collects all source code file that needs to be converted
		  //   Uses recurdion to collect inside subfolders
		  
		  For i As Integer = inBaseFolder.Count DownTo 1
		    
		    Dim theItem As FolderItem = inBaseFolder.Item( i )
		    
		    
		    If theItem.Directory Then
		      
		      // Here is the recursive call
		      CollectFolderItem theItem
		      
		    Else
		      
		      // This is a file -> Gets its extension.
		      
		      Dim theExtension As String = theItem.FileExtension
		      
		      If InStr( kAllowedExtensions, theExtension ) > 0 then
		        
		        CollectedItems.Append theItem
		        ListFiles.AddRow Format( ListFiles.ListCount + 1, "000" )
		        Dim theLastIndex As Integer = ListFiles.LastIndex
		        ListFiles.Cell( theLastIndex, 1 ) = theItem.Name
		        ListFiles.Cell( theLastIndex, 2) = theExtension
		        
		        // Store the FolderItem reference for future use
		        ListFiles.RowTag( theLastIndex ) = theItem
		        
		      End If
		      
		    End If
		    
		  Next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BaseFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CollectedItems() As FolderItem
	#tag EndProperty


	#tag Constant, Name = kAllowedExtensions, Type = String, Dynamic = False, Default = \"rbvcp\x2Crbbas\x2Crbfrm\x2Crbmnu", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events ButtonChoose
	#tag Event
		Sub Action()
		  
		  Dim theResult As FolderItem = SelectFolder
		  
		  If theResult is Nil then
		    
		    Return
		    
		  Else
		    
		    BaseFolder = theResult
		    LabelFilePath.Text = BaseFolder.ShellPath
		    Redim CollectedItems( -1 )
		    CollectFolderItem theResult
		    LabelInfos.Text = "Found " + Str( CollectedItems.Ubound + 1 ) + " file to process"
		    ButtonProcess.Enabled = ( CollectedItems.Ubound > -1 )
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProcess
	#tag Event
		Sub Action()
		  
		  Dim ErrorFlag As Boolean
		  
		  For Each File As FolderItem in Self.CollectedItems
		    
		    If Not SwitchtoWinEOL( File ) Then
		      
		      ErrorFlag = True
		      
		    End If
		    
		  Next
		  
		  If ErrorFlag Then
		    
		    MsgBox "Some errors occured while processing the file." + EndOfLine + EndOfLine _
		    + "Check the console/error log for further details."
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
