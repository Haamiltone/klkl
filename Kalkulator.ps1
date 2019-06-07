Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
[void] [system.reflection.assembly]::LoadWithPartialName("System.Windows.Forms")  
[void] [Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')  

#Form
#----------------------------------------------------------------------
$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '537,420'
$Form.text                       = "Kalkulator v.04"
$Form.TopMost                    = $false
#----------------------------------------------------------------------
#End Form

#Variables
#----------------------------------------------------------------------
    #Default Values
    #-------------------------------------------------------------------
    [float]$value_poke     = 0.5
    [float]$value_profile  = 0.3
    [float]$value_msg      = 0.12
    [float]$value_training = 5
    [float]$value_mini     = 0.4
    [float]$value_fee      = 0
    #--------------------------------------------------------------------
#----------------------------------------------------------------------
#end of variables



#Labels
#----------------------------------------------------------------------

$Label_Poke                      = New-Object system.Windows.Forms.Label
$Label_Poke.text                 = "Poke"
$Label_Poke.AutoSize             = $true
$Label_Poke.width                = 100
$Label_Poke.height               = 10
$Label_Poke.location             = New-Object System.Drawing.Point(149,72)
$Label_Poke.Font                 = 'Microsoft Sans Serif,10'

$Label_Profile                   = New-Object system.Windows.Forms.Label
$Label_Profile.text              = "Profile"
$Label_Profile.AutoSize          = $true
$Label_Profile.width             = 100
$Label_Profile.height            = 10
$Label_Profile.location          = New-Object System.Drawing.Point(145,111)
$Label_Profile.Font              = 'Microsoft Sans Serif,10'

$Label_msg                       = New-Object system.Windows.Forms.Label
$Label_msg.text                  = "Wiadomosci"
$Label_msg.AutoSize              = $true
$Label_msg.width                 = 100
$Label_msg.height                = 10
$Label_msg.location              = New-Object System.Drawing.Point(129,148)
$Label_msg.Font                  = 'Microsoft Sans Serif,10'

$Label_training                 = New-Object system.Windows.Forms.Label
$Label_training.text            = "Treningi"
$Label_training.AutoSize        = $true
$Label_training.width           = 100
$Label_training.height          = 10
$Label_training.location        = New-Object System.Drawing.Point(141,185)
$Label_training.Font            = 'Microsoft Sans Serif,10'

$Label_Min                       = New-Object system.Windows.Forms.Label
$Label_Min.text                  = "Minima"
$Label_Min.AutoSize              = $true
$Label_Min.width                 = 100
$Label_Min.height                = 10
$Label_Min.location              = New-Object System.Drawing.Point(145,224)
$Label_Min.Font                  = 'Microsoft Sans Serif,10'

#----------------------------------------------------------------------
#End Labels

#Boxes
#----------------------------------------------------------------------

$box_Poke                        = New-Object system.Windows.Forms.TextBox
$box_Poke.multiline              = $false
$box_Poke.width                  = 37
$box_Poke.height                 = 20
$box_Poke.location               = New-Object System.Drawing.Point(223,69)
$box_Poke.Font                   = 'Microsoft Sans Serif,10'
$box_Poke.Text                   = " "

$box_profile                     = New-Object system.Windows.Forms.TextBox
$box_profile.multiline           = $false
$box_profile.width               = 37
$box_profile.height              = 20
$box_profile.location            = New-Object System.Drawing.Point(223,108)
$box_profile.Font                = 'Microsoft Sans Serif,10'
$box_profile.Text                = " "

$box_msg                         = New-Object system.Windows.Forms.TextBox
$box_msg.multiline               = $false
$box_msg.width                   = 37
$box_msg.height                  = 20
$box_msg.location                = New-Object System.Drawing.Point(223,145)
$box_msg.Font                    = 'Microsoft Sans Serif,10'
$box_msg.Text                    = " "

$box_training                    = New-Object system.Windows.Forms.TextBox
$box_training.multiline          = $false
$box_training.width              = 37
$box_training.height             = 20
$box_training.location           = New-Object System.Drawing.Point(223,183)
$box_training.Font               = 'Microsoft Sans Serif,10'
$box_training.Text               = " "

$box_mini                        = New-Object system.Windows.Forms.TextBox
$box_mini.multiline              = $false
$box_mini.width                  = 37
$box_mini.height                 = 20
$box_mini.location               = New-Object System.Drawing.Point(223,223)
$box_mini.Font                   = 'Microsoft Sans Serif,10'
$box_mini.Text                   = " "

#----------------------------------------------------------------------
#End Boxes

#Buttons
#----------------------------------------------------------------------

$Button_oblicz                   = New-Object system.Windows.Forms.Button
$Button_oblicz.text              = "Oblicz"
$Button_oblicz.width             = 100
$Button_oblicz.height            = 30
$Button_oblicz.location          = New-Object System.Drawing.Point(216,327)
$Button_oblicz.Font              = 'Microsoft Sans Serif,10'
$Button_oblicz.add_click({

    #Calculating
    #--------------------------------------------------------------------
    [float]$suma_poke      =[float]$box_poke.text * $value_poke
    [float]$suma_profile   =[float]$box_profile.text * $value_profile
    [float]$suma_msg       =[float]$box_msg.text * $vaule_msg
    [float]$suma_training  =[float]$box_training.text * $value_training
    [float]$suma_mini      =[float]$box_mini.text * $value_mini
    [float]$suma_total     = $suma_poke + $suma_profile + $suma_msg + $suma_training + $suma_mini + $suma_fee
    [float]$suma_total_pln = $suma_total * 4.25
    #--------------------------------------------------------------------

    $wshell = New-Object -ComObject Wscript.Shell
    $wshell.Popup("Zarobilas $suma_total EURO. Po kursie 4.25 to $suma_total_pln PLN")

})

$Button_Poke                     = New-Object system.Windows.Forms.Button
$Button_Poke.text                = "Zmien"
$Button_Poke.width               = 139
$Button_Poke.height              = 30
$Button_Poke.location            = New-Object System.Drawing.Point(270,64)
$Button_Poke.Font                = 'Microsoft Sans Serif,10'

$Button_training                = New-Object system.Windows.Forms.Button
$Button_training.text           = "Zmien"
$Button_training.width          = 139
$Button_training.height         = 30
$Button_training.location       = New-Object System.Drawing.Point(270,180)
$Button_training.Font           = 'Microsoft Sans Serif,10'

$Button_msg                      = New-Object system.Windows.Forms.Button
$Button_msg.text                 = "Zmien"
$Button_msg.width                = 139
$Button_msg.height               = 30
$Button_msg.location             = New-Object System.Drawing.Point(270,140)
$Button_msg.Font                 = 'Microsoft Sans Serif,10'

$Button_Profile                  = New-Object system.Windows.Forms.Button
$Button_Profile.text             = "Zmien"
$Button_Profile.width            = 139
$Button_Profile.height           = 30
$Button_Profile.location         = New-Object System.Drawing.Point(270,104)
$Button_Profile.Font             = 'Microsoft Sans Serif,10'

$Button_mini                     = New-Object system.Windows.Forms.Button
$Button_mini.text                = "Zmien"
$Button_mini.width               = 139
$Button_mini.height              = 30
$Button_mini.location            = New-Object System.Drawing.Point(270,219)
$Button_mini.Font                = 'Microsoft Sans Serif,10'

#----------------------------------------------------------------------
#End Buttons

#check
#----------------------------------------------------------------------

$Check_Fee                       = New-Object system.Windows.Forms.CheckBox
$Check_Fee.text                  = "Coach Fee"
$Check_Fee.AutoSize              = $false
$Check_Fee.width                 = 100
$Check_Fee.height                = 20
$Check_Fee.location              = New-Object System.Drawing.Point(218,281)
$Check_Fee.Font                  = 'Microsoft Sans Serif,10'

#----------------------------------------------------------------------
#end check



#happy ending
#----------------------------------------------------------------------
$Form.controls.AddRange(@($box_Poke,$box_profile,$box_msg,$box_training,$mini,$Check_Fee,$Label_Poke,$Button_oblicz,$Button_Poke,$Button_trainings,$Button_msg,$Button_Profile,$Button_mini,$Label_Profile,$Label_msg,$Label_trainings,$Label_Min))
#Show form  
$Form.Add_shown({$Form.Activate()})  
[void] $Form.ShowDialog()
