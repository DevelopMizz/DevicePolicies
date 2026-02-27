@{
    Name="Disable top screen of stap layouts bar"
    PolicyId=0x00
    GUID="1e6b4468-c645-44f9-9f08-bf191cd0de77"
    Group="OS.UI.WindowSnapping"
    Setting=@{
            Path='HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
            Name="EnableSnapBar"
            Set=0x00
            Unset=0x001
    }
}