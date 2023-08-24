# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Doctor.create([
    {
      name: "Dr. Martins",
      specialisation: "Cardiology",
      city: "New York",
      image_url: "https://imgs.search.brave.com/x7KDn5c8BYG4iTpDarGeDg1CgX0fBZQiBmfvtW8WMPk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzcxLzlk/LzczLzcxOWQ3M2Vh/M2Q4NTllYWRhODI2/YjI1ZjcwOGM0YTFj/LmpwZw"
    },
    {
      name: "Dr. Cynthia",
      specialisation: "Dermatology",
      city: "Los Angeles",
      image_url: "https://imgs.search.brave.com/gE9wqwWKYiWML7-3FDxN3KoozlQRCL6_Ey22we6ef2A/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9hcGkvbWVk/aWEvc21hbGwvMjA0/MjUwMzEvc3RvY2st/cGhvdG8tZG9jdG9y.jpeg"
    },
    {
      name: "Dr. Joseck",
      specialisation: "Pediatrics",
      city: "Chicago",
      image_url: "https://imgs.search.brave.com/J-sLIbrjqQWZj-2JAPwVVDH1gpgh3OLiswelAdo38iw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9k/b2N0b3Itc3RhbmRp/bmctd2l0aC1mb2xk/ZXItc3RldGhvc2Nv/cGVfMTI5MS0xNi5q/cGc_c2l6ZT02MjYm/ZXh0PWpwZw"
    },
    {
      name: "Dr. Abdul",
      specialisation: "Orthopedics",
      city: "Houston",
      image_url: "https://imgs.search.brave.com/bVApRIruziIY3JEjEfnpzq4kgkwPfsYRSFX3KmGBtb4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzYwLzA0LzA5/LzM2MF9GXzI2MDA0/MDkwMF9vTzZZVzFz/SFRuS3hieTRHY2pD/dnR5cFVDV2puUVJn/NS5qcGc"
    },
    {
      name: "Dr. Mike",
      specialisation: "Ophthalmology",
      city: "Miami",
      image_url: "https://imgs.search.brave.com/-AHZcom_UDi211oTdTk0v4_5d47jdFL5u4SMrAtGy70/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by95/b3VuZy1kb2N0b3It/c3VwcG9ydGluZy1o/aXMtcGF0aWVudF8x/MDk4LTIyMzcuanBn/P3NpemU9NjI2JmV4/dD1qcGc"
    }
  ])
  