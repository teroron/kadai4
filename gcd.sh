#!/bin/bash


#引数の数チェック
if [ $# -ne 2 ];then
    echo "【エラー】引数を2個指定くだざい。"
    exit 
fi

#引数1の型チエック
if echo "$1" | grep -q "^[0-9]\+$";then
    echo "引数1は:$1"
else
    echo "【エラー】引数1は「0-9」の数字を入力してくだざい。"
    exit 
fi

#引数2の型チェック
if echo "$2" | grep -q "^[0-9]\+$";then
    echo "引数2は:$2"
else
    echo "【エラー】引数2は「0-9」の数字を入力してくだざい。"
    exit 
fi

#パラメーターの値が0の場合、0を返す処理終了
if [ $1 -eq 0 -o $2 -eq 0 ];then
    echo "最大公約数は:0"
    exit 
fi

#変数設定
var1=$1
var2=$2

#最大公約数算出関数
gcd(){
    while [ $var1 -ne $var2  ]
    do
    if [ $var1 -gt $var2  ];then
        var1=$(( var1-var2 ))
    else
        var2=$(( var2-var1 ))
    fi
    done
    echo "最大公約数は :$var1"
}

#関数呼び出す
gcd $1 $2
