//
//  ResepLink.swift
//  Sehat-in
//
//  Created by Garry on 17/02/22.
//

import SwiftUI

struct LinkResep: Identifiable {
    var id = UUID()
    var judul: String
    var channel: String
    var linkResep: String
    var description: String
    var photo: String
}

var linkReseps = [
    LinkResep(judul: "Omelet Endog", channel: "Arnold Poernomo", linkResep: "https://www.youtube.com/embed/e1xrl5Kct5E", description: "Di video masak kali ini saya akan memasak Omelet Endog! Buatnya mulai dari pake minyak sampe gak pake minyak juga ada! ,tentunya  resep-resepnya gampang, mudah, cepet, sehat! \n\nJangan banyak tanya tonton sampai habis, bagi yang mau mencoba selamat mencoba!.. \n\nLike subs dislike bla bla karepmu \n\nSubscribe Our Channel, Please Click This: https://www.youtube.com/channel/UCr5k1iu1hF_01O1AD1JzcFA \n\nCatch us on SNS : \n\nhttps://www.instagram.com/arnoldpo/ \nOfficial Site: https://starhits.id/ \n\nDon't reupload our content but you can share our video. \nProduction 2019 © Copyrights & Trademark by Star Hits", photo: "omelette"),
    
    LinkResep(judul: "Sayur Sop", channel: "Ardiyanti Ulyana", linkResep: "https://www.youtube.com/embed/2ulX5MZp5sw", description: "Assalamualaikum Semuanya... di video kali ini aku bikin sayur sop yang sederhana banget, tanpa tambahan ayam, ataupun daging. bisa banget jadi makanan sehari-hari saat tanggal tua hihi, selain itu menu ini sehat dan enak.\n__________________________________\n\n#SayurSopSederhana\n#SayurSop\n#SayurSopAnakKos\n\nBahan :\n2 Buah Wortel\n1 Buah Kentang\nKubis secukupnya\n2 buah Buncis\n2 batang Daun Pre/Bawang\nDaun Seledri\n1/2  sdt Lada Bubuk (Kalau suka yang butiran haluskan bersama dengan bumbu halus)\n2 sdt Kaldu bubuk\n1 sdt Gula Pasir\n\nBumbu Halus : (Goreng, haluskan)\n8 butir Bawang Merah\n5 siung Bawang Putih\n1 sdt Garam\n\n__________________________________\n\nCara Pembuatannya simak di video yah :)\n\n__________________________________\n\nTolong bantu support channel aku yah dengan klik tombol LIKE, SUBSCRIBE dan NYALAIN LONCENG nya  juga supaya kalian dapet notifikasi kalau ada VIDEO BARU berikutnya....Biar aku Semakin semangat bikin videonya :)\n\nKalau ada kritik dan saran tulis dikomentar aja ya, InsyaAllah aku balesin. Agar Video berikutnya bisa lebih baik dan Channel ini berkembang dan bermanfaat buat kalian semua.\n\nSelamat Mencoba.....\nTerima Kasih !", photo: "sayur_sop"),
    
    LinkResep(judul: "Salad Buah", channel: "Devina Hermawan", linkResep: "https://www.youtube.com/embed/u7QfzLYeBBY", description: "Makanan satu ini lagi hits banget di layanan aplikasi pemesanan online. Kali ini aku mau bagi resep Salad Buah yang dikombinasikan dengan yoghurt dan mayonnaise. Buah-buahan yang digunakan mudah didapat dan tentunya sehat karena kaya akan vitamin dan mineral. Cocok untuk hidangan penutup keluarga di rumah.\n\nResep Salad Buah\n\nBahan :\n1 cup semangka\n1 cup melon\n1 cup pir\n1 cup stroberi\n1 cup anggur\n1 cup nata de coco\n1 cup fruit cocktail\n1 cup jelly rasa leci\n\nDressing  :\n1 cup mayonnaise\n1,5 cup plain yoghurt (kental)\n5 sdm susu kental manis\n2 sdm air jeruk lemon\nKeju parut sesuai selera\n\nLangkah :\n1. campurkan semua buah-buahan, jelly, dan nata de coco\n2. campurkan mayonaise, yoghurt, dan kental manis\n3. buat garnish dari potongan stroberi dan anggur\n4. susun ke dalam wadah. dimulai dari paling bawah: buah, dressing, keju parut, dilapisi lagi dengan buah, dressing, dan keju parut\n5. garnish di atasnya\n6. sajikan selagi dingin\n\n===================\n\nOfficial Site:\nhttps://www.devinahermawan.com/\n\nInstagram:\nhttps://instagram.com/devinahermawan\n\nBusiness inquiries: contact@devinahermawan.com", photo: "salad_buah")
]
