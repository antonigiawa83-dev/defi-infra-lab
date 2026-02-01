# 🏦 DeFi Infrastructure Lab

Project ini adalah simulasi infrastruktur untuk platform Decentralized Finance (DeFi) yang mengutamakan otomatisasi, keamanan, dan skalabilitas.

Dibuat sebagai Proof of Concept (PoC) untuk implementasi **GitOps** modern.

## 🏗 Arsitektur

Project ini menggunakan pendekatan **Infrastructure as Code (IaC)**:

| Komponen | Teknologi | Fungsi |
|----------|-----------|--------|
| **Dapur (Infra)** | Terraform | Menyediakan server AWS secara deklaratif. |
| **Makanan (App)** | Docker | Membungkus aplikasi Nginx agar portable. |
| **Pelayan (CI/CD)** | GitHub Actions | Otomatisasi build & push ke Container Registry. |
| **Gudang** | GHCR.io | Tempat penyimpanan image aplikasi siap saji. |

## 🚀 Cara Kerja (Pipeline)

Setiap kali ada update code (Push to Main):
1.  **Checkout:** GitHub Action mengambil kode terbaru.
2.  **Build:** Docker memproses `src/Dockerfile`.
3.  **Publish:** Image yang sudah jadi di-upload otomatis ke GitHub Packages.

## 🛠 Status Saat Ini
- [x] Infrastructure Code (Terraform) Ready
- [x] Docker Containerization Ready
- [x] CI/CD Pipeline (Automated Build) Success ✅

---
*Project ini dikelola secara transparan di GitHub.*
