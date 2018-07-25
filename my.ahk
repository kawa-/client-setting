; 優先度を高くして安定性を高める
; (下にある独自タイムスタンプの挿入の速度などには確実に効果があり早くなる。キャレット操作系に効果があるかはよくわからない)
SendMode Input
Thread, priority, 1

;変換 + n = 時間(17:59など)
;変換 + m = 日付(2018年05月31日木曜日、など。これでも何故か日本語のまま出力されるのでそのままにしておく)
>^n:: 
  Send, %A_Hour%:%A_Min%
return
>^m:: 
  Send, %A_YYYY%年%A_MM%月%A_DD%日%A_DDD%曜日
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
>^-::Send, -----

; タブ間の移動
; ctrl + < → shift + ctrl + tab
; ctrl + > → ctrl + tab

