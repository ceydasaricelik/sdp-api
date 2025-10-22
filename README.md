# 🎯 SDP API — Scale Development Platform (Ruby on Rails 8)

Bu proje, psikolojik ve tıbbi ölçek geliştirme süreçlerini kolaylaştırmak amacıyla geliştirilmiş **API-only** bir uygulamadır.  
Ruby on Rails 8 altyapısıyla oluşturulmuş, veritabanı yönetimi **SQLite3** ile sağlanmıştır.

---

## 🚀 Proje Özeti

- **Framework:** Ruby on Rails 8.0.3
- **Veritabanı:** SQLite3
- **Yapı:** API-only (ön yüz yok)
- **Test Aracı:** Postman
- **CRUD desteği:** Evet (5 modelde tam CRUD)

---

## 🧩 Modeller ve İlişkiler

| Model        | İlişkiler                                                 | Açıklama                             |
| ------------ | --------------------------------------------------------- | ------------------------------------ |
| **User**     | has_many :responses                                       | Kullanıcı bilgilerini tutar          |
| **Scale**    | has_many :questions                                       | Ölçek bilgilerini içerir             |
| **Question** | belongs_to :scale, has_many :options, has_many :responses | Ölçek sorularını tutar               |
| **Option**   | belongs_to :question, has_many :responses                 | Her soru için seçenekleri içerir     |
| **Response** | belongs_to :user, :question, :option                      | Kullanıcının cevaplarını temsil eder |

**UML diyagramı:**  
`SDP_Model.yuml`

**📊 UML Görseli:**
UML diyagramını tarayıcıda açmak için: [SDP_UML.html](./SDP_UML.html)

---

## 📡 Endpoint Listesi (CRUD Test Edildi)

| Model    | HTTP Method               | URL                 | Açıklama                   |
| -------- | ------------------------- | ------------------- | -------------------------- |
| Hello    | GET                       | `/api/v1/hello`     | API bağlantısını test eder |
| Scale    | GET / POST / PUT / DELETE | `/api/v1/scales`    | Ölçek CRUD işlemleri       |
| Question | GET / POST / PUT / DELETE | `/api/v1/questions` | Soru CRUD işlemleri        |
| Option   | GET / POST / PUT / DELETE | `/api/v1/options`   | Seçenek CRUD işlemleri     |
| Response | GET / POST / PUT / DELETE | `/api/v1/responses` | Cevap CRUD işlemleri       |
| User     | GET / POST / PUT / DELETE | `/api/v1/users`     | Kullanıcı CRUD işlemleri   |

---

## 💬 Postman Test Örnekleri

### 🔹 GET (Test)

**GET** → http://localhost:3000/api/v1/hello  
Response:

{ "message": "Hello, SDP API is running! 🚀" }

---

### 🔹 POST (Scale)

POST → http://localhost:3000/api/v1/scales  
Body (raw JSON):

{
"scale": {
"title": "Depresyon Ölçeği",
"description": "Bu ölçek bireylerin depresyon düzeyini ölçer.",
"category": "Psikoloji"
}
}

---

### 🔹 POST (Question)

POST → http://localhost:3000/api/v1/questions  
Body:

{
"question": {
"scale_id": 1,
"content": "Son iki haftada kendini üzgün hissettin mi?",
"order": 1
}
}

---

### 🔹 POST (Option)

POST → http://localhost:3000/api/v1/options  
Body:

{
"option": {
"question_id": 1,
"text": "Evet, sık sık hissediyorum",
"value": 3
}
}

---

🧠 Kurulum Adımları

# 1. Ruby ve Rails versiyonlarını kontrol et

ruby -v
rails -v

# 2. Gerekli bağımlılıkları yükle

bundle install

# 3. Veritabanını oluştur ve migrate et

rails db:create
rails db:migrate

# 4. Sunucuyu başlat

rails s

Tarayıcıda aç:
👉 http://localhost:3000
→ Hello Rails — SDP API is running 🚀

---

🩷 Katkıda Bulunan

👑 Halide Ceyda Sarıçelik  
📅 Tarih: 22.10.2025

“Kendini bulmak, kabullenmek ve sevmek yolunda, kod satırlarında bile ışık saçan bir proje.” 💫
