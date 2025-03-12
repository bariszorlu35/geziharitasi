# Gezi Haritası 🌍

## Proje Hakkında
Bu proje, kullanıcıların gezi rotalarını planlamalarına ve paylaşmalarına olanak tanıyan bir uygulamadır. Hem Türkçe hem de İngilizce dil desteği sunar.

## About the Project
This project is an application that allows users to plan and share their travel routes. It supports both Turkish and English languages.

## Özellikler
- Kullanıcı dostu arayüz
- Harita üzerinde rota çizme
- Gezi notları ekleme
- Paylaşılabilir gezi planları

## Features
- User-friendly interface
- Route drawing on the map
- Adding travel notes
- Shareable travel plans

## Kurulum
1. Projeyi klonla:
   ```bash
   git clone https://github.com/kullanici_adin/geziharitası.git
   ```
2. Gerekli bağımlılıkları yükle:
   ```bash
   npm install
   ```
3. Projeyi başlat:
   ```bash
   npm start
   ```

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/kullanici_adin/geziharitası.git
   ```
2. Install the dependencies:
   ```bash
   npm install
   ```
3. Start the project:
   ```bash
   npm start
   ```

## Ekran Görüntüleri
![Ana Sayfa](images/main_page.png)
![Rota Planlama](images/route_planning.png)



## ��🇷 Türkçe

Bu proje, Dokuz Eylül Üniversitesi Bilgisayar Programcılığı bölümü bitirme projesi olarak geliştirilmiştir. Kullanıcıların gezi lokasyonlarını harita üzerinde işaretleyebilecekleri, fotoğraf ekleyebilecekleri ve yorum yapabilecekleri bir web uygulamasıdır.

### Özellikler

- Harita üzerinde konum işaretleme
- Fotoğraf yükleme ve görüntüleme
- Yorum sistemi
- Admin paneli
- Konum onaylama sistemi

### Kurulum

1. Projeyi klonlayın:
```bash
git clone https://github.com/bariszorlu35/geziharitasi.git
```

2. Veritabanını oluşturun:
- MySQL veritabanında `deneme` adında bir veritabanı oluşturun
- Veritabanı bağlantı bilgilerini `config.php` dosyasında güncelleyin

3. Web sunucusunu yapılandırın:
- XAMPP, WAMP veya benzeri bir web sunucusu kullanın
- Proje dosyalarını web sunucusunun kök dizinine kopyalayın

4. Gerekli klasörleri oluşturun:
- `resimler` klasörü
- `galeri` klasörü

### Veritabanı Tabloları

#### konumlar
- id (INT, AUTO_INCREMENT)
- baslik (VARCHAR)
- aciklama (TEXT)
- enlem (FLOAT)
- boylam (FLOAT)
- resim (VARCHAR)
- durum (TINYINT)

#### yorumlar
- id (INT, AUTO_INCREMENT)
- marker_id (INT)
- yorum (TEXT)
- ad (VARCHAR)
- soyad (VARCHAR)
- durum (TINYINT)

#### resimler
- id (INT, AUTO_INCREMENT)
- marker_id (INT)
- resim (VARCHAR)
- durum (TINYINT)

### Kullanım

1. Ana sayfada harita üzerinde bir konum seçin
2. Konum bilgilerini ve fotoğraf ekleyin
3. Admin panelinden konumları onaylayın
4. Kullanıcılar yorum yapabilir ve fotoğraf ekleyebilir

## 🇬🇧 English

This project was developed as a graduation project for the Computer Programming department at Dokuz Eylül University. It is a web application where users can mark travel locations on a map, add photos, and make comments.

### Features

- Location marking on map
- Photo upload and viewing
- Comment system
- Admin panel
- Location approval system

### Installation

1. Clone the project:
```bash
git clone https://github.com/bariszorlu35/geziharitasi.git
```

2. Create the database:
- Create a database named `deneme` in MySQL
- Update database connection information in `config.php`

3. Configure web server:
- Use XAMPP, WAMP, or similar web server
- Copy project files to the web server's root directory

4. Create required folders:
- `resimler` folder
- `galeri` folder

### Database Tables

#### locations
- id (INT, AUTO_INCREMENT)
- baslik (VARCHAR)
- aciklama (TEXT)
- enlem (FLOAT)
- boylam (FLOAT)
- resim (VARCHAR)
- durum (TINYINT)

#### comments
- id (INT, AUTO_INCREMENT)
- marker_id (INT)
- yorum (TEXT)
- ad (VARCHAR)
- soyad (VARCHAR)
- durum (TINYINT)

#### images
- id (INT, AUTO_INCREMENT)
- marker_id (INT)
- resim (VARCHAR)
- durum (TINYINT)

### Usage

1. Select a location on the map from the main page
2. Add location information and photos
3. Approve locations from the admin panel
4. Users can make comments and add photos

## 📝 Lisans / License

Bu proje MIT lisansı altında lisanslanmıştır. / This project is licensed under the MIT License. 