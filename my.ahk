#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; 優先度を高くして安定性を高める
; (下にある独自タイムスタンプの挿入の速度などには確実に効果があり早くなる。キャレット操作系に効果があるかはよくわからない)
SendMode Input
Thread, priority, 1
Process, Priority,, High

; IMEのON/OFF状態を取得する関数
; https://w.atwiki.jp/eamat/pages/17.html の一部。改変・再配布自由とのことなのでありがたく活用。
IME_GET(WinTitle="A")  {
    ControlGet,hwnd,HWND,,,%WinTitle%
    if    (WinActive(WinTitle))    {
        ptrSize := !A_PtrSize ? 4 : A_PtrSize
        VarSetCapacity(stGTI, cbSize:=4+4+(PtrSize*6)+16, 0)
        NumPut(cbSize, stGTI,  0, "UInt")   ;    DWORD   cbSize;
        hwnd := DllCall("GetGUIThreadInfo", Uint,0, Uint,&stGTI)
                 ? NumGet(stGTI,8+PtrSize,"UInt") : hwnd
    }

    return DllCall("SendMessage"
          , UInt, DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hwnd)
          , UInt, 0x0283  ;Message : WM_IME_CONTROL
          ,  Int, 0x0005  ;wParam  : IMC_GETOPENSTATUS
          ,  Int, 0)      ;lParam  : 0
}

;変換 + n = 時間(17:59など)
;変換 + m = 日付(2018年05月31日木曜日、など)
>^n::
If (!IME_GET())
{
	Send, %A_Hour%:%A_Min%
}
return
>^m::
If (!IME_GET())
{
	Send, %A_YYYY%年%A_MM%月%A_DD%日%A_DDD%曜日
}
return

; 操作系
>^space::Send {BS}
>^+space::Send {Del}
>^q::Send {Home}
>^+q::Send +{Home}
>^w::Send ^{Left}
>^+w::Send ^+{Left}
>^e::Send {Left}
>^+e::Send +{Left}
>^r::Send {Right}
>^+r::Send +{Right}
>^t::Send ^{Right}
>^+t::Send ^+{Right}
>^y::Send {End}
>^+y::Send +{End}
>^u::Send ^{Home}
>^+u::Send ^+{Home}
>^i::Send {Up}
>^+i::Send +{Up}
>^o::Send {Down}
>^+o::Send +{Down}
>^p::Send ^{End}
>^+p::Send ^+{End}

; 数字
>^a::Send {1}
>^s::Send {2}
>^d::Send {3}
>^f::Send {4}
>^g::Send {5}
>^h::Send {6}
>^j::Send {7}
>^k::Send {8}
>^l::Send {9}
>^;::Send {0}

; 「変換」+「-」→「-----」
; IMEがONのときでも「-----」としたいが実現は面倒な様子なのでそのときは動かないようにした
>^-::
If (!IME_GET())
{
	Send, -----
}
return

; タブ間の移動
; ctrl + . → ctrl + tab
; ctrl + , → shift + ctrl + tab
>^.::Send ^{Tab}
>^,::Send ^+{Tab}

; ファイルエクスプローラ上でF10で、ファイルの先頭に"ooo_"をつける(検索用)
F10::
	Send {F2}
	Send {Left}
	SendRaw ooo_
	Send {Enter}
return
