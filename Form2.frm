VERSION 5.00
Begin VB.Form Form2 
   ClientHeight    =   1680
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   4770
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   Picture         =   "Form2.frx":0ECA
   ScaleHeight     =   1680
   ScaleWidth      =   4770
   StartUpPosition =   3  'Windows Default
   WindowState     =   1  'Minimized
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   1920
      Top             =   1320
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Load Form1
Form1.Show
Form1.Image1.Stretch = True
Form1.Command1.Caption = "Original"
Unload Me
End Sub
