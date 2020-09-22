VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "                                                          TNC2"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   435
   ClientWidth     =   9480
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6795
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   6735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9465
      Begin VB.CommandButton Command4 
         Caption         =   "Command4"
         Height          =   375
         Left            =   5520
         TabIndex        =   7
         Top             =   960
         Width           =   735
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Command3"
         Height          =   255
         Left            =   5760
         TabIndex        =   6
         Top             =   360
         Width           =   735
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Info"
         Height          =   255
         Left            =   8520
         TabIndex        =   5
         Top             =   240
         Width           =   820
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Original"
         Height          =   255
         Left            =   7560
         TabIndex        =   4
         Top             =   240
         Width           =   820
      End
      Begin VB.DriveListBox Drive1 
         Height          =   315
         Left            =   7560
         TabIndex        =   2
         Top             =   600
         Width           =   1800
      End
      Begin VB.FileListBox File1 
         Height          =   3405
         Left            =   7560
         TabIndex        =   3
         Top             =   3120
         Width           =   1800
      End
      Begin VB.DirListBox Dir1 
         Height          =   2115
         Left            =   7560
         TabIndex        =   1
         Top             =   960
         Width           =   1800
      End
      Begin VB.Image Image1 
         Appearance      =   0  'Flat
         BorderStyle     =   1  'Fixed Single
         Height          =   1575
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1935
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Command1.Caption = "Original" Then
Image1.Stretch = False
Dir1.Visible = True
File1.Visible = True
Drive1.Visible = True
Command1.Caption = "Stretch"
Else
Form1.Refresh
If Image1.Stretch = False Then
Unload Me
Load Form2
Form2.Show
End If
End If
End Sub



Private Sub Command2_Click()
Form4.Show
End Sub


Private Sub Command3_Click()
Image1.Picture = LoadPicture()
Image1.Stretch = True
End Sub

Private Sub Command4_Click()
Image1.Stretch = False
End Sub

Private Sub dir1_change()
ChDir Dir1.Path
File1.Path = Dir1.Path

End Sub
Private Sub drive1_change()
On Error GoTo myerror
ChDrive Drive1.Drive
Dir1.Path = Drive1.Drive
Exit Sub
myerror:
MsgBox "Error"
Exit Sub
End Sub

Private Sub file1_click()
On Error Resume Next
Image1.Picture = LoadPicture(File1.Path & "\" & File1.filename)

For i = Image1.Height To 7500 'height
p = i - 1000
Next i
Image1.Height = p


For j = Image1.Width To 6000  'width
q = j - 1000
Next j
Image1.Width = q





End Sub




Private Sub Image1_Click()
If Image1.Width = 7335 Then
Drive1.Visible = False
File1.Visible = False
Dir1.Visible = False
Image1.Width = 9225
Command1.Visible = False
Command2.Visible = False
Else
If Image1.Width = 9225 Then
Image1.Width = 7335
Drive1.Visible = True
File1.Visible = True
Dir1.Visible = True
Command1.Visible = True
Command2.Visible = True
End If
End If
End Sub

