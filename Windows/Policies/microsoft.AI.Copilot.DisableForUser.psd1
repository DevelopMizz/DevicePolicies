@{
    Name="Disable Copilot (User)"
    PolicyId=0x02
    GUID="bb71a59f-e36c-4730-96d9-906656e39c08"
    Group="Microsoft.AI.Copilot"    
    Setting=@{
        Path='HKCU:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot'
        Name="TurnOffWindowsCopilot"
        Set=0x00
        Unset=0x001
    }    
}
