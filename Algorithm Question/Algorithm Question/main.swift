//
//  main.swift
//  Algorithm Question
//
//  Created by Sevda Abbasi on 18.08.2024.
//

import Foundation

print("Asansör Algoritması")

var mevcutKat = 0

while true {
   print("Lütfen gitmek istediğiniz kat sayısını giriniz (1-10)")
   if let katSayisi = readLine(), let hedefKat = Int(katSayisi){
    if hedefKat >= 0 && hedefKat <= 10 {
        if hedefKat > mevcutKat {
            for kat in mevcutKat...hedefKat {
                print(kat)
            }
        } else if hedefKat < mevcutKat {
            for kat in (hedefKat...mevcutKat).reversed(){
                print(kat)
            }
        }
        mevcutKat = hedefKat
    }else {
        print("Lütfen (1-10) aralığında bir sayı giriniz! ")
    }
        } else {
            print("Geçersiz giriş, lütfen tekrar deneyin.")
        }
    }


