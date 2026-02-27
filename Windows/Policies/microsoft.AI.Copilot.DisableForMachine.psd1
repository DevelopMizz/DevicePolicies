@{
    Name="Disable Copilot (Machine)"
    PolicyId=0x02
    GUID="3f93bd80-4c43-4b63-99ff-b53ebfa41b5e"
    Group="Microsoft.AI.Copilot"
    Setting=@{
        Path='HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot'
        Name="TurnOffWindowsCopilot"
        Set=0x00
        Unset=0x001
    }    
}
