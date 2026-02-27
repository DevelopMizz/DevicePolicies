@{
    Name="Disable snap without touching edge of screen"
    PolicyId=0x01
    GUID="ae73a4d0-2dfa-4922-abb3-28587e45cd97"
    Group="OS.UI.WindowSnapping"
    Setting=@{
        Path='HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
        Name="DITest"
        Set=0x00
        Unset=0x001
    }
}