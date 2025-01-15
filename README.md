# My Portfolio

Selamat datang di portofolio proyek Data Analyst & Business Intelligence (BI) saya! Di sini Anda akan menemukan contoh proyek yang menampilkan keterampilan saya dalam analisis data, visualisasi, dan pengambilan keputusan berbasis data.

## 📊 Proyek Utama

### 1. Dashboard Complaint Analysis and Monitoring
- **Deskripsi:** Analisis distribusi complaint berdasarkan kategori dan prioritas untuk meningkatkan kepatuhan SLA.
- **Tools:** SQL, Tableau, BigQuery
- **Insight:** Identifikasi complaint dengan missed SLA tertinggi dan optimalisasi waktu resolusi.
- **[Lihat Query SQL](https://github.com/alfan351/my_protofolio/blob/main/data_complaint.sql)**  
- **[Database](https://github.com/alfan351/my_protofolio/blob/main/database.csv)**
- **Dashboard Tableau Screenshot:**  
  ![Dashboard Screenshot](https://github.com/alfan351/my_protofolio/blob/main/Screenshot%202025-01-15%20at%2014.08.28.png)

### 2. Deep Dive into Missed SLA Resolution Time Analsis
- **Deskripsi:** analisa complaint yg tidak sesuai dengan target.
- **Tools:** SQL , Tablaue , BigQuery
- **Insight:** Identifikasi pelanggan dengan risiko churn tinggi untuk tindakan pencegahan .

#### Business Understanding - Problem Identification
Missed sla dalam menangani dan menyelesaikan suatu complaint bisa berpengaruh pada kepuasan pelanggan, retention dan churn rate
Sampai saat ini kita belum mengetahui data-data apa saja yang harus dimonitor untuk bisa melihat faktor utama penyebab missed sla. Perlu diketahui sla untuk menyelesaikan satu complaint di lv 1 adalah 60 menit sedangkan lv 2 adalah 2 hari

Menentukan dan memonitor metrik yang tepat menjadi langkah penting dalam mengurangi Missed SLA dan meningkatkan efisiensi operasional serta kepuasan pelanggan.

#### Business Understanding - Significance
Dengan mengetahui faktor-faktor penyebab Missed SLA, perusahaan dapat secara proaktif memonitor data-data yang relevan dan mengambil tindakan cepat untuk mencegah keterlambatan penanganan. Hal ini memungkinkan Customer Experience (CX) untuk:
- Menjaga Kepuasan Pelanggan: Penanganan yang responsif memastikan pelanggan tetap merasa didengarkan dan dihargai.
- Mengurangi Churn: Pelanggan yang puas cenderung tetap menggunakan layanan perusahaan meskipun sempat mengajukan keluhan.
- Meningkatkan Retensi: Pelayanan yang cepat dan tepat dapat memulihkan kepercayaan pelanggan, mendorong mereka untuk tetap melakukan order setelah menyampaikan complaint.
- Efisiensi Operasional: Analisis ini membantu perusahaan mengalokasikan sumber daya secara lebih tepat, mencegah eskalasi yang tidak perlu, dan mengoptimalkan waktu penyelesaian complaint.
Dengan analisis Missed SLA tidak hanya berperan dalam peningkatan layanan tetapi juga dalam mendukung pertumbuhan bisnis jangka panjang.

#### Business Understanding - Business Question
- data-data apa saja yang harus dimonitor untuk bisa melihat faktor utama penyebab missed sla?
- Bagaimana memprioritaskan faktor yang mempengaruhi Missed SLA agar bisa langsung ditindaklanjuti?

#### Business Understanding - Project Objectives
- Mengidentifikasi Data yang Harus Dimonitor: Menyusun metrik dan variabel kunci yang perlu dipantau secara rutin untuk mengidentifikasi faktor-faktor penyebab Missed SLA.
- Menganalisis Pola Penyebab Missed SLA: Menggali pola atau faktor yang berulang dalam data untuk memahami penyebab utama keterlambatan dalam penyelesaian complaint.
- Memberikan Rekomendasi Tindakan: Menyusun langkah-langkah atau intervensi yang dapat diambil berdasarkan hasil analisis untuk mengurangi Missed SLA dan meningkatkan efisiensi operasional.

#### Business Understanding - Project Scope
Proyek ini akan fokus pada analisis mendalam dan pemantauan faktor penyebab Missed SLA dalam penyelesaian complaint, dengan cakupan waktu  periode dari Januari hingga Desember 2024. Analisis ini bertujuan untuk memberikan pemahaman yang lebih baik mengenai pola-pola yang mempengaruhi keterlambatan penyelesaian complaint, serta untuk mengidentifikasi variabel-variabel kritis yang dapat memprediksi dan mencegah Missed SLA.

#### Project Limitation
Meskipun proyek ini bertujuan untuk menganalisis faktor penyebab Missed SLA dalam penyelesaian komplain terdapat beberapa kekurangan yang perlu diperhatikan seperti
- Faktor Eksternal yang Tidak Terkontrol Lama cepatnya customer merespon
- Tidak realtime nya pengisian complaint karna 2 tools yg berbeda
- Waktu Respons dan Eskalasi yang Tidak capture dengan baik Seperti berapa lama waktu meng eskalasikan dari level 1 ke level 2
- Kualitas data yg kurang baik Bisa menyebabkan kurang akurat pada hasil analisa

#### Data Understanding - Data Exploration 
Tingginya volume complaint di setiap bulanya, complaint yg beragam dan complexity complaint yg tidak bisa diukur sehingga membebani Customer Excellence (CX). dengan terbatas nya manpowers yg hanya 6 orang dengan rata rata complaint di atas 1000 Hal ini mengurangi fokus mereka pada kasus yang kompleks atau mendesak, sehingga memperpanjang Resolution Time (waktu penyelesaian) untuk tiket complaint yang penting
- !*[Total complaint](https://github.com/alfan351/my_protofolio/blob/main/Screenshot%202025-01-15%20at%2016.23.29.png)*


### 3. Complaint Freetext analysis 
- **Deskripsi:** Prediksi churn pelanggan berdasarkan riwayat transaksi dan perilaku pelanggan.
- **Tools:** Python, Jupyter Notebook, Scikit-Learn
- **Insight:** Identifikasi pelanggan dengan risiko churn tinggi untuk tindakan pencegahan.
- **[Lihat Notebook](https://github.com/alfan351/my_protofolio/blob/main/Freetext%20analsyt%20complaint.ipynb)**

---

## 🛠️ Tools & Teknologi
- SQL (PostgreSQL, BigQuery)
- Tableau
- Python (Pandas, Matplotlib, Seaborn, Scikit-Learn)
- Git & GitHub

---

Terima kasih telah melihat portofolio saya! Silakan hubungi saya untuk kolaborasi lebih lanjut.
