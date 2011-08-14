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
      Text            =   "Click on Choose to select a folder to process"
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
   Begin Listbox ListFiles
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   ""
      ColumnWidths    =   ,60
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
      InitialValue    =   "Name	Type"
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
      Text            =   "0 files to process"
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
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events ButtonChoose
	#tag Event
		Sub Action()
		  
		  Dim theProjectFolder As FolderItem = SelectFolder
		  
		  If theProjectFolder Is Nil Then
		    
		    Return
		    
		  Else
		    
		    Self.ListFiles.DeleteAllRows
		    Dim theFiles() As FolderItem = Functionality.CollectFolderItem( theProjectFolder )
		    
		    For Each file As FolderItem In theFiles
		      
		      Self.ListFiles.AddRow file.DisplayName
		      Dim theLastIndex As Integer = Self.ListFiles.LastIndex
		      Self.ListFiles.Cell( theLastIndex, 1 ) = file.FileExtension
		      Self.ListFiles.RowTag( theLastIndex ) = file
		      
		    Next
		    
		    // Updating the window
		    Self.ButtonProcess.Enabled = ( theFiles.Ubound > -1 )
		    Self.LabelFilePath.Text = theProjectFolder.ShellPath
		    Self.LabelInfos.Text = Str( theFiles.Ubound + 1 ) + " file(s) to process"
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonProcess
	#tag Event
		Sub Action()
		  
		  Dim ErrorFlag As Boolean
		  
		  Dim theIndex, theCounter As Integer
		  
		  Do Until theIndex > ListFiles.ListCount - 1
		    
		    Dim theFile As FolderItem = Self.ListFiles.Rowtag( theIndex )
		    
		    If Not SwitchToUnixEOL( theFile ) Then
		      
		      ErrorFlag = True
		      theIndex = theIndex + 1
		      
		    Else
		      
		      ListFiles.RemoveRow theIndex
		      theCounter = theCounter + 1
		      
		    End If
		    
		  loop
		  
		  If ErrorFlag Then
		    
		    MsgBox "Some errors occured while processing the file." + EndOfLine + EndOfLine _
		    + "Check the console/error log for further details."
		    
		  End If
		  
		  Self.LabelInfos.text = Str( theCounter ) + " file(s) processed & " + Str( Self.ListFiles.ListCount ) + " error(s)."
		  
		End Sub
	#tag EndEvent
#tag EndEvents
