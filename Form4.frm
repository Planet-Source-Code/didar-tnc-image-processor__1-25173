VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "About TNC 2"
   ClientHeight    =   4440
   ClientLeft      =   2340
   ClientTop       =   1500
   ClientWidth     =   5910
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4440
   ScaleWidth      =   5910
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Height          =   4335
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   5655
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   255
         Left            =   4680
         TabIndex        =   8
         Top             =   3840
         Width           =   735
      End
      Begin VB.Image Image2 
         BorderStyle     =   1  'Fixed Single
         Height          =   2235
         Left            =   3480
         Picture         =   "Form4.frx":0000
         Stretch         =   -1  'True
         Top             =   120
         Width           =   2055
      End
      Begin VB.Label Label7 
         Caption         =   "Dedicated To Tahmina Nur Chowdhuri"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1200
         TabIndex        =   7
         Top             =   2760
         Width           =   3615
      End
      Begin VB.Label Label6 
         Caption         =   "Product No:0001-1244HM-77777"
         Height          =   255
         Left            =   1680
         TabIndex        =   6
         Top             =   3840
         Width           =   2415
      End
      Begin VB.Label Label5 
         Caption         =   "CopyRight By General Corporation"
         Height          =   255
         Left            =   1680
         TabIndex        =   5
         Top             =   3600
         Width           =   2655
      End
      Begin VB.Label Label4 
         Caption         =   "A multimedia Production"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1920
         TabIndex        =   4
         Top             =   3360
         Width           =   2295
      End
      Begin VB.Image Image1 
         Height          =   720
         Left            =   360
         Picture         =   "Form4.frx":2EC42
         Top             =   480
         Width           =   720
      End
      Begin VB.Label Label3 
         Caption         =   $"Form4.frx":2FB0C
         Height          =   975
         Left            =   600
         TabIndex        =   3
         Top             =   1440
         Width           =   4575
      End
      Begin VB.Label Label2 
         Caption         =   "Version 2.01"
         Height          =   255
         Left            =   2400
         TabIndex        =   2
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "About TNC2 "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   1920
         TabIndex        =   1
         Top             =   600
         Width           =   2175
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808080&
         BorderWidth     =   2
         X1              =   480
         X2              =   5160
         Y1              =   2520
         Y2              =   2520
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Label7.Visible = False
Image2.Visible = False
End Sub
Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image2.Visible = False
End Sub

Private Sub Label5_DblClick()
Image2.Visible = True
Label7.Visible = True
End Sub
